<?php

// Verbinde mit mySQL, mit hilfe eines PHP PDO Opject
$db_host = getenv("DB_HOST");
$db_name = getenv("DB_NAME");
$db_user = getenv("DB_USER");
$db_pass = getenv("DB_PASSWORD");


try {
    $dbConnection = new PDO("mysql:host=$db_host;dbname=$db_name;", $db_user, $db_pass);

    // Setze den Fehlermoduds für Web Devs
    $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
} catch (PDOException $e) {
    echo $e->getMessage();
}


// Query Function------------------------------------------------------------------------

function fetchQuestionIdSequence($topic, $questionNum, $dbConnection){
    // SELECT * FROM TableName ORDER by RAND() LIMIT N;
    $query = "SELECT `id` FROM `questions` WHERE `topic`= '$topic' ORDER BY RAND() LIMIT $questionNum";

    $sqlStatement =$dbConnection->query($query);
    $rows = $sqlStatement->fetchAll(PDO::FETCH_COLUMN, 0); // 'id' ist Spalte (column) 0


    return $rows;
}
function fetchQuestionById($id, $dbConnection) {
    $sqlStatement = $dbConnection->query("SELECT * FROM `questions` WHERE `id` = $id");
    $row = $sqlStatement->fetch(PDO::FETCH_ASSOC);

    // print_r($row);

    return $row;
}
