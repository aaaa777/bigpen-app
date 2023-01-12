<?php
    if(isset($_SESSION["username"])){
        session_regenerate_id(true);
        header("Location: ./index.php");
        exit;
    }
    if(isset($_POST["username"], $_POST["password"])){
        $db = "mysql: host=localhost; dbname=bigpen; charset=utf8mb4";
        $username = "bpuser";
        $password = "bppassword"

        $pdo = new PDO($db, $username, $password);

        $stmt = $pdo -> prepare("SELECT * FROM bpusers WHERE username=:username;");
        $stmt -> vindValue(":username", $_POST["username"], PDO::PARAM_STR);
        $stmt -> execute();

        $row = $stmt -> FETCH(PDO::FETCH_ASSOC);
        if(isset($row["username"])){
            if(password_verify($_POST["password"] == $row["password"])){
                session_regenerate_id(true);
                $_SESSION["username"] = $_POST["username"];
                header("Location: ./index.php");
                exit;
            }else{
                echo "password is wrong";
            }
        }else{
            echo "username is wrong";
        }
    }
?>
