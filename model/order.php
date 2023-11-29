<?php
function addOrder()
{
    $conn = connectdb();
    //add vào bảng order
    $sql = "INSERT INTO orders (`is_paid`, `payment_method`, `user_id`) 
            VALUES (0, 'Cash', '" . $_SESSION['objuser']['user_id'] . "')";
    // use exec() because no results are returned
    $conn->exec($sql);
    $orderId = $conn->lastInsertId();

    if (isset($_SESSION['cart'])) {
        foreach ($_SESSION['cart'] as $id => $item) {
            //add vào bảng orders_detail
            $sql = "INSERT INTO orders_detail (`amount`, `order_id`, `product_id`) 
                    VALUES ('" . $item['price'] . "', '" . $orderId . "', '" . $id . "')";
            $conn->exec($sql);
        }
        // huỷ giỏ hàng
        unset($_SESSION['cart']);
    }
}

function getAllOrders()
{
    $conn = connectdb();
    $sql = "SELECT o.id, o.status, o.payment_method, u.id as id_user, u.name
            FROM orders as o
            INNER JOIN user as u ON o.id_user = u.id";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $kq = $stmt->fetchAll();
    return $kq;
}

function getOneOrder($id)
{
    $conn = connectdb();
    $sql = "SELECT o.id, o.status, o.payment_method, u.id as id_user, u.name
            FROM orders as o
            INNER JOIN user as u ON o.id_user = u.id WHERE o.id=" . $id;
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $result = $stmt->fetch(); // Lấy 1 dòng
    return $result;
}

function getOrderDetail($id)
{
    $conn = connectdb();
    $sql = "SELECT o.id, o.quality, o.creation_date, p.name as product, p.img, u.name FROM order_detail as o JOIN products as p ON o.id_product = p.id INNER JOIN user as u ON o.id_user = u.id WHERE o.id_order=
    " . $id;
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $result = $stmt->fetchAll(); // Lấy 1 dòng
    return $result;
}

function updateOrder($id, $status)
{
    $conn = connectdb();
    $sql = "UPDATE orders SET `status`='" . $status . "' WHERE id=" . $id;
    // Prepare statement
    $stmt = $conn->prepare($sql);
    // execute the query
    $stmt->execute();
}
