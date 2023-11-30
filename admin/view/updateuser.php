<div class="row mb ">
                <div class="row">
                    <h1>CHỈNH SỬA NGƯỜI DÙNG<Menu:toolbar></Menu:toolbar></h1>
                    <form action="index.php?act=updateuser" method="post" enctype="multipart/form-data">
                    <table class="thongtinnhanhang">
                    <input required type="hidden" name="id"  value="<?=$_GET['id']?>">
                        <tr>
                            <td width="20%">Tên đăng nhập</td>
                            <td><input required type="text" name="name" id="name" value="<?=$edituser['name']?>"></td>
                        </tr>
                        <tr>
                        <td width="20%">Email</td>
                            <td><input required type="email" name="email" id="name" value="<?=$edituser['email']?>"></td>
                        </tr>
                            <td></td>
                            <td><input type="submit" name="edit" value="Cập nhật"></td>
                        </tr>
                       
                    </table>
                    </form>
                </div>
</div>