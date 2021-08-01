<?php
session_start();
$admin = false;
$user_region = null;

function isAuth(){
    global $dtb, $admin, $user_region;

    if(isset($_COOKIE['access'])){
        $stm = $dtb->prepare('SELECT `type`,`region` FROM `users` WHERE token = ?');
        $stm->bindParam(1, $_COOKIE['access']);
        if($stm->execute()){
            if($stm->rowCount() == 1){
                $row = $stm->fetch(PDO::FETCH_ASSOC);
                if(!$row['type']){
                    $user_region = $row['region'];                    
                } else {
                    $admin = true;
                }
                return true;
            }
        } 
    }
    
    return false;
}
