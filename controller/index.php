<?php
ob_start();
session_start();
error_reporting(E_ALL);
ini_set('display_errors', '1');

include "../model/connectdb.php";
include "../model/products.php";
include "../model/cart.php";
include "../model/user.php";
include "../model/order.php";
include "../model/category.php";
include "../model/comment.php";
$categoryId = isset($_GET['catId']) ? $_GET['catId'] : 0;
$products = producstList($categoryId);
$categories = categoryList();
include "../view/header.php";
?>
<?php
if (isset($_GET['act'])) {
    switch ($_GET['act']) {
        case 'cart':
            addToCart();
            include "../view/cart.php";
            break;
        case 'comment':
            if (isset($_POST['submit'])) {
                $productId = isset($_POST['product_id']) ? $_POST['product_id'] : 'n/a';
                $comment = isset($_POST['comment']) ? $_POST['comment'] : 'n/a';
                if (isset($_SESSION['objuser']['user_id']) && $productId) {
                    var_dump($comment);
                    addComment($_SESSION['objuser']['user_id'], $productId, $comment);
                    header("Location: index.php?act=chitietsp&id=" . $productId);
                }
            } else {
                header("Location: index.php");
            }
            break;
        case 'del-cart':
            //lấy giá trị
            $id = $_GET['id'];
            deleteCart($id);
            include "../view/cart.php";
            break;
        case 'payment':
            // xoa session
            if (isset($_POST['payment']) && ($_POST['payment'])) {
                // tiến hành đặt hàng
                addOrder();
            }
            include "../view/payment_success.php";
            break;
        case 'contact':
            include "../view/contact.php";
            break;
        case 'feedback':
            include "../view/feedback.php";
            break;
        case 'qna':
            include "../view/qna.php";
            break;
        case 'chitietsp':
            $id = $_GET['id'];
            $product = getOneProduct($id);
            $category = getOneCategory($product['id_category']);
            include "../view/chitietsp.php";
            break;
        case 'signup':
            // Lấy data từ form
            include "../view/signup.php";
            if (isset($_POST['dangKy']) && ($_POST['dangKy'])) {
                $username = $_POST['username'];
                $password = md5( $_POST['password']);
                $result = addUser($username, $password);
                // gọi hàm thêm user
                if ($result) echo 'Chúc mừng bạn đã đăng ký thành công';
                else echo 'Bạn đăng ký không thành công';
            }
            break;
        case 'login':
            login();
            include "../view/login.php";
            break;
        case 'link_login':
            include "../view/login.php";
            break;
        case 'forget_password':
            include "../view/forget_password.php";
            break;
        case 'logout':
            logout();
            break;
        case 'full':
            include '../view/cate.php';
            break;
        
        default:
            include "../view/home.php";
            break;
    }
} else {
    include "../view/home.php";
}

?>
<?php
include "../view/footer.php";
ob_end_flush();

?>