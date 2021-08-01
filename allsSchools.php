<?php
require_once 'dtb/dtb.php';
require_once 'php/auth.php';
if(!isAuth() || !$admin){
	header("Location: /ministery/index");
}

$stm = $dtb->prepare("SELECT educational.name, educational.id, munipal.name as `region` FROM educational LEFT JOIN munipal ON educational.region = munipal.id ORDER BY `region` ASC");
if($stm->execute()){
	echo '<table style="border: 1px solid grey">';
	while($row = $stm->fetch(PDO::FETCH_ASSOC)){
		echo '
		<tr> 
			<td style="border: 1px solid">'.$row['name'].'</td> 
			<td style="border: 1px solid">'.$row['region'] . '</td>
			<td style="border: 1px solid">'.$row['id'] . '</td>
		</tr>';
	}
}