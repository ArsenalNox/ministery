<?php
require_once 'dtb/dtb.php';
require_once 'php/auth.php';

if(!isAuth()){
	die(header("Location: /ministery/login"));
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Главная страница</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<section class='wrapper' style="display:flex; flex-direction: column;">
		<div class='selection-wrapper'>
			<h2>Выберите категорию</h2>
			<hr>
			<h3 onclick="showCategory(null)" class='category-select'>Показать все школы</h3>	
			<?php
				$stm = $dtb->prepare("SELECT * FROM munipal");
				if($stm->execute()){
					if($stm->rowCount()>0){
						echo '<p class="category-select" style="cursor: auto"> Выберите муниципалитет </p> <select id="slc1">';
						while ($row = $stm->fetch(PDO::FETCH_ASSOC)) {
							$name = $row['rname'];
							echo "<option value='".$row['id']."' >".$row['name']."</option>";
						}
						echo '</select>
							<button onclick="showSchools()" > Показать </button>
						';
					}
				} else {
					echo "Неудалось получить список муниципалитетов";
				}
			?>
			<!-- <p onclick="showCategory(2)" class='category-select'></p> -->

		</div>
	</section>
</body>
<script>
	function showCategory(category, name=null){
		if(category==null){
			window.location.href = '/ministery/schools'
		} else {
			window.location.href = '/ministery/schools?region='+category+'&region_name='+name
		}
	}

	function showSchools(){
		let regionId = document.getElementById('slc1').value
		window.location.href = '/ministery/schools?region='+regionId
	}
</script>
</html>