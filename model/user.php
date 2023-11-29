
<?php
ob_start();
function login()
{
  if (isset($_POST['dangnhap']) && ($_POST['dangnhap'])) {
    $user = $_POST['user'];
    $pass = md5($_POST['pass']);
    //so sánh vói db
    $userInfo = checkUser($user, $pass);
    if ($userInfo) {
      //tạo mảng
      $objuser = array("name" => $userInfo['name'], "role" => $userInfo['is_admin']);
      //lưu session
      $_SESSION['objuser'] = $objuser;
      //chuyển trang
      if ($userInfo['is_admin'] == 1) {
        header("Location: ../admin/index.php");
      } else {
        header("Location: index.php");
      }
    } else {
      echo 'Tên đăng nhập hoặc tài khoản của bạn không chính xác!';
    }
  }
}

function logout()
{
  unset($_SESSION['objuser']);
  header("Location: index.php");
}


function checkUser($user, $pass)
{
  $conn = connectdb();
  $stmt = $conn->prepare("SELECT * FROM user WHERE name='" . $user . "' AND password='" . $pass . "'");
  $stmt->execute();
  $stmt->setFetchMode(PDO::FETCH_ASSOC);
  $result = $stmt->fetch(); // Lấy 1 dòng
  if ($result) return $result;
  else return 0;
}

function addUser($username, $password)
{
  $conn = connectdb();
  $sql = "INSERT INTO user (`name`, `password`, `is_admin`) VALUES ('".$username."', '".$password."', '0')";
  $conn->exec($sql);
  return $conn->lastInsertId();
}

function forgot()
{
  if (isset($_POST['forgot']) && ($_POST['forgot'])) {
    $user = $_POST['username'];
    $pass = $_POST['newCode'];
    //so sánh vói db
    $userInfo = check($user);
    if ($userInfo) {
      //tạo mảng
      $objuser = array("name" => $userInfo['name']);
      //lưu session
      $_SESSION['objuser'] = $objuser;
      //chuyển trang
      if ($userInfo['name'] == $user) {
        $conn = connectdb();
        $sql = "UPDATE `users` SET `password` = $pass WHERE `users`.`users` = $user;
";
        echo "done";
        $conn->exec($sql);
        return $conn->lastInsertId();
      }
    } else {
      echo 'Tên đăng nhập hoặc tài khoản của bạn không chính xác!';
    }
  }
}

function check($user)
{
  $conn = connectdb();
  $stmt = $conn->prepare("SELECT * FROM users WHERE name='" . $user . "'");
  $stmt->execute();
  $stmt->setFetchMode(PDO::FETCH_ASSOC);
  $result = $stmt->fetch(); // Lấy 1 dòng
  if ($result) return $result;
  else return 0;
}

ob_end_flush();
?>