<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Mã hóa đơn</th>
      <th scope="col">Tên người dùng</th>
      <th scope="col">Mặt hàng</th>
      <th scope="col">Số lượng</th>
      <th scope="col">Ngày đặt hàng</th>
    </tr>
  </thead>
  <tbody>
    <?php
    foreach ($order_detail as $detail) {
    ?>
      <tr>
        <th scope="row">HĐ<?= $detail['id'] ?></th>
        <td><?= $detail['name'] ?></td>
        <td><?= $detail['product'] ?></td>
        <td> <?= $detail['quality']?></td>
        <td>    <?= $detail['creation_date']?>     </td>
      </tr>
    <?php
    }
    ?>
  </tbody>
</table>