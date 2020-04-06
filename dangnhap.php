 <div id="dangnhap">
                    <div class="center1">
                        <h4>ĐĂNG NHẬP</h4>
                        <?php if(isset( $_SESSION['username'])){
                            ?>
                                <div id="dangnhap-in">
                                <span id="xinchao"><p>Xin chào: <span> <?php echo $_SESSION['tennd'] ?> </span></p></span>
                                <span id="logout"><p><a href="logout.php">Logout</a></p></span>
                        </div><!-- End .dangnhap-in-->
                            <?php 
                        }
                        else{
                        ?>
                          <div id="dangnhap-in">
                            <form action="dangnhap.php" method="post">
                                <span><p>Username: <input type="text" size="10" name="user"></p> <br>
                                <p>Password: <input type="password" size="10" name="pass"></p> <br></span>
                                <a href="index.php?content=dangnhap"><button name="login">Đăng nhập</button></a><br>
                            </form>
                            <ul>
                                <li><a href="index.php?content=dangky">Đăng ký</a></li>
                            </ul> 
                        </div>  <!--End .dangnhap-in -->
                        <?php } ?>
                    </div><!-- End .center1-->
                </div>
<?php
// session_start();
include("include/connect.php");
if(isset($_POST['login']))
{
    $username = $_POST['user'];
    $password = MD5($_POST['pass']);
    $sql="select * from nguoidung where username = '$username'";
    $sql_check = mysqli_query($conn, $sql);
    $dem = mysqli_num_rows($sql_check);
    if($dem == 0)
    {
        $_SESSION['thongbaoloi'] = "Tài khoản không thồn tại";
        echo "
                            <script language='javascript'>
                                alert('Tài khoản không tồn tại');
                                window.open('index.php','_self', 1);
                            </script>
                        ";
    }
    else
    {
        $sql2 ="select * from nguoidung where username = '$username' and password = '$password'";
        $sql_check2 = mysqli_query($conn, $sql2);
        $dem2 = mysqli_num_rows($sql_check2);
        if($dem2 == 0)
            echo "
                            <script language='javascript'>
                                alert('Mật khẩu đăng nhập không đúng');
                                window.open('index.php','_self', 1);
                            </script>
                        ";
        else
        {
            $row = mysqli_fetch_array($sql_check2);
            
                $_SESSION['username'] = $username;
                $_SESSION['phanquyen'] = $row['phanquyen'];
                $_SESSION['idnd'] = $row['idnd'];
                
                if($_SESSION['phanquyen'] ==0)
                    {
                        
                        echo "
                            <script language='javascript'>
                                alert('Đăng nhập thành công');
                                window.open('admin/admin.php','_self', 1);
                            </script>
                        ";
                    }
                else
                {
                   
                   echo "
                            <script language='javascript'>
                                alert('Đăng nhập thành công');
                                window.open('index.php','_self', 1);
                            </script>
                        ";
                }
            }
        }
    }

?>