<?php
require_once 'dtb/dtb.php';
require_once 'php/auth.php';
if(!isAuth()){
	header("Location: http://localhost/ministery/index");
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

	<section class="school-content">
		<?php
			$stm = $dtb->prepare("SELECT * FROM educational");
			if($stm->execute()){
				if($stm->rowCount()>0){
					$echoedHTML = '';
					while($row = $stm->fetch(PDO::FETCH_ASSOC)){
						$echoedHTML.= "<div class='school-card'>";

						$echoedHTML.= "<h4 class='school-inner-text'> ".$row['name']." </h4>";

						$photos_stm = $dtb->prepare("SELECT * FROM photos_edu WHERE schid = ? ");
						$photos_stm->bindParam(1, $row['id']);
						if($photos_stm->execute()){
							if($photos_stm->rowCount()>0){
								$first = true;
								while($prow = $photos_stm->fetch(PDO::FETCH_ASSOC)){
									if($first){
										$echoedHTML.= "<img class='main-image' id='changing-".$row['id']."' src='/ministery/".$prow['path']."'> ";
										$echoedHTML.= "<div class='images'> ";
										$first=false;
									}
									$echoedHTML.= "<img src='/ministery/".$prow['path']."' onclick='changePhoto(this, ".$row['id'].")'>";
								}
								$echoedHTML.= "</div>";
							}
						}

						$echoedHTML.= "<p class='school-inner-text'>" . $row['region'] . "</p>";
						$echoedHTML.= "<p class='school-inner-text'>" . $row['address'] . "</p>";
						$echoedHTML.= "<p class='school-inner-text'> Год постройки: " . $row['build_complete'] . "</p>";
						$echoedHTML.= "<p class='school-inner-text'> Проектная мощность, мест: " . $row['project_capacity'] . "</p>";
						$echoedHTML.= "<p class='school-inner-text'> Фактическая наполняемость, количество детей: " . $row['factial_capacity'] . "</p>";
						$echoedHTML.= "<p class='school-inner-text'> Обучающихся во 2 смену: " . $row['second_shift'] . "</p>";

						if($row['bybus_count'] == 0){
							$echoedHTML.= "<p> Подвоз автобусом не осуществляется </p>";
						} else {
							$echoedHTML.= "<div class='school-inner-text'>
							<p>Подвоз школьными автобусами </p>
							<p>Кол-во учащихся ".$row['bybus_count']."</p>
							<p>Расстояние (максимальное) (км) ".$row['bybus_km']."</p>
							</div>";
						}

						$echoedHTML.="<div class='repair school-inner-text'> <p>Тип перекрытий: ".$row['level_type']."</p> <p> Требуется ремонт: ".$row['leve_repair']." </p> </div>";
						$echoedHTML.="<div class='repair school-inner-text'> <p>Вид кровли: ".$row['roof_type'].", ".$row['roof_area']." м.кв</p> <p> Требуется ремонт: ".$row['roof_repair']." </p> </div>";
						$echoedHTML.="<div class='repair school-inner-text'> <p> Требуется ремонт отмостки: ".$row['otmost_repair']." </p> </div>";
						$echoedHTML.="<div class='repair school-inner-text'> <p> Требуется ремонт фундамента: ".$row['foundation_repair']." </p> </div>";

						
						$echoedHTML.="
						<div class='repair school-inner-text'>
							<p>Внутренние инженерные сети</p>
							<p> Требуется ремонт сети элекроснабжения: ".$row['electricity_repair']." </p> 
							<p> Требуется ремонт сети теплоснабжения:  ".$row['thermal_repair']." </p> 
							<p> Требуется ремонт сети водоснабжения:   ".$row['water_repair']." </p> 
							<p> Требуется ремонт канализации: 		   ".$row['sewer_repair']." </p> 
						 
						</div>";

						$echoedHTML.='</div>';
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
<script>
	function changePhoto(elem, id){
		document.getElementById('changing-'+id).src = elem.src
		console.log(elem);
	}

</script>
</html>