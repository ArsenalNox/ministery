<?php
if(isset($_COOKIE)){
	setcookie('access', null, 1);
	header("Location: /ministery");
}
?>