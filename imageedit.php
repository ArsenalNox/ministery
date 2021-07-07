<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
<?php
require_once 'dtb/dtb.php';

$categories = array();

$stm = $dtb->prepare("SELECT * FROM photo_categories");

if($stm->execute()){
	while($row = $stm->fetch(PDO::FETCH_ASSOC)){
		$categories[] = $row;
	}
}


if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$ids = array_keys($_POST);
	foreach($ids as $id){

		$stm = $dtb->prepare("UPDATE `photos_edu` SET category = ? WHERE id =?");
		$stm->bindParam(1, $_POST[$id]);
		$stm->bindParam(2, $id);
		if($stm->execute()){
		echo "
			set photo $id to category ".$_POST[$id]." <br>
		";
		} else {
			echo " photo $id fail<br>";
		}
	}

} else if(isset($_GET['id'])){
	$stm = $dtb->prepare("SELECT * FROM photos_edu WHERE schid = ?");	
	$stm->bindParam(1, $_GET['id']);
	if($stm->execute()){
		echo '<form method="POST" action="#"> ';
		while($row = $stm->fetch(PDO::FETCH_ASSOC)){
			echo "
				<hr>
				<p> ".$row['path']." </p>
				<img src=".$row['path']." style='width:400px'>
				<br>
				<select name='".$row['id']."'>
				";
			foreach($categories as $category){
				echo "
				<option value=".$category['id']."> ".$category['name']."</option>
				";
			}
			echo "</select>";
		}
		echo '
		<br>
		<button> Обновить </button>
		</form>
		';
	}
}
?>
	
</body>
</html>
