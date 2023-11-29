<form action="" method="post">
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Mã hóa đơn</th>
                <th scope="col">Tên người dùng</th>
                <th scope="col">Trạng thái đơn</th>
                <th scope="col">
                    <input type="submit" name="update" id="update" value="xác nhận">
                </th>
            </tr>
        </thead>
        <tbody>

            <tr>
                <th scope="row">HĐ<?= $order['id'] ?></th>
                <td><?= $order['name'] ?></td>
                <td>
                    <select id="order" name="status">
                            <option value="Đang chờ xác nhận" >Đang chờ xác nhận</option>
                            <option value="Đang vận chuyển đến kho" >Đang vận chuyển đến kho</option>
                            <option value="Đang giao đến bạn" >Đang giao đến bạn</option>
                            <option value="Đã giao" >Đã giao</option>
                    </select>
                </td>
                
            </tr>
            
        </tbody>
    </table>
</form>