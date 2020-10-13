window.onload = function() {
    let form = document.forms.form;
    form.onsubmit = function(e) {
        e.preventDefault();
        let param = {
            type: 'form',
            catLink: form.elements.catLink.value
        };
        let xhr = new XMLHttpRequest();
        xhr.open('POST', 'php/ajax.php');
        xhr.send(JSON.stringify(param));

        xhr.onload = function() {
            if (xhr.status != 200) {
                if (xhr.status == 201) {
                    alert('Подождите! Запущен парсинг раздела.');
                    return;
                }
                alert('Ошибка: ' + xhr.status);
                return;
            }
            document.getElementsByClassName('category-name')[0].innerText = JSON.parse(xhr.response);
            document.getElementsByClassName('status')[0].innerText = 'Парсинг запущен';
        };
        xhr.onerror = function() {
            alert(`Произошла ошибка во время отправки: ${xhr.status}`);
        };
    };
    let microflag = 0;
    setInterval(function() {
                        /* Эмулятор cron */                         /**/
/**/        let request = new XMLHttpRequest;                       /**/
/**/        request.open('GET', 'php/crone_6sec.php', true);        /**/
/**/        request.onload = function() {                           /**/
/**/            console.log(request.responseText);                  /**/
/**/        };                                                      /**/
/**/        request.send(null);                                     /**/
                    /* Конец эмулятора cron */
        let param = {
            type: 'status'
        };
        let xhr = new XMLHttpRequest();
        xhr.open('POST', 'php/ajax.php');
        xhr.send(JSON.stringify(param));
        xhr.onload = function() {
            if (xhr.status != 200) {
                console.log('Ошибка: ' + xhr.status);
                return;
            }
            let response = JSON.parse(xhr.response);
            if (response[0]['status_parsing'].value === '1') {
                if (response[0]['status_parsing_category'].value === '1') {
                    document.getElementsByClassName('status-parsing')[0].innerText = 'Ищу товары';
                    document.getElementsByClassName('progress')[0].innerText = '';
                } else if (response[0]['status_parsing_product'].value === '1') {
                    let productQuantity = response[1].length;
                    let productQuantityOK = 0;
                    response[1].forEach((item, index, array) => {
                        if (item === '1') productQuantityOK++;
                    });
                    document.getElementsByClassName('status-parsing')[0].innerText = 'Обрабатываю товары';
                    document.getElementsByClassName('progress')[0].innerHTML = '<p>Обработано <span class="productQuantityOK">' + productQuantityOK + '</span> из <span class="productQuantity">' + productQuantity + '</span></p><progress max="' + productQuantity + '" value="' + productQuantityOK + '">Обработано <span class="productQuantityOK">' + productQuantityOK + '</span> из <span class="productQuantity">' + productQuantity + '</span></progress>';
                    //response[0]['category_name'].value
                    microflag = 1;
                }
            } else {
                if (microflag) {
                    document.getElementsByClassName('progress')[0].innerHTML = '<a class="btn" href="/csv/output.csv">Скачать csv</a>';
                    document.getElementsByClassName('status-parsing')[0].innerText = 'Отдыхать';
                    document.getElementsByClassName('status')[0].innerText = 'Парсинг завершен';
                }

            }
        };
        xhr.onerror = function() {
            console.log(`Произошла ошибка во время отправки: ${xhr.status}`);
        };
    }, 3000)
};