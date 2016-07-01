<?php
$db = new Mysqlidb ('localhost', 'root', '123456', 'survey_db');
if(!$db) die("Database error");
if ($_GET) {
    $f = "action_".$_GET['action'];
    if (function_exists ($f)) {
        $f();
    }
}

?>