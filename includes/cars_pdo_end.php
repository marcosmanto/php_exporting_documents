<?php
$mysql = 'mysql:host=localhost;dbname=phpexport';
$sqlite = 'sqlite:sqlite/phpexport.db';

try {
	//$db = new PDO($mysql, 'exporter', 'lynda');
	$db = new PDO($sqlite);
	$sql = 'SELECT car_id, make, yearmade, mileage, transmission,
    price, description FROM cars
    INNER JOIN makes USING (make_id)
    WHERE yearmade > 2008
    ORDER BY price';
	$result = $db->query($sql);
	$errorInfo = $db->errorInfo();
	if (isset($errorInfo[2])){
		$error = $errorInfo[2];
	}
} catch (PDOException $e) {
	$error = $e->getMessage();
}
function getRow(PDOStatement $result) {
        //return $result->fetchAll();
	return $result->fetch(PDO::FETCH_ASSOC);
}
function getAll(PDOStatement $result) {
        return $result->fetchAll(PDO::FETCH_ASSOC);
	//return $result->fetch();
}