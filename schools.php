<?php
require_once 'dtb/dtb.php';
require_once 'php/auth.php';
if(!isAuth()){
	header("Location: /ministery/index");
}

$debug = false;
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0 "> -->
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>Просмотр школ</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header>
		<ul>
            <li> <a href='/ministery/index' > Назад </a></li>
			<li> <a href='/ministery/logout'> Выйти </a> </li>
		</ul>
	</header>
<img src='loading-gif-png-5.gif' id='ldg' style="display: none">
<section class="school-content">
<?php

if(isset($_GET['region'])){
    $regionerror=false;
	$stm = $dtb->prepare("SELECT name FROM munipal WHERE id = ? ");
	$stm->bindParam(1, $_GET['region']);
    if($stm->execute()){
        if($stm->rowCount() > 0){
            $row = $stm->fetch(PDO::FETCH_ASSOC);
            $regionName = $row['name'];
        } else {
            $regionName = 'Неправильный код региона';
            $regionerror = true;
        }

	} else {
        $regionName = 'UNDEFINED';
        $regionerror = true;
	}
    
    if(!$regionerror){
        $informMessage = "Показываются школы муниципалитета $regionName";
    } 
    
	$stm = $dtb->prepare("
	SELECT 
		educational.*, 
		munipal.name as 'rname' 
	FROM educational 
	LEFT JOIN munipal ON educational.region = munipal.id WHERE munipal.id = ? ");
	$stm->bindParam(1, $_GET['region']);
    
	$allSchools = false;
} else {
	$informMessage = "Показываются все школы ";
	$allSchools = true;
	$stm = $dtb->prepare("SELECT educational.*, munipal.name as 'rname' FROM educational LEFT JOIN munipal ON educational.region = munipal.id");
}

if(!$regionerror){
    echo "<p class='school-card' style='padding: 1rem; text-align:center'> $informMessage </p>";
} else {
    die( "<p class='school-card' style='padding: 1rem; text-align:center'> Произошла ошибка при поиске по муниципалитету: неправильно указан муниципалитет </p>" );
}

if($stm->execute()){ //Выборка всех школ
	if($stm->rowCount()>0){
		/**
		 * Я решил пойти через одну переменную которая служит хранилищем для всего хтлм кода, чтобы
		 * не злоупотреблять echo 
		 * Сильного много преимущесвт не могу перечислить, но стало удобнее дебажить через эхо
		 * т.к основной элемент выводится только в конце цикла
		 */
		$echoedHTML = '';

		//Загрузка категорий 
		$categories = [];
		$category_select_stm = $dtb->prepare("SELECT * FROM `photo_categories`");
		if($category_select_stm->execute()){
			while($category_row = $category_select_stm->fetch(PDO::FETCH_ASSOC)){
				$tmp['name'] = $category_row['name'];
				$tmp['id'] = $category_row['id'];

				if($tmp['name'] == 'Не подходит') continue;
				$categories[] = $tmp;
			}
		} else {
			if($debug){
				echo "<pre>";
				print_r($category_select_stm->errorInfo());
				echo "</pre>";
			}
		}
		
		if($debug){
			echo "<pre>";
			print_r($categories);
			echo "</pre>";
		}

		while($row = $stm->fetch(PDO::FETCH_ASSOC)){ //Генерация карточек школ

			if($allSchools) { //Если показываются все школы, писать муниципалитет, чтобы не запутаться
				$message = $row['rname'].', ';
			} else {
				$message = '';
            }

            //верхняя плашка 
			$echoedHTML.= "
			<div class='school-card'>
			<h4  class='school-inner-text'> ".$row['name']."$message </h4>
			<p   class='school-inner-text'>  Проектная мощность: ".$row['project_capacity'].", учащихся: ".$row['factial_capacity']." </p> 
			";
		

            if($debug) echo "<br>";

			$test_school_photo_count = $dtb->prepare("SELECT COUNT(id) as 'photo_count' FROM photos_edu WHERE schid = ?");
			$test_school_photo_count->bindParam(1, $row['id']);

			$echoedHTML .="
			<p> Фото до ремонта </p>
			<div class='image-wrapper'> "; //Оболочка для всех плиток с фотографиями 

			if ($test_school_photo_count->execute()){
				while($test_row = $test_school_photo_count->fetch(PDO::FETCH_ASSOC)){
					if ($test_row['photo_count'] == 0){
						$echoedHTML .='<p>Список фотографий пуст</p>';
					}
				}
			}

			foreach ($categories as $category){ //Выбор фотографий школы по каждой категории 
				if ($category['id'] == 16){
					continue;
				}

				$photos_stm = $dtb->prepare("SELECT * FROM photos_edu WHERE schid = ? AND category = ?");
				
				$photos_stm->bindParam(1, $row['id']);
				$photos_stm->bindParam(2, $category['id']);
				if($photos_stm->execute()){ 
					if($photos_stm->rowCount()>0){
					
						if($debug){ echo "Удалось получить фото школы ".$row['name']." категории ".$category['name'] . " в количестве ".$photos_stm->rowCount()."<br>"; }
					
						$first = true;
						while($photo_row = $photos_stm->fetch(PDO::FETCH_ASSOC)){
							if($first){
								$echoedHTML .= "
								<div class='image-holder images' style='background-image: url(".$photo_row['thumb'].")' categoryName='".$category['name']."' category='".$category['id']."' currentImage='0' '>
								";
								$first = false;
							}  
								$echoedHTML .= "<img 
									original='".$photo_row['path']."' 
									src='".$photo_row['thumb']."' 
									loading=lazy
									style='display: none'>";
							
						}	
						
						$echoedHTML.="</div>";
					}
				}					
			}
			$echoedHTML.="</div>";

		}
		echo $echoedHTML;
	} else {
		echo '<p class="error"> Список школ пуст </p>';
	}
} else {
	echo "<p class='error'>Неудалось загрузить список школ</p>";
}
?>

</section>

</body>
<script src='js/schools.js'></script>
</html>
