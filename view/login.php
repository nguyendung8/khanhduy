
<?php

$error = array();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["user"])) {
        $error['user'] = "Tên đăng nhập không được để trống";
    }
    if (empty($_POST["pass"])) {
        $error['pass'] = "Mật khẩu không được để trống";
    }
    
}
?>

<div class="m-auto my-3 login position-relative">
  <h1 class="text-center fw-bold mt-1">ĐĂNG NHẬP</h1>
  <form action="" method="post">
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label" >Tên Đăng Nhập</label>
      <input type="text" class="form-control <?php if(isset($error['user'])) echo 'is-invalid'; ?>" id="exampleInputEmail1" aria-describedby="emailHelp" name="user" value="<?php if(isset($_POST['user'])) echo htmlspecialchars($_POST['user']); ?>">
      <?php if(isset($error['user'])) echo '<div class="invalid-feedback">'.$error['user'].'</div>'; ?>
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label" >Mật Khẩu</label>
      <input type="password" class="form-control <?php if(isset($error['pass'])) echo 'is-invalid'; ?>" id="exampleInputPassword1" name="pass" value="<?php if(isset($_POST['pass'])) echo htmlspecialchars($_POST['pass']); ?>">
      <?php if(isset($error['pass'])) echo '<div class="invalid-feedback">'.$error['pass'].'</div>'; ?>
    </div>
    <div class="mb-3 form-check">
      <input type="checkbox" class="form-check-input" id="exampleCheck1">
      <label class="form-check-label float-start" for="exampleCheck1">Ghi nhớ mật khẩu</label>
      <a href="?act=forget_password" class="float-end">Quên mật khẩu</a><br>
      <span>Bạn chưa có tài khoản? <a href="index.php?act=signup">Đăng kí</a></span>
    </div>
    <center>
      <input type="submit" class="btn btn-primary mb-5 fw-bold text-uppercase" name="dangnhap" value="đăng nhập" ></input>
    </center>
  </form>
</div>