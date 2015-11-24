<html>
    <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    </head>

    <body onload="onLoad()">
        <input type="text" id="search" placeholder="Type to search">
        <table id="table">
           <tr>
              <td>Apple</td>
              <td>Green</td>
           </tr>
           <tr>
              <td>Grapes</td>
              <td>Green</td>
           </tr>
           <tr>
              <td>Orange</td>
              <td>Orange</td>
           </tr>
        </table>
    </body>
    
</html>

<script type="text/javascript">
var $rows = $('#table tr');
$('#search').keyup(function () {

    var val = '^(?=.*\\b' + $.trim($(this).val()).split(/\s+/).join('\\b)(?=.*\\b') + ').*$',
        reg = RegExp(val, 'i'),
        text;

    $rows.show().filter(function () {
        text = $(this).text().replace(/\s+/g, ' ');
        return !reg.test(text);
    }).hide();
});

var _getAllFilesFromFolder = function(dir) {

    var filesystem = require("fs");
    var results = [];

    filesystem.readdirSync(dir).forEach(function(file) {

        file = dir+'/'+file;
        var stat = filesystem.statSync(file);

        if (stat && stat.isDirectory()) {
            results = results.concat(_getAllFilesFromFolder(file))
        } else results.push(file);

    });

    return results;

};

function onLoad(){
    //List directory
    var files = _getAllFilesFromFolder("C:\Users\IceMan\Videos")
    alert(files)
}
</script>

<style>
body {
    padding: 20px;
}
input {
    margin-bottom: 5px;
    padding: 2px 3px;
    width: 209px;
}
td {
    padding: 4px;
    border: 1px #CCC solid;
    width: 100px;
}
</style>

