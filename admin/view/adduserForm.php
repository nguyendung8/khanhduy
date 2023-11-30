<div class="row mb ">
    <div class="row">
        <h1>THÊM NGƯỜI DÙNG<Menu:toolbar></Menu:toolbar></h1>
        <form action="index.php?act=adduser" method="post" enctype="multipart/form-data">
        <table class="thongtinnhanhang">
        
            <tr>
                <td width="20%">Tên đăng nhập</td>
                <td><input required type="text" name="username" id="name" value=""></td>
            </tr>
            <tr>
            <td width="20%">Email</td>
                <td><input required type="email" name="email" id="name" value=""></td>
            </tr>
            <tr>
            <td width="20%">Password</td>
                <td><input required type="password" name="password" id="name" value=""></td>
            </tr>
            
            <tr>
                <td></td>
                <td><input type="submit" name="add" value="Thêm mới"></td>
            </tr>
            
        </table>
        </form>
    </div>
</div>