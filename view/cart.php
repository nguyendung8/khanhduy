<div class="container">
<div class="row mb">
    <form action="index.php?act=payment" method="post">
        <div class="row m-3">
            <h1 class="text-primary p-0 mb-3 mt-4">THÔNG TIN NHẬN HÀNG</h1>
            <table class="thongtinnhanhang" border="1">
                <tr>
                    <td width="20%" class="td-lable">Họ tên</td>
                    <td><input type="text" name="hoten"></td>
                </tr>
                <tr>
                    <td class="td-lable">Địa chỉ</td>
                    <td><input type="text" name="diachi"></td>
                </tr>
                <tr>
                    <td class="td-lable">Điện thoại</td>
                    <td><input type="text" name="dienthoai"></td>
                </tr>
                <tr>
                    <td class="td-lable">Email</td>
                    <td><input type="text" name="email"></td>
                </tr>
            </table>
        </div>
        <div class="row mb m-3">
            <h1 class="h2 p-0 text-primary">GIỎ HÀNG</h1>
            <table class="giohang" border="1">
                <tr>
                    <th>ID</th>
                    <th>Hình</th>
                    <th>Tên sản phẩm</th>
                    <th>Đơn giá</th>
                    <th>Số lượng</th>
                    <th>Thành tiền ($)</th>
                    <th>Xoá</th>
                </tr>
                <?php
                $total = 0;
                if (isset($_SESSION['cart'])) {
                    foreach ($_SESSION['cart'] as $id => $item) {
                    $price = $item['price'] * $item['quantity'];
                    $total += $price;
                    ?>
                    <tr>
                        <td><?=$id?></td>
                        <td><img class="img-cart" src="../view/images/<?=$item['img']?>" alt=""></td>
                        <td><?= $item['name']?></td>
                        <td><?= dinhDang($item['price'])?></td>
                        <td><?= $item['quantity']?></td>
                        <td>
                            <div><?= dinhDang($price)?></div>
                        </td>
                        <td><a href="index.php?act=del-cart&id=<?=$id?>">Xoá</a></td>
                    </tr>
                <?php 
                    }
                } 
                ?>
                <tr>
                    <th colspan="5" class="h5">Tổng đơn hàng</th>
                    <th colspan="2">
                        <div><?=dinhDang($total)?></div>
                    </th>
                </tr>
            </table>
        </div>
        <div class="row mb">
            <input type="submit" name="payment" class="dongy btn" value="ĐỒNG Ý ĐẶT HÀNG">
        </div>
        </form>
        </div>
    </div>

   

