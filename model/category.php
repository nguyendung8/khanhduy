<?php
function getAllCategory() {
    $conn=connectdb();
    $sql = "SELECT * FROM `categories`";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $kq=$stmt->fetchAll(); // lấy nhiều dòng
    return $kq;
}

function getOneCategory($id) {
    $conn=connectdb();
    $sql = "SELECT * FROM `categories` WHERE id = " . $id;
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $result = $stmt->fetch(); // Lấy 1 dòng
    return $result;
}

function addCategory($name, $position) {
    $conn=connectdb();
    $sql = "INSERT INTO categories (`name`, `position`) VALUES ('".$name."', '".$position."')";
    $conn->exec($sql);
}

function updateCategory($id, $name, $position) {
    $conn=connectdb();
    $sql = "UPDATE `categories` SET `name` = '".$name."', `position` = '".$position."' WHERE `categories`.`id` = " . $id;
    $conn->exec($sql);
}

function deleteCategory($id) {
    $conn=connectdb();
    $sql = "DELETE FROM categories WHERE `categories`.`id` = " . $id;
    $conn->exec($sql);
}


?>