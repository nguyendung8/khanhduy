<form action="" method="get">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Mã hóa đơn</th>
      <th scope="col">Tên người dùng</th>
      <th scope="col">Trạng thái đơn</th>
      <th scope="col">Chi tiết đơn</th>
      <th scope="col">Thay đổi</th>
    </tr>
  </thead>
  <tbody>
    <?php
    foreach ($orders as $order) {
      $i = 01;
    ?>
      <tr>
        <th scope="row">HĐ<?= $i ?></th>
        <td><?= $order['name'] ?></td>
        <td><?= $order['status'] ?></td>
        <td> 
          <a href="index.php?act=detail&id=<?=$order['id']?>">Xem chi tiết</a>
        </td>
        <td> 
          <a href="index.php?act=updateOrder&id=<?=$order['id']?>">Thay đổi</a>
        </td>
        <input type="hidden" value="<?=$order['id']?>">
      </tr>
    <?php
      $i++;
    }
    ?>
  </tbody>
</table>
</form>