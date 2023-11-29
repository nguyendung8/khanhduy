<?php
if (isset($_GET['tk'])) {
    $conn = connectdb();
    $ten = $_GET['tk'];
    $sql = "SELECT * FROM `products` WHERE `name` LIKE '%$ten%'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $result = $stmt->fetchAll();
    $products = $result;
}
?>
<div class="row mb ">
    <div class="boxtrai mr">
        <div class="row">
            <div class="banner">
                <img src="../view/images/background-2.jpg" alt="">
            </div>
        </div>
        <section class="all-product">
            <div class="row">
                <h1>SẢN PHẨM MỚI</h1>
                <?php
                if ($products) {
                    foreach ($products as $item) {
                        if ($item['status'] == 1) {
                            ?>
                            <div class="col-3">
                                <form action="index.php?act=cart" method="post">
                                    <div class="product-item ">
                                        <div class="card">
                                            <img src="../view/images/<?= $item['img'] ?>" class="card-img-top" alt="">
                                            <div class="card-body">
                                                <h5 class="card-title name-product">
                                                    <?= $item['name'] ?>
                                                </h5>
                                                <p class="card-text des-product">
                                                    <?= $item['description'] ?>
                                                </p>
                                            </div>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">
                                                    <span>
                                                        <del>
                                                            <?= dinhDang($item['old_price']) ?>
                                                        </del>

                                                    </span>
                                                    <span class="text-danger new">
                                                        <?= dinhDang($item['price']) ?>
                                                    </span>
                                                </li>
                                                <li class="list-group-item">Trả Góp 0%</li>
                                            </ul>
                                        </div>
                                        <input type="number" name="soluong" min="1" max="10" value="1"
                                            style="font-size:20px; width:45px;">
                                        <input type="hidden" name="img" value="<?= $item['img'] ?>">
                                        <input type="hidden" name="tensp" value="<?= $item['name'] ?>">
                                        <input type="hidden" name="gia" value="<?= $item['price'] ?>">
                                        <input type="hidden" name="id" value="<?= $item['id'] ?>">
                                        <button type="submit" name="dathang" value="Đặt hàng">Đặt hàng</button>

                                    </div>
                                </form>
                            </div>
                            <?php
                        }
                    }
                }
                ?>
                <h1>SẢN PHẨM KHUYẾN MÃI</h1>
                <?php
                if ($products) {
                    foreach ($products as $item) {
                        if ($item['status'] == 2) {
                            ?>
                            <div class="col-3">
                                <form action="index.php?act=cart" method="post">
                                    <div class="product-item ">
                                        <div class="card">
                                            <img src="../view/images/<?= $item['img'] ?>" class="card-img-top" alt="">
                                            <div class="card-body">
                                                <h5 class="card-title name-product">
                                                    <?= $item['name'] ?>
                                                </h5>
                                                <p class="card-text des-product">
                                                    <?= $item['description'] ?>
                                                </p>
                                            </div>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">
                                                    <span>
                                                        <del>
                                                            <?= $item['old_price'] ?>
                                                        </del>

                                                    </span>
                                                    <span class="text-danger new">
                                                        <?= $item['price'] ?>
                                                    </span>
                                                </li>
                                                <li class="list-group-item">Trả Góp 0%</li>
                                            </ul>
                                        </div>
                                        <input type="number" name="soluong" min="1" max="10" value="1"
                                            style="font-size:20px; width:45px;">
                                        <input type="hidden" name="img" value="<?= $item['img'] ?>">
                                        <input type="hidden" name="tensp" value="<?= $item['name'] ?>">
                                        <input type="hidden" name="gia" value="<?= $item['price'] ?>">
                                        <input type="hidden" name="id" value="<?= $item['id'] ?>">
                                        <button type="submit" name="dathang" value="Đặt hàng">Đặt hàng</button>

                                    </div>
                                </form>
                            </div>
                            <?php
                        }
                    }
                }
                ?>
                <h1>SẢN PHẨM HOT</h1>
                <?php
                if ($products) {
                    foreach ($products as $item) {
                        if ($item['status'] == 3) {
                            ?>
                            <div class="col-3">
                                <form action="index.php?act=cart" method="post">
                                    <div class="product-item ">
                                        <div class="card">
                                            <img src="../view/images/<?= $item['img'] ?>" class="card-img-top" alt="">
                                            <div class="card-body">
                                                <h5 class="card-title name-product">
                                                    <?= $item['name'] ?>
                                                </h5>
                                                <p class="card-text des-product">
                                                    <?= $item['description'] ?>
                                                </p>
                                            </div>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">
                                                    <span>
                                                        <del>
                                                            <?= $item['old_price'] ?>
                                                        </del>

                                                    </span>
                                                    <span class="text-danger new">
                                                        <?= $item['price'] ?>
                                                    </span>
                                                </li>
                                                <li class="list-group-item">Trả Góp 0%</li>
                                            </ul>
                                        </div>
                                        <input type="number" name="soluong" min="1" max="10" value="1"
                                            style="font-size:20px; width:45px;">
                                        <input type="hidden" name="img" value="<?= $item['img'] ?>">
                                        <input type="hidden" name="tensp" value="<?= $item['name'] ?>">
                                        <input type="hidden" name="gia" value="<?= $item['price'] ?>">
                                        <input type="hidden" name="id" value="<?= $item['id'] ?>">
                                        <button type="submit" name="dathang" value="Đặt hàng">Đặt hàng</button>

                                    </div>
                                </form>
                            </div>
                            <?php
                        }
                    }
                } else {
                    echo "<p>Chưa có sản phẩm nào!</p>";
                }
                ?>
            </div>
        </section>
    </div>
</div>