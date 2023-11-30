<?php
function getAllComments() {
    $conn=connectdb();
    $sql = "SELECT * FROM `comments`";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $kq=$stmt->fetchAll(); // lấy nhiều dòng
    return $kq;
}

function addComment($userId, $productId, $comment) {
    $conn=connectdb();
    $sql = "INSERT INTO comments (`id_user`, `id_product`, `comment`) VALUES ('".$userId."', '".$productId."', '".$comment."')";
    $conn->exec($sql);
}
function deleteComment($id) {
    $conn=connectdb();
    $sql = "DELETE FROM comments WHERE `comments`.`id` = " . $id;
    $conn->exec($sql);
}
?>