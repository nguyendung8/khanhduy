<?php
function getProductsStas() {
    $conn=connectdb();
    $sql = "SELECT c.id, c.name, count(p.id) as total
            FROM categories as c
            INNER JOIN products as p ON p.id_category = c.id
            GROUP BY c.id";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $kq=$stmt->fetchAll(); // lấy nhiều dòng
    return $kq;
}

function getRevenueStas() {
    $conn=connectdb();
    $sql = "SELECT o.id, SUM(od.quality) AS total
            FROM `orders` o 
            INNER JOIN `order_detail` od ON od.id_order = o.id	
            GROUP BY o.id;";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $kq=$stmt->fetchAll(); // lấy nhiều dòng
    return $kq;
}
?>