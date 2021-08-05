<?php
require_once 'dtb/dtb.php';

$stm = $dtb->prepare("SELECT * FROM munipal");
if($stm->execute()){
	while($row = $stm->fetch(PDO::FETCH_ASSOC)){
		$countStm = $dtb->prepare("SELECT 
			COUNT(educational.id) as `count`
		FROM educational 
		LEFT JOIN munipal ON educational.region = munipal.id 
		WHERE munipal.id = ?");
		$countStm->bindParam(1, $row['id']);
		$name = $row['name'];
        if($countStm->execute()){
            echo "<table>";
			while($row = $countStm->fetch(PDO::FETCH_ASSOC)){
				if($row['count'] == 0){
					continue;
				}
				echo "$name: ".$row['count'].'<br>';
            }
            echo "</table>";
		}
	}
} else {
	print_r($stm->errorInfo());
}

?>
