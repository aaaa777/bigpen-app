<?php
    if(isset($_POST["username"])){
        if(isset($_POST["password"] != $_POST["passwordConfirm"])){
            echo "password is wrong";
        }else{
            $db = "mysql: host=localhost; dbname=bigpen; charset=utf8mb4";
            $username = "bpuser";
            $password = "bppassword"

            $pdo = new PDO($db, $username, $password);

            $stmt = $pdo -> prepare('SELECT * FROM bpusers WHERE username=:username;');
            $stmt -> vindValue(":username", $_POST["username"], PDO::PARAM_STR);
            $stmt -> execute();

            $row = $stmt -> rowCount();
            if($row != 0){
                echo "this username is already used"
            }else{
                $pw = password_hash($_POST["password"], PASSWORD_DEFAULT);
                $stmt = $pdo -> prepare("INSERT INTO bpusers (content, updated_at) VALUES (:username, :password);");
                $stmt -> vindValue(":username", $_POST["username"], PDO::PARAM_STR);
                $stmt -> vindValue(":password", $pw, PDO::PARAM_STR);
                $stmt -> execute();

                header("Location: ./index.php");
                exit;
            }

            $row = $stmt -> FETCH(PDO::FETCH_ASSOC);
        }
    }
?>
