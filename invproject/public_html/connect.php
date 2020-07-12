<?php

	$conn = mysqli_connect('localhost', 'root', '123456', 'inventory');
    $host = 'localhost';
    $dbname = 'project_inv';
    $username = 'root';
    $password = '123456';


try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    

}
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }

?>