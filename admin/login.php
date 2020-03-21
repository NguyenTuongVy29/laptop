
<html lang="vi">
<head>
    <title>Đăng Nhập Admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="css/login.css" type="text/css">
<!--===============================================================================================-->
</head>


<body>
 

    <div class="limiter">
        
        <div class="container-login100">
            <div class="wrap-login100 p-t-90 p-b-30">
                <form class="login100-form validate-form" action="" method="post">
                    <span class="login100-form-title p-b-40">
                        Login
                    </span>
   <?php
session_start();
if(isset($_SESSION['username']))
{
    

if($_SESSION['phanquyen']==1)
{
    header("location:../index.php");
}
if($_SESSION['phanquyen']==0)
{
    header("location:admin.php");
}
}
?>
    <?php
include("../include/connect.php");

if(isset($_POST['login']))
{
    $username = $_POST['user'];
    $password = MD5($_POST['pass']);
    $sql="select * from nguoidung where username = '$username'";
    $sql_check = mysqli_query($conn, $sql);
    $dem = mysqli_num_rows($sql_check);
    if($dem == 0)
    {
        echo "<p class='thongbao1'>Tài khoản không tồn tại</p>";
    }
    else
    {
        $sql_check2 = "select * from nguoidung where username = '$username' and password = '$password'";
        $row=mysqli_query($conn,$sql_check2);  
        $dem2 = mysqli_num_rows($row);
        if($dem2 == 0)
            echo "<p class='thongbao1'>Mật khẩu không chính xác</p>";
        else
        {
    
         while($rows = mysqli_fetch_array($row))
            {
              $_SESSION['username'] = $username;
                $_SESSION['phanquyen'] = $row['phanquyen'];
                $_SESSION['idnd'] = $row['idnd'];
                if($rows['phanquyen'] == 0)
                {
                    
                    echo "
                            <script language='javascript'>
                                alert('Đăng nhập quản trị thành công');
                                window.open('admin.php','_self', 1);
                            </script>
                        ";
                }
                else
                {
                    
                    header('location:../index.php');
                }
            }
        }
    }
}
?>
                    <div>
                        <a href="#" class="btn-login-with bg1 m-b-10">
                            <i class="fa fa-facebook-official"></i>
                            Login with Facebook
                        </a>

                        <a href="#" class="btn-login-with bg2">
                            <i class="fa fa-twitter"></i>
                            Login with Google
                        </a>
                    </div>

                    <div class="text-center p-t-55 p-b-30">
                        <span class="txt1">
                        Đăng Nhập Quản Trị
                        </span>

                    </div>
                    <div class="wrap-input100 validate-input m-b-16" data-validate = "Please enter user">
                        <input class="input100" type="text" name="user" placeholder="Nhập Tài Khoản">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
                        <span class="btn-show-pass">
                            <i class="fa fa fa-eye"></i>
                        </span>
                        <input class="input100" type="password" name="pass" placeholder="Nhập Mật Khẩu">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" name="login" class="dangnhap">
                            Login
                        </button>
                    </div>            
                    <div class="flex-col-c p-t-224">
                        <span class="txt2 p-b-10">
                            Don’t have an account?
                        </span>

                        <a href="#" class="txt3 bo1 hov1">
                            Sign up now
                        </a>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    
    
<!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>
</html>