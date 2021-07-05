<?php

session_start();

function isAuth(){
    global $dtb;

    if(isset($_COOKIE['access'])){
        return true;
    }
    
    return false;
}
