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
			<p onclick="showCategory(1)" class='category-select'>Школы</p>	
			<p onclick="showCategory(2)" class='category-select'>Муниципалитеты</p>
		</div>
	</section>
</body>
<script>
	function showCategory(category){
		if(category==1){
			window.location.href = '/ministery/schools'
		} else if (category==2){
			window.location.href = '/ministery/schools'
		}
	}
</script>
</html>