<link rel="stylesheet" href=".././view/css/style4.css">

        <div class="col-10 m-5">
            <div class="row frmtitle">
                <h1 class="mt-3">DANH SÁCH BÌNH LUẬN</h1>
            </div>
            <div class="row frmcontent">
                <div class="row mb-10 frmdssanpham">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>USER ID</th>
                            <th>PRODUCT ID</th>
                            <th>CONTENT</th>
                        </tr>
                        <?php
                        if(isset($_GET['tk']))
                        {
                            $conn=connectdb();
                            $ten=$_GET['tk'];
                            $sql = "SELECT * FROM `comments` WHERE `name` LIKE '%$ten%'";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute();
                            $stmt->setFetchMode(PDO::FETCH_ASSOC);
                            $result = $stmt->fetchAll();
                            $comments=$result;
                        }

                        foreach($comments as $item) {
                        ?>
                        <tr>
                            <td><?=$item['id']?></td>
                            <td><?=$item['id_user']?></td>
                            <td><?=$item['id_product']?></td>
                            <td><?=$item['comment']?></td>
                            <td><a href="index.php?act=deleteComment&id=<?=$item['id']?>">Xóa</a></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                </div>
            </div>
        </div>
        </div>
        </div>
    </div>
</body>
</html>
