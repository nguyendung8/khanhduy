<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">
  <title>Shop Thời Trang</title>
  <link rel="stylesheet" href="../view/css/style6.css">
</head>

<body>
  <div class="boxcenter">
    <header>
      <div class="container-fluid">
        <div class="top-header">
          <div class="image-box">
            <a href="index.php">
              <img src="../view/images/logo.png" alt="">
            </a>
          </div>
          <div class="search-wrapper">
            <div class="search-box">
              <form action="index.php">
                <input type="text" name="tk" class="input-search" placeholder="Bạn tìm gì...">
                <i class="fa fa-search icon-search" aria-hidden="true"></i>
              </form>
            </div>
          </div>
          <div class="header-list-right">
            <?php
            if (isset($_SESSION['objuser'])) {
              echo 'xin chào: ' . $_SESSION['objuser']['name'] . "&nbsp&nbsp";
              echo '<a href="index.php?act=logout">Đăng xuất</a>.';
            } else {
              ?>
              <div class="right-list-style">
                <a href="index.php?act=signup">
                  Đăng Ký
                </a>
              </div>
              <div class="right-list-style">
                <a href="index.php?act=login">
                  Đăng Nhập
                </a>
              </div>
              <?php
            }
            ?>
            <div class="cart">
              <a href="index.php?act=cart">
                <div class="btn btn-outline font-weight-bold margin-btn-header">
                  <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                  <span id="countCart">Giỏ Hàng</span>
                </div>
              </a>
            </div>


          </div>
        </div>
        <div class="nav-list" id="navbar">
          <ul>
            <li class="all-item">
              <i class="fa fa-bars" aria-hidden="true"></i>
              <a href="index.php?act=full"><span>Tất cả danh mục</span></a>
            </li>
            <?php foreach ($categories as $item) {
              ?>
              <li class="nav-item">
                <a href="index.php?catId=<?= $item['id'] ?>">
                  <?= $item["name"] ?>
                </a>
              </li>
              <?php
            } ?>

          </ul>
        </div>
      </div>
    </header>

    <script>
      // When the user scrolls the page, execute myFunction
      window.onscroll = function () {
        myFunction()
      };

      // Get the navbar
      var navbar = document.getElementById("navbar");

      // Get the offset position of the navbar
      var sticky = navbar.offsetTop;

      // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
      function myFunction() {
        if (window.pageYOffset >= sticky) {
          navbar.classList.add("sticky")
        } else {
          navbar.classList.remove("sticky");
        }
      }
    </script>