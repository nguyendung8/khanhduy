<?php
function producstList($categoryId = 0){
    $conn = connectdb();
    if ($categoryId != 0)
        $querySQL="SELECT * FROM products WHERE id_category = " . $categoryId;
    else 
        $querySQL="SELECT * FROM products";

    $stmt = $conn->prepare($querySQL); // chuẩn bị thực thi câu lệnh
    $stmt->execute(); // thực thi câu lệnh Sql
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    //$result = $stmt->fetch(); // Lấy 1 dòng
    $result = $stmt->fetchAll(); // Lấy nhiều dòng
    if(count($result) > 0) return $result;
    else return 0;
  }

  function deleteProduct($id) {
    $conn=connectdb();
    $sql = "DELETE FROM `products` WHERE `products`.`id` = " . $id;
    $conn->exec($sql);
  }

  function addProduct($name, $category_id, $description, $price, $quantity, $image) {
    $conn=connectdb();
    $sql = "INSERT INTO `products` (name, id_category, description, price, quality, img) VALUES('$name', '$category_id', '$description', '$price', '$quantity', '$image')";
    $conn->exec($sql);
  }

  function categoryList(){
    $conn = connectdb();
    $querySQL="SELECT * FROM categories";

    $stmt = $conn->prepare($querySQL); // chuẩn bị thực thi câu lệnh
    $stmt->execute(); // thực thi câu lệnh Sql
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    //$result = $stmt->fetch(); // Lấy 1 dòng
    $result = $stmt->fetchAll(); // Lấy nhiều dòng
    if(count($result) > 0) return $result;
    else return 0;
  }
  function getOneProduct($id) {
    $conn=connectdb();
    $sql = "SELECT * FROM `products` WHERE id = " . $id;
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $result = $stmt->fetch(); // Lấy 1 dòng
    return $result;
}
function updateProduct($id, $category_id, $name, $description, $price , $quantity, $image) {
  $conn=connectdb();
    $sql = "UPDATE products SET `id_category`='".$category_id."', 
    `name` = '".$name."',
    `description` = '".$description."',
    `price` = '".$price."',
    `quality` = '".$quantity."',
    `img` = '".$image."'
     WHERE id=".$id;
    // Prepare statement
    $stmt = $conn->prepare($sql);
    // execute the query
    $stmt->execute();
}
function dinhDang($gia) {
  $gia_dinh_dang = number_format($gia, 0, ',', ',');
  return $gia_dinh_dang;
}
?>