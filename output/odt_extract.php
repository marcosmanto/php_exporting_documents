<?php

$sourcefile = 'flowers_odtTemplate_base.odt';
$xslt = 'flowers_odt.xslt';

$zip = new ZipArchive();
$zip->open($sourcefile);
$content = $zip->getFromName('content.xml');
if(file_put_contents($xslt, $content)){
    echo 'Main content extracted<br>';
} else {
    echo 'Problem extracting main content';
}

for ($i = 0; $i < $zip->numFiles; $i++) {
    $filename = $zip->getNameIndex($i);
    if(pathinfo($filename, PATHINFO_DIRNAME) == 'media'){
        if($zip->deleteIndex($i)){
            echo 'Image deleted<br>';
        } else {
            echo 'Problem deleting image <br>';
        }
    }
}

$zip->close();
