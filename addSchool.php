<?php
require_once 'dtb/dtb.php';
require_once 'php/auth.php';
if(!isAuth()){
	header("Location: /ministery/index");
}
?>