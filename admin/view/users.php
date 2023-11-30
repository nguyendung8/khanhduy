
<div class="container">

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

                <div class="row m-3">
                    <div class="row frmtitle">
                        <h1 class="mt-3">DANH SÁCH NGƯỜI DÙNG</h1>
                    </div>
                    <div class="row frmcontent">
                        <div class="row mb10 frmdssanpham">
                            <table>
                                <tr>
                                    <th>ID</th>
                                    <th>TÊN ĐĂNG NHẬP</th>
                                    <th>EMAIL</th>
                                
                                    <th>ACTION</th>
                                </tr>
                                <?php
                                if(isset($_GET['tk']))
                                {
                                    $conn=connectdb();
                                    $ten=$_GET['tk'];
                                    $sql = "SELECT * FROM `user` WHERE `name` LIKE '%$ten%'";
                                    $stmt = $conn->prepare($sql);
                                    $stmt->execute();
                                    $stmt->setFetchMode(PDO::FETCH_ASSOC);
                                    $result = $stmt->fetchAll(); // Lấy 1 dòng
                                    $users=$result;
                                }
                                
        
                                foreach($users as $item) {
                                ?>
                                <tr>
                                    <td><?=$item['id']?></td>
                                    <td><?=$item['name']?></td>
                                    <td><?=$item['email']?></td>
                                    
                                    <td><a href="index.php?act=updateuser&id=<?=$item['id']?>">Sửa</a> | <a href="index.php?act=deleteuser&id=<?=$item['id']?>">Xóa</a></td>
                                </tr>
                                <?php
                                }
                                ?>
                            </table>
                        
                        </div>
                        <div class="row mb10 mt-3">
                            <a href="index.php?act=adduser"><input type="button" class="btn btn-primary" value="Thêm người dùng"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
