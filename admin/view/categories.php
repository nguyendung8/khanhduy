
<div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Tìm kiếm</h5>
                        <form action="index.php?act=categories" method="GET">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="tk" placeholder="Nhập từ khóa tìm kiếm">
                                <input type="hidden" class="form-control" name="act" value="categories">
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<div class="row m-3">
            <div class="row frmtitle">
            <h1 class="mt-3">DANH SÁCH LOẠI HÀNG</h1>
            </div>
            <div class="row frmcontent">

                <div class="row mb10 frmdsloai">
                    <table>
                        <tr>
                            <th>MÃ LOẠI</th>
                            <th>TÊN LOẠI</th>
                            <th>ACTION</th>
                        </tr>
                        <?php



                        if(isset($_GET['tk']))
                        {
                            $conn=connectdb();
                            $ten=$_GET['tk'];
                            $sql = "SELECT * FROM `categories` WHERE `name` LIKE '%$ten%'";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute();
                            $stmt->setFetchMode(PDO::FETCH_ASSOC);
                            $result = $stmt->fetchAll(); // Lấy 1 dòng
                            $categories=$result;
                        }
                        foreach($categories as $item) {
                        ?>
                            <tr>
                            <td><?=$item['id']?></td>
                            <td><?=$item['name']?></td>
                            <td><a href="index.php?act=updateCategory&id=<?=$item['id']?>">Sửa</a> | <a href="index.php?act=deleteCategory&id=<?=$item['id']?>">Xóa</a></td>
                        </tr>
                        <?php
                        }
                        ?>

                    </table>
                </div>
                <div class="row mb10 mt-3">
                <a href="index.php?act=addCategory"><input type="button" class="btn btn-primary" value="Thêm Danh Mục"></a>
                </div>
            </div>
        </div>