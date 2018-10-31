<?php
//require_once 'src/Foundationphp/Psr4AutoLOader.php';
//
//$loader = new Foundationphp\Psr4Autoloader();
//$loader->register();
//$loader->addNamespace('Foundationphp', 'src/Foundationphp');

require 'vendor/autoload.php';

use Foundationphp\Exporter\Csv;
use Foundationphp\Exporter\Text;

require_once 'includes/cars_pdo_end.php';

if(isset($_POST['download'])){
    try {
        $options['suppress'] = 'car_id, transmission';
        $options['labelcase'] = 'strtoupper';
        $options['local'] = false;
        new Text($result, 'cars_class.txt', $options);
     
//        new Csv($result,'download.csv',
//                ['delimiter' => ';',
//                 'suppress'  => 'car_id']);
    } catch (Exception $e) {
        $error =  $e->getMessage();
    }

}

$result = $db->query($sql);
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Used Cars</title>
<link href="styles/styles.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="wrapper">
<?php
if (isset($error)) {
	echo "<p>$error</p>";
}
?>
    <h1>Used Cars for Sale</h1>
    <?php while ($row = getRow($result)) { ?>
    <h2><?php echo $row['make']; ?></h2>
    <ul>
        <li>Price: $<?php echo number_format($row['price'], 2); ?></li>
        <li>Year: <?php echo $row['yearmade']; ?></li>
        <li>Mileage: <?php echo number_format($row['mileage'], 0); ?></li>
        <li>Transmission: <?php echo $row['transmission']; ?></li>
    </ul>
    <p><?php echo $row['description']; ?></p>
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