<?php
require_once 'includes/flowers_pdo_end.php';
require 'vendor/autoload.php';

use Foundationphp\Exporter\Xml;
use Foundationphp\Exporter\MsWord;

if (isset($_POST['download'])) {
    try {
        $options['stripNsplit'] = 'description';
        $xml = new Xml($result, null, $options);
        $download = new MsWord($xml);
        $dir = __DIR__ . '/';
        $download->setDocTemplate($dir . 'output/flowers_wordTemplate.docx');
        $download->setXsltSource($dir . 'output/flowers_word.xslt');
        $download->setImageSource($dir . 'images');
        $download->create('flowers.docx');
    } catch (Exception $e) {
        $error = $e->getMessage();
    }
}
?>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Flower Arrangements</title>
        <link href="styles/styles.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <div id="wrapper">
            <?php
            if (isset($error)) {
                echo "<p>$error</p>";
            }
            ?>
            <h1>Flower Arrangements</h1>
            <?php while ($row = getRow($result)) { ?>
                <h2><?php echo $row['title']; ?></h2>
                <figure><img src="images/<?php echo $row['image']; ?>" alt="<?php echo $row['alt']; ?>"></figure>
                <p class="price">$<?php echo $row['price']; ?></p>
                <?php echo $row['description']; ?>
                <hr>
            <?php } ?>
            <form method="post">
                <fieldset>
                    <legend>Download Results</legend>
                    <p>
                        <input type="submit" name="download" id="download" value="Download File">
                    </p>
                </fieldset>
            </form>
        </div>
    </body>
</html>