<?php

require_once 'databaseconnect.php';
$c = connect();
$con = $c[0];
$msg = $c[1];

$name = test_input($_POST['name']);
$surname = test_input($_POST['surname']);
$phone = test_input($_POST['phone']);
	
if ($_POST['buttonId'] === 'search') {
	searchPpl($name, $surname, $phone, $con);
}

if ($_POST['buttonId'] === 'insert') {
    insertPpl($name, $surname, $phone, $con);
}

//Data validation
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

//Searching in DB by name/surname/phone
function searchPpl($name, $surname, $phone, $con) {
	try {
		$query = "SELECT name, surname, phone FROM people WHERE ";
		$array1 = [];
		$str = '';
			
		if(!empty($name)) {
			$query .= $str;
			$query .= "name = :name";
			$array1['name'] = $name;
			$str= ' AND ';
		} else {
			$name = '';
		}
		
		if(!empty($surname)) {
			$query .= $str;
			$query .= "surname = :surname";
			$array1['surname'] = $surname;
			$str= ' AND ';
		} else {
			$surname = '';
		}
		
		if(!empty($phone)) {
			$query .= $str;
			$query .= "phone = :phone";
			$array1['phone'] = $phone;
			$str= ' AND ';
		} else {
			$phone = '';
		}
		
		$stmt = $con->prepare($query);
		$stmt->execute($array1);
		
		$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
		
		echo(json_encode($result, JSON_THROW_ON_ERROR));
		
	} catch (Error $e) {
		echo 'Error by search: ' . $e->getMessage();
	} catch (JsonException $e) {
		echo 'JsonException: ' . $e->getMessage();
	}
	return true;
}

// Inserting field data into DB "people"
function insertPpl($name, $surname, $phone, $con)
{
    try {
		if (!empty($_POST["name"])) {
            $name = $_POST['name'];
        } else {
            $name = '';
        }
        if (!empty($_POST["surname"])) {
            $surname = $_POST['surname'];
        } else {
            $surname = '';
        }
        if (!empty($_POST["phone"])) {
            $phone = $_POST['phone'];
        } else {
            $name = '';
        }
		
        $query = "INSERT INTO people (name, surname, phone) VALUES(?, ?, ?)";
        $stmt = $con->prepare($query);
        $stmt->execute([$name, $surname, $phone]);
        echo "Inserted: $name $surname $phone";
    } catch (Exception $e) {
        echo 'Error by insert: ' . $e->getMessage();
    }
}
