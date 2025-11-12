jQuery(function() {
    $('[padi-env]').on('click', function(e) {
         
        if (e.target.hasAttribute('padi-iframe'))
        {

            let padiEnv = e.target.getAttribute('padi-env');
            padiEnv = (padiEnv == 'test' || padiEnv == 'prod')
                ? padiEnv
                : 'test';

            let url = '';

            switch(padiEnv) {
                case 'test':
                    url = 'https://chateaconpadi-test.bancopatagonia.com.ar/?token='
                    break;
                case 'prod':
                    url = 'https://chateaconpadi.bancopatagonia.com.ar/?token='
                    break;
            }

            console.log(window.location.host)

            const padiIframe = e.target.getAttribute('padi-iframe');
            let createTokenUrl = '';

            if (window.location.host == "desarrollo.bancopatagonia.net.ar") {
                createTokenUrl = "/internet/personas/padi-token.php?env=" + padiEnv;
            } else {
                createTokenUrl = "/personas/padi-token.php?env=" + padiEnv;
            }

            let request;
            if (window.XMLHttpRequest) {
                //Firefox, Opera, IE7, and other browsers will use the native object
                request = new XMLHttpRequest();
            } else {
                //IE 5 and 6 will use the ActiveX control
                request = new ActiveXObject("Microsoft.XMLHTTP");
            }

            if (request) {
                request.onreadystatechange = function () {
                    if (request.readyState == 4) {
                        if (request.status == 200) {
                            const search = '"token"';
                            const searchPosition = request.responseText.search(search);				
                            const token = request.responseText.substring(
                                request.responseText.indexOf('"', searchPosition + search.length) + 1, 
                                request.responseText.lastIndexOf('"')
                            );                      
                            url += token;
                            $(padiIframe).attr('src', url);
                        } else {
                            console.log("Error", request.status, request.statusText);
                        }
                    }
                }
                request.open("GET", createTokenUrl, true);
                request.send(null);
            }
        }
    });
});