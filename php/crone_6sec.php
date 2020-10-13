<?php
require_once($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR . 'php' . DIRECTORY_SEPARATOR . 'include.php');

use DiDom\Document;

function strip_tags_content($text, $tags, $invert = FALSE)
{

    preg_match_all('/<(.+?)[\s]*\/?[\s]*>/si', trim($tags), $tags);
    $tags = array_unique($tags[1]);

    if (is_array($tags) and count($tags) > 0) {
        if ($invert == FALSE) {
            return preg_replace('@<(?!(?:' . implode('|', $tags) . ')\b)(\w+)\b.*?>.*?</\1>@si', '', $text);
        } else {
            return preg_replace('@<(' . implode('|', $tags) . ')\b.*?>.*?</\1>@si', '', $text);
        }
    } elseif ($invert == FALSE) {
        return preg_replace('@<(\w+)\b.*?>.*?</\1>@si', '', $text);
    }
    return $text;
}
$status = $db->getInd('name', 'SELECT * FROM ?n', $tableStaus);

if ($status['status_parsing']['value']) {
    if (!$status['status_parsing_category']['value'] && !$status['status_parsing_product']['value']){
        $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => '1'], 'status_parsing_category');
        unlink($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR . 'csv' . DIRECTORY_SEPARATOR . 'output.csv');
    }
        
    if ($status['status_parsing_category']['value']) {
        $document = new Document($status['next_page']['value'], true, 'windows-1251');
        $products = $document->find('.indexGoods__item > a');
        $productsLinks = [];
        foreach ($products as $product)
            $productsLinks[] = $db->parse("(?s)", $bPath . $product->getAttribute('href'));
        $productsLinksStr = implode(",", $productsLinks);
        $db->query("INSERT INTO ?n (`link`) VALUES ?p", $tableProducts, $productsLinksStr);

        $nextPage = $document->find('.paginator__links > *:last-child')[0]->getAttribute('href');
        if ($nextPage) {
            $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => $bPath . $nextPage], 'next_page');
        } else {
            $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => '0'], 'status_parsing_category');
            $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => '1'], 'status_parsing_product');
        }
        exit();
    } elseif ($status['status_parsing_product']['value']) {
        $parseLink = $db->getOne("SELECT link FROM ?n WHERE `scan_flag` LIKE '0'", $tableProducts);
        if ($parseLink) {
            $arrResult = [];
            $document = new Document($parseLink, true, 'windows-1251');

            $arrResult['scan_flag'] = 1;
            $arrResult['category'] = $status['category_name']['value'];

            preg_match('/([^а-яА-я(]{5,}\s?)/', $document->find('.breadcrumbs__itemCurrent')[0]->text(), $match);
            $arrResult['name'] = trim($match[1]);
            $price = $document->find('.js__actualPrice')[0];
            if ($price)
                $arrResult['price'] = str_replace([' ', '₽'], '', $price->text());
            else
                $arrResult['price'] = 0;
            $arrResult['date'] = array_pop(explode(' ', $document->find('.productPage__afterLine .floatRight')[0]->text()));
            $description = $document->find('.descriptionText_cover')[0];
            if ($description)
                $arrResult['description'] = trim(strip_tags(strip_tags_content($description->html(), "<h3>", TRUE), ["ul", "ol", "li", "b", "u", "i", "p", "a", "img"]));
            else
                $arrResult['description'] = 'Нет описания';
            $features = $document->find('.featureList__item');
            foreach ($features as $feature) {
                $featureArr = explode(':', $feature->text());
                $featureArr[1] = str_replace(['    ', '   ', '  '], ' ', $featureArr[1]);
                $featureExp = explode(' ', $featureArr[1]);
                switch ($featureArr[0]) {
                    case 'Высота':
                        $arrResult['height'] = str_replace(',', '.', $featureExp[0]);
                        $arrResult['heightUnit'] = $featureExp[1];
                        break;
                    case 'Ширина':
                        $arrResult['width'] = str_replace(',', '.', $featureExp[0]);
                        $arrResult['widthUnit'] = $featureExp[1];
                        break;
                    case 'Глубина':
                        $arrResult['depth'] = str_replace(',', '.', $featureExp[0]);
                        $arrResult['depthUnit'] = $featureExp[1];
                        break;
                    case 'Вес':
                        $arrResult['weight'] = str_replace(',', '.', $featureExp[0]);
                        $arrResult['weightUnit'] = $featureExp[1];
                        break;
                }
            }
            $db->query('UPDATE ?n SET ?u WHERE link=?s', $tableProducts, $arrResult, $parseLink);
        } else {
            $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => '0'], 'status_parsing_product');
            $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => '0'], 'status_parsing');
            $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => ''], 'category_name');
            $csvResult = $db->getAll("SELECT `link`, `name`, `price`, `date`, `description`, `height`, `heightUnit`, `width`, `widthUnit`, `depth`, `depthUnit`, `weight`, `weightUnit` FROM `products`");
            $buffer = fopen($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR . 'csv' . DIRECTORY_SEPARATOR . '/output.csv', 'w');
            fputs($buffer, chr(0xEF) . chr(0xBB) . chr(0xBF));
            foreach ($csvResult as $val) {
                fputcsv($buffer, $val, ',');
            }
            fclose($buffer);
            $db->query("TRUNCATE TABLE `products`");
            exit();
        }
    }
}
