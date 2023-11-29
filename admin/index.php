<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', '1');

if(isset($_SESSION['objuser']) && ($_SESSION['objuser']['role'] == 1)){
    include "../model/connectdb.php";
    include "../model/user.php";
    include "../model/category.php";
    include "../model/order.php";
    include "../model/statistic.php";
    include "../model/products.php";
    // đầu html
    include "view/menu.php";
    // body
    if(isset($_GET['act'])){
        switch ($_GET['act']) {
            case 'products':
                $products = producstList();
                include "view/products.php";
                break;

            case 'deleteProduct':
                $id = $_GET['id'];
                
                    // gọi hàm delete product
                    deleteProduct($id);
                
                header('location: index.php?act=products');
                break;

            case 'addProduct':
                    // Lấy data từ form
                    if(isset($_POST['themmoi'])&&($_POST['themmoi'])){
                        $name = $_POST['name'];
                        $category_id=$_POST['cate'];
                        $description=$_POST['description'];
                        $price=$_POST['price'];
                        $quantity=$_POST['quanlity'];
                        $image=$_POST['image'];
                        
                        // gọi hàm thêm product
                        addProduct($name, $category_id, $description, $price, $quantity, $image);
                        header('location: index.php?act=products');
                    } else {
                        $categories = getAllCategory();
                        include "view/addproductForm.php";
                    }
                break;
            case 'updateProduct':
                    // Lấy data từ form
                    if(isset($_POST['edit'])&&($_POST['edit'])){
                        $id = $_POST['id'];
                        $name = $_POST['name'];
                        $category_id=$_POST['category_id'];
                        $description=$_POST['description'];
                        $price=$_POST['price'];
                        $quantity=$_POST['quantity'];

                        $target_file = $_POST['oldImage'];
                        //lưu đường dẫn hình ảnh vào database
                            //upload hình ảnh lên host
                            if (isset($_FILES["image"]) && $_FILES["image"]["name"]!="") {
                                $target_dir = "../uploads/";
                                // Hàm basename() dùng để trả về tên tập tin từ một đường dẫn.
                                $target_file = $target_dir . basename($_FILES["image"]["name"]);
                                
                                $uploadOk = 1;
                                $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
                                
                                // Kiểm tra ext của file có thoả png, jpeg, gif
                                if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                                && $imageFileType != "gif" ) {
                                    $uploadOk = 0;
                                }
                            
                                if ($uploadOk == 0) {
                                    //echo "Xin lỗi, tệp của bạn không được tải lên.";
                                    $target_file = "";
                                } else {
                                    move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
                                }
                            }
                        
                        // gọi hàm thêm product
                        updateProduct($id, $category_id, $name, $description, $price, $quantity, $target_file);
                        header('location: index.php?act=products');
                    } else {
                        $id = $_GET['id'];
                        $product = getOneProduct($id);
                        $categories = getAllCategory();
                        include "view/updateproduct.php";
                    }
                break;

            case 'categories':
                $categories = getAllCategory();
                include "view/categories.php";
                break;

            case 'orders':
                // $orders = getAllOrders();
                $orders=getAllOrders();
                    include "view/orders.php";
                break;
            
            case 'detail':
                    $id=$_GET['id'];
                    // $order = getOneOrder($id);
                    $order_detail = getOrderDetail($id);
                    // var_dump($order_detail);
                    include "view/detail.php";
                break;
            case 'updateOrder':
                        $id=$_GET['id'];
                        $order = getOneOrder($id);
                        // $order_detail = getOrderDetail($id);
                        include "view/updateOrder.php";
                    if(isset($_POST['update'])&&($_POST['update'])){
                        $status= $_POST['status'];
                        updateOrder($id, $status);
                        echo $status;
                        header('location: index.php?act=orders');
                    }
            break;
            case 'addCategory':
                // Lấy data từ form
                if(isset($_POST['themmoi'])&&($_POST['themmoi'])){
                    $name = $_POST['name'];
                    $description=$_POST['description'];
                    $position=$_POST['position'];
                    // gọi hàm thêm category
                    addCategory($name, $description, $position);
                    header('location: index.php?act=categories');
                } else {
                    include "view/addCategoryForm.php";
                }
                break;

            case 'updateCategory':
                    if(isset($_POST['capnhat'])&&($_POST['capnhat'])){
                        // Lấy data từ form
                        $id = $_POST['id'];
                        $name = $_POST['name'];
                        $description=$_POST['description'];
                        $position=$_POST['position'];
                        // gọi hàm update category
                        updateCategory($id, $name, $description, $position);
                        header('location: index.php?act=categories');
                    } else {
                        $id = $_GET['id'];
                        $category = getOneCategory($id);
                        include "view/updateCategoryForm.php";
                    }
            break;

            case 'deleteCategory':
                $id = $_GET['id'];
                // gọi hàm delete category
                deleteCategory($id);
                header('location: index.php?act=categories');
                break;
            case 'logout':
                logout();
                break;

            default:
                // $productsStats = getProductsStas();
                // $revenueStats = getRevenueStas();
                // include "view/main.php";
                // include "view/main.php";
                break;
        }
    } else {
        // $productsStats = getProductsStas();
        // $revenueStats = getRevenueStas();
        // include "view/main.php";
        include "view/main.php";
    }
    // cuối html
} else {
    include "view/footer.php";
    header('location: ../index.php');
}
?>