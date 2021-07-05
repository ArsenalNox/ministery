<?php
require_once 'dtb/dtb.php';
require_once 'php/auth.php';
$errors=[];
$error = false;
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	if(isset($_POST['submit'])){
		// Валидация 
		if(!isset($_POST['uid'])){
			$errors['login_absent'] = 'Поле логина отсутвует';
			$error=true;
		}
		if(!isset($_POST['pwd'])){
			$errors['password_absent'] = 'Поле паролей отсутвует';
			$error=true;
		}
		
		if(strlen($_POST['uid']) < 3){
			$errors['login_short'] = 'Логин слишком короткий';
			$error=true;
		}
		
		if(strlen($_POST['pwd']) < 3){
			$errors['password_short'] = 'Пароль слишком короткий';
			$error=true;
		}


		if(!$error){
			$stm = $dtb->prepare("SELECT * FROM users WHERE uid = ? ");
			$stm->bindParam(1, $_POST['uid']);

			if($stm->execute()){

				if($stm->rowCount()>0){

					$row = $stm->fetch(PDO::FETCH_ASSOC);
					if(password_verify($_POST['pwd'], $row['pwd'])){
						echo 'ACCESS GRANTED';
						$accessToken = 'testAccessToken'. uniqid();
						setcookie('access', $accessToken, time()+3600);
						header("Location: /ministery/index");
					} else {
						$errors['userCount'] = 'Не правильный Логин/Пароль';
					}

				} else {
					$errors['userCount'] = 'Не правильный Логин/Пароль';
				}
			} else {
				echo 'database error';
			}
		}
	}
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
	<link rel="stylesheet" href="css/style.css">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Главная страница</title>
</head>
<body>
	<section class='wrapper'>
		<form action="#" method='post' class='login-form'>
			<?php 
			if(isset($errors['login_absent'])){ 
				echo 'Ошибка логина';
			}
			if(isset($errors['login_short'])){
				echo $errors['login_short'];
			}
			?>
			<input type="text"     name='uid' id='uid1' placeholder="Ваш логин" required>

			<?php 
			if(isset($errors['password_short'])){
				echo $errors['password_short'];
			}
			?>
			<input type="password" name="pwd" id="pwd1" placeholder="Пароль"    required>

			<?php
			if(isset($errors['userCount'])){
				echo $errors['userCount'];
			}
			?>
			<input type="submit" name="submit" value='Войти'>
		</form>
	</section>
</body>
</html>