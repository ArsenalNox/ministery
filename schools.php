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
				$categories[] = $tmp;
			}
		} else {
			if($debug){ // -------------------------------- 
				echo "<pre>";
				print_r($category_select_stm->errorInfo());
				echo "</pre>";
			}
		}
		
		if($debug){// --------------------------------
			echo "<pre>";
			print_r($categories);
			echo "</pre>";
		}

		while($row = $stm->fetch(PDO::FETCH_ASSOC)){ //Генерация карточек школ
			$echoedHTML.= "
			<div class='school-card'>
			<h4  class='school-inner-text'> ".$row['name']    ."</h4>
			<p   class='school-inner-text'> ".$row['region']  ."</p>
			<p> Занято мест: ".$row['factial_capacity']." </p> 
			";
		

			if($debug) echo "<br>";
			$echoedHTML .="<div class='image-wrapper'> ";
			foreach ($categories as $category){ //Выбор фотографий школы по каждой категории 
				$photos_stm = $dtb->prepare("SELECT * FROM photos_edu WHERE schid = ? AND category = ?");
				$photos_stm->bindParam(1, $row['id']);
				$photos_stm->bindParam(2, $category['id']);
				if($photos_stm->execute()){ if($photos_stm->rowCount()>0){
				
					if($debug){ echo "Удалось получить фото школы ".$row['name']." категории ".$category['name'] . " в количестве ".$photos_stm->rowCount()."<br>"; }
				
					$first = true;
					while($photo_row = $photos_stm->fetch(PDO::FETCH_ASSOC)){
						if($first){
							$echoedHTML .= "
							<div class='image-holder images' style='background-image: url(".$photo_row['path'].")' categoryName='".$category['name']."' category='".$category['id']."' currentImage='0' '>
							";
							$first = false;
						}  
							$echoedHTML .= "<img src='".$photo_row['path']."' style='display: none'>";
						
					}	
					$echoedHTML.="</div>";
				}}					
			}
			$echoedHTML.="</div>";

		


			$echoedHTML.= "
			<div class='school-content-wrapper'>
			<p   class='school-inner-text'> ".$row['address'] ."</p>
			<p   class='school-inner-text'> Год постройки: " . $row['build_complete'] . "</p>
			<p   class='school-inner-text'> Проектная мощность, мест: " . $row['project_capacity'] . "</p>
			<p   class='school-inner-text'> Фактическая наполняемость, количество детей: " . $row['factial_capacity'] . "</p>
			<p   class='school-inner-text'> Обучающихся во 2 смену: " . $row['second_shift'] . "</p>
			";

			if($row['bybus_count'] == 0){
				$echoedHTML.= "<p class='school-inner-text'> Подвоз автобусом не осуществляется </p>";
			} else {
				$echoedHTML.= "<div class='school-inner-text'>
				<p>Подвоз школьными автобусами </p>
				<p>Кол-во учащихся ".$row['bybus_count']."</p>
				<p>Расстояние (максимальное) (км) ".$row['bybus_km']."</p>
				</div>";
			}

			$echoedHTML.="
			<div class='repair school-inner-text'> 
				<p> Тип перекрытий: ".$row['level_type']."</p> 
				<p> Требуется ремонт: ".$row['leve_repair']." </p> 
			</div>";
			$echoedHTML.="<div class='repair school-inner-text'> <p> Вид кровли: ".$row['roof_type'].", ".$row['roof_area']." м.кв</p> <p> Требуется ремонт: ".$row['roof_repair']." </p> </div>";
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

			$echoedHTML.='</div> </div>';


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
	var detectingDoubleClick = false;

	var detectedLongTouch = false;
	var detectingLongTouch = false;

	var longTouchTimeout

	var isViewing = false;

	var clickEventListener

	var processingTouch = false;

	var tmpTarget 

	function changePhoto(elem, id){
		document.getElementById('changing-'+id).src = elem.src
		console.log(elem);
	}

	function createImageViewer(imageCollection){
		let displayedChild = imageCollection.getAttribute('currentImage');
		if(imageCollection.children.length != 1){
			if(displayedChild-1 < 0){
				displayedChild = imageCollection.children.length - 1
			} else {
				displayedChild -= 1
			}
		} else {
			displayedChild = 0
		}
		console.log('Created with '+displayedChild);

		isViewing = true
		let viewerWrapper = document.createElement('div')
		viewerWrapper.className = 'viewer-wrapper'
		viewerWrapper.id = 'imgv'

		let categoryHeader = document.createElement('h2')
		categoryHeader.className = 'viewer-category'
		categoryHeader.innerText = imageCollection.getAttribute('categoryname')
		viewerWrapper.append(categoryHeader)

		let imageWrapper = document.createElement('div')
		imageWrapper.className = 'viewer-image-wrapper'

		let viewedImage = document.createElement('img')
		viewedImage.className = 'viewer-image'
		viewedImage.src = imageCollection.children[displayedChild].src
		imageWrapper.append(viewedImage)
		viewerWrapper.append(imageWrapper)

		document.body.append(viewerWrapper)
		console.log('Created');
	}

	function processClick(target){

		if(target.classList.contains('viewer-wrapper') || target.classList.contains('viewer-image-wrapper')){
			document.getElementById('imgv').remove()
			isViewing = false
			return
		}


		if(target.classList.contains('image-holder')){ //Обработчик на листание картинок 
			if(!detectingDoubleClick){

				if(detectingLongTouch){
					console.log('Long touch');

					console.log('Creating view with image number '+target.getAttribute('currentImage'));
					createImageViewer(target)

					clearTimeout(longTouchTimeout)
					detectingLongTouch = false;

					return;
				}

				clearTimeout(longTouchTimeout)
				detectingLongTouch = false;

				setTimeout(() => {
					detectingDoubleClick = false;
				}, 250)
				detectingDoubleClick = true;

				let childAmount = target.children.length
				let currentId = parseFloat(target.getAttribute('currentimage'))
				if( currentId+1 > childAmount-1){
					target.setAttribute('currentimage', 0);
					target.style.backgroundImage = "url("+target.children[0].src+")"
				} else {
					target.setAttribute('currentimage', currentId+1)
					target.style.backgroundImage = "url("+target.children[currentId+1].src+")"
				}

			} else { //Если двойной клик 
				console.log('Creating view with image number '+target.getAttribute('currentImage'));
				createImageViewer(target)
			}
		}

		

	}



	clickEventListener = document.addEventListener('click', (e) => {
		let target = e.target
		console.log(detectingLongTouch);
		processClick(target)
	})

	document.addEventListener('touchstart',(e) => { 
		tmpTarget = e.target
		clearTimeout(longTouchTimeout)
		longTouchTimeout = setTimeout(()=>{
			detectingLongTouch = true
		},800)

		setTimeout(()=>{
			detectingLongTouch = false
		}, 2000)
	})

</script>
</html>