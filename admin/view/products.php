<link rel="stylesheet" href=".././view/css/style4.css">

<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Tìm kiếm</h5>
                    <form action="index.php?act=products" method="GET">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="tk" placeholder="Nhập từ khóa tìm kiếm">
                            <input type="hidden" class="form-control" name="act" value="products">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">Tìm</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


        <div class="col-10 m-5">
            <div class="row frmtitle">
                <h1 class="mt-3">DANH SÁCH SẢN PHẨM</h1>
            </div>

            <div class="row frmcontent">
                <div class="row mb-10 frmdssanpham">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>TÊN SẢN PHẨM</th>
                            <th>HÌNH ẢNH</th>
                            <th>GIÁ</th>
                            <th>ACTION</th>
                        </tr>
                        <?php
                        if(isset($_GET['tk']))
                        {
                            $conn=connectdb();
                            $ten=$_GET['tk'];
                            $sql = "SELECT * FROM `products` WHERE `name` LIKE '%$ten%'";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute();
                            $stmt->setFetchMode(PDO::FETCH_ASSOC);
                            $result = $stmt->fetchAll();
                            $products=$result;
                        }

                        foreach($products as $item) {
                        ?>
                        <tr>
                            <td><?=$item['id']?></td>
                            <td><?=$item['name']?></td>
                            <td><img src="../view/images/<?=$item['img']?>" width="200px"></td>
                            <td><?=$item['price']?></td>
                            <td><a href="index.php?act=updateProduct&id=<?=$item['id']?>">Sửa</a> | <a href="index.php?act=deleteProduct&id=<?=$item['id']?>">Xóa</a></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                </div>
                <div class="row mb-10 mt-3">
                    <a href="index.php?act=addProduct" class="btn btn-primary">Thêm sản phẩm</a>
                </div>
            </div>
        </div>
        </div>
        </div>
    </div>
</body>
</html>
