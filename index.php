<?
require_once($_SERVER['DOCUMENT_ROOT'].DIRECTORY_SEPARATOR.'php'.DIRECTORY_SEPARATOR.'include.php');
$status = $db->getInd('name', 'SELECT * FROM ?n', $tableStaus);
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>onlinetrade.ru parser</title>
    <link href="node_modules/normalize.css/normalize.css" madia="screen" rel="stylesheet" type="text/css">
    <link href="css/style.css" madia="screen" rel="stylesheet" type="text/css">
</head>

<body>
    <?//print_r($status);?>
    <div class="container">
        <div class="wrap">
            <h1>Парсер onlinetrade.ru</h1>
            <p>Нужная ссылка: https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/</p>
            <form action="" id="form">
                <label for="catLink">Ссылка на раздел каталога</label>
                <input type="text" id="catLink" name="catLink">
                <button type="submit">Сканировать</button>
            </form>
            <p>Категория: <span class="category-name"><?= $status['category_name']['value'] ?></span></p>
            <p>Статус: <span class="status"><?= $status['status_parsing']['value'] ? 'Парсинг запущен' : 'Готов к работе' ?></span></p>
            <p>Задача: <span class="status-parsing">
            <?if ($status['status_parsing_category']['value']):?>
            Ищу товары
            <?elseif ($status['status_parsing_product']['value']):?>
            Обрабатываю товары
            <?endif;?>
            </span></p>
            <div class="progress"><?=file_exists('csv/output.csv')?'<a class="btn" href="/csv/output.csv">Скачать csv</a>':''?></div>
            <p>На виртуальном хостинге не получилось натстроить расписание выполнение скрипта.(костыль через AJAX (скорость увеличил до 20 запросов в минуту)). Так же есть пару недоработок, в частности извлечение названий с русскими буквами, например Атлант или Dunavox (русская "х"), а так же разбор значение параметров формата "55-56 см"</p>
        </div>
    </div>
    <script src="js/scripts.js"></script>
</body>
</html>