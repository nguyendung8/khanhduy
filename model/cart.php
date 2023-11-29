<?php
function addToCart() {
    if(isset($_POST['dathang'])&&($_POST['dathang'])){
        //lấy giá trị
        $img=$_POST['img'];
        $tensp=$_POST['tensp'];
        $gia=$_POST['gia'];
        $id=$_POST['id'];
        $soLuong=$_POST['soluong'];

        //add vào giỏ hàng
        if(!isset($_SESSION['cart'])) $_SESSION['cart']=array();

        if (isset($_SESSION['cart'][$id])) {
          $_SESSION['cart'][$id]['quantity'] += $soLuong;
        } else {
          $_SESSION['cart'][$id] = array("img" => $img, "name" => $tensp, "quantity" => $soLuong, "price" => $gia);
        }
    }
}

function deleteCart($id) {
  //lấy giá trị
  $id=$_GET['id'];
  
  //xoá 1 sản phẩm trong giỏ hàng
  if (isset($_SESSION['cart'][$id])) {
    unset($_SESSION['cart'][$id]);
  }

  header('location: index.php?act=cart');
}
?>