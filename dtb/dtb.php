<?php

try{
	$dtb = new PDO("mysql:host=localhost;dbname=min", 'root','root');
} catch (PDOException $e) {
	die($e->getMessage());
}

?>
