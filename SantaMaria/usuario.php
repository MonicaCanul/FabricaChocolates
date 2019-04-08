<?php
session_start();
$user=$_POST['usuario'];
$pass=$_POST['password'];

if($user=="admin" && $pass=="123456"){
             header('Location: inicio.php'); 
		}else{
            // header('Location: login.php'); 
            echo '<script>location.href="login.php"</script>';

	}
?>