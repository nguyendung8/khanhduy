<div class="row mb ">
                <div class="row">
                    <h1>THÊM SẢN PHẨM</h1>
                    <form action="index.php?act=addProduct" method="post">
                    <table class="thongtinnhanhang">
                        <tr>
                            <td width="20%">Tên sản phẩm</td>
                            <td><input required type="text" name="name" id="name" value=""></td>
                        </tr>
                        <tr>
                            <td>danh mục sản phẩm</td>
                            <td>
                                <input required id="cate" name="cate" >
                            </td>
                        </tr>
                        <tr>
                            <td>ảnh</td>
                            <td>
                                <textarea required id="image" name="image" rows="4" cols="50"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>giá</td>
                            <td><input required type="number" name="price" id="price" value=""></td>
                        </tr>
                        <tr>
                            <td>kho</td>
                            <td><input required type="number" name="stock" id="stock" value=""></td>
                        </tr>
                        <tr>
                            <td>mô tả</td>
                            <td>
                                <textarea required id="description" name="description" rows="4" cols="50"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>số lượng</td>
                            
                            <td><input required type="number" name="quanlity" id="quanity" value=""></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="themmoi" value="Thêm mới"></td>
                        </tr>
                        <input type="hidden" name="id" value="<?=$product['id']?>">
                    </table>
                    </form>
                </div>
</div>