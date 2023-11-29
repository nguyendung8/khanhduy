<?php
$error = array();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["username"])) {
        $error['username'] = "Tên đăng nhập không được để trống";
    }
    if (empty($_POST["password"])) {
        $error['password'] = "Mật khẩu không được để trống";
    }
    if (empty($_POST["confirm_password"])) {
      $error['confirm_password'] = "Vui lòng nhập nhập lại mật khẩu";
    }else{
      if ($_POST["password"] != $_POST["confirm_password"]) {
        $error['confirm_password'] = "Mật khẩu xác nhận không khớp";
      }
    }
    
}
?>
<div class="m-auto my-3 login position-relative">
  <h1 class="text-center fw-bold mt-1">ĐĂNG KÍ</h1>
  <form action="" method="post">
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label">Tên Đăng Nhập</label>
      <input type="text" name="username" id="username" class="form-control <?php if(isset($error['username'])) echo 'is-invalid'; ?>" id="exampleInputEmail1" aria-describedby="emailHelp" value="<?php if(isset($_POST['username'])) echo htmlspecialchars($_POST['username']); ?>">
      <?php if(isset($error['username'])) echo '<div class="invalid-feedback">'.$error['username'].'</div>'; ?>
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label">Mật Khẩu</label>
      <input type="password" name="password" id="password" class="form-control <?php if(isset($error['password'])) echo 'is-invalid'; ?>" id="exampleInputPassword1" value="<?php if(isset($_POST['password'])) echo htmlspecialchars($_POST['password']); ?>">
      <?php if(isset($error['password'])) echo '<div class="invalid-feedback">'.$error['password'].'</div>'; ?>
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label">Nhập lại mật khẩu</label>
      <input type="password" name="confirm_password" class="form-control <?php if(isset($error['confirm_password'])) echo 'is-invalid'; ?>" id="exampleInputPassword1" value="<?php if(isset($_POST['confirm_password'])) echo htmlspecialchars($_POST['confirm_password']); ?>">
      <?php if(isset($error['confirm_password'])) echo '<div class="invalid-feedback">'.$error['confirm_password'].'</div>'; ?>
    </div>
    <div class="mb-3 form-check">
      <span>Bạn đã có tài khoản? <a href="?act=link_login">Đăng Nhập</a></span>
    </div>
    <center>
    <input type="submit" class="btn btn-primary mb-5 fw-bold text-uppercase" name="dangKy" value="ĐĂNG KÝ" ></input>
    </center>
  </form>
</div>
