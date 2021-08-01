<?php
require_once 'dtb/dtb.php';
require_once 'php/auth.php';
if(!isAuth() || !$admin){
	header("Location: /ministery/index");
}
?>
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
if($stm->execute()){ //Подготовка категорий фото
	while($row = $stm->fetch(PDO::FETCH_ASSOC)){
		$categories[] = $row;
	}
}


if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$ids = array_keys($_POST); //Приходящие айди самой фотографии в бд
	$categories = array();
	foreach($ids as $id){ 
		if(strpos($id, 'isdefect') !== false){ //Если это тэг дефекта, пропустить 
			if(!in_array(9, $categories)){ //Не забыть проверить наличие категории дефектов в коллекции, тэги считаются за фото дефекта
				array_push($categories,9);
			}
			continue;
		}

		if(!(in_array($_POST[$id], $categories))){ //Проверка кол-ва собранных категорий
			array_push($categories, $_POST[$id]);
		}
		 
		if(isset($_POST[$id.'_isdefect'])){ //В зависимости от присутсвия тэга
			$stm = $dtb->prepare("UPDATE `photos_edu` SET category = ?, isDefect=1 WHERE id =?");
		} else {
			$stm = $dtb->prepare("UPDATE `photos_edu` SET category = ? WHERE id =?");
		}

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

	if(count($categories) == 9 ){ //Результат по категориям
		echo "All categories present";
	} else if(count($categories) == 10){
		echo "All categories present with unneeded photos";
	} else {
		echo "Category criteria not met :";
		echo count($categories);
	}

} else if(isset($_GET['id'])){
	//Получение всех фотографий данной школы 
	$stm = $dtb->prepare(
	"SELECT 
		photos_edu.*, 
		photo_categories.name as `c_name`
	FROM photos_edu  
		LEFT JOIN photo_categories ON photos_edu.category = photo_categories.id
	WHERE schid = ?
	");	
	
	$stm->bindParam(1, $_GET['id']);
	if($stm->execute()){ 
		//Составление формы 
		echo '
		<p> Кол-во фотографий: '.$stm->rowCount().' </p>
		<form method="POST" action="#"> 
		';
		while($row = $stm->fetch(PDO::FETCH_ASSOC)){
			echo "
				<hr>
				<p> ".$row['path']." </p>
				<img src=".$row['path']." style='width:400px'>
				<br>
				<label for='isdefect'> Является дефектом </label>
				<input type='checkbox' name='".$row['id']."_isdefect' value='1'><br>
				<select name='".$row['id']."'>
				";
			$first = true;
			foreach($categories as $category){
				if($first){
					echo "
						<option value='".$row['category']."'>".$row['c_name']."</option>
					";
					$first = false;
				}
				if($category['id'] == $row['category']) continue;
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
