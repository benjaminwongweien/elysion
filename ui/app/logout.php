<html>
    <head>
    <script>
        sessionStorage.clear();

        // console.log(document.cookie);
        
            var cookies = document.cookie.split(";");

            // loop through all the cookie, delete the cookie one by one
            for (var i = 0; i < cookies.length; i++) {
                    var cookie = cookies[i];
                    var eqPos = cookie.indexOf("=");
                    var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
                    document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
                }
        window.location.replace("./index.php");
    </script>
    <body>

           

    </body>