	<div class="mainmenu-area">
	    <div class="container">
	        <div class="row">
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	            </div>
	            <div class="navbar-collapse collapse">
	                <ul class="nav navbar-nav text-danger">
						<li class="active"><a href="index.php">Trang chủ</a></li>
						<li><a href="gioithieu.php">Giới thiệu</a></li>
	                    <li class="dropdown"><a href="index.php?content=sanpham">Sản Phẩm<strong class="caret" ||
	                                class="dropdown-toggle" data-toggle="dropdown"></strong></a>
	                        <ul class="dropdown-menu">
	                            <li><a href="index.php?content=sanpham">Laptop</a></li>
	                            <li><a href="index.php?content=sanpham">Chuột không dây</a></li>
	                            <li><a href="index.php?content=sanpham">HTC</a></li>
	                            <li><a href="index.php?content=sanpham">LG</a></li>
	                            <li><a href="index.php?content=sanpham">Khác</a></li>
	                        </ul>
	                    </li>
						<li><a href="index.php?content=khuyenmai">Khuyến mãi</a></li>
						<li><a href="index.php?content=tintuc">Tin tức</a></li>
						<li><a href="index.php?content=phukien">phụ kiện</a></li>
	                    <li><a href="index.php?content=hotro">Hỗ Trợ</a></li>
	                    <!-- <li>
	                        <form action="index.php?content=timkiem" method="GET">
	                            <input type="hidden" name="content" value="timkiem">
	                            <input type="text" name="timkiem" />
	                            <div>
	                                <select name="gia">
	                                    <option value="0"> - Chọn giá - </option>
	                                    <option value="1">
	                                        < 1.000.000</option>
	                                    <option value="2">1.000.000 - 3.000.000</option>
	                                    <option value="3">3.000.000 - 5.000.000</option>
	                                    <option value="4">5.000.000 - 8.000.000</option>
	                                    <option value="5">8.000.000 - 10.000.000</option>
	                                    <option value="6"> > 10.000.000</option>
	                                </select>
	                            </div>
	                            <input type="submit" name="btntk" value="Tìm kiếm" />
	                        </form>
	                    </li> -->
						
	                    <li class="divider-vertical"></li>
	                    <li class="dropdown"> <a href="javascript:void(0,0)" class="dropdown-toggle" data-toggle="dropdown"
	                            role="button" aria-expanded="false">Đăng nhập <strong class="caret"></strong></a>
	                        <div class="dropdown-menu" style="padding: 30px; padding-bottom: 30px;">
	                            <?php if(isset( $_SESSION['username'])){
                            ?>
	                            <div id="dangnhap-in">
	                                <span id="xinchao">
	                                    <p>Xin chào: <span> <?php echo $_SESSION['username'] ?> </span></p>
	                                </span>
	                                <span id="logout">
	                                    <p><a href="logout.php">Logout</a></p>
	                                </span>
	                            </div><!-- End .dangnhap-in-->
	                            <?php 
                        }
                        else{
                        ?>
	                            <form action="dangnhap.php" method="post">
	                                <span>
	                                    <p>Username: <input type="text" size="10" name="user"></p> <br>
	                                    <p>Password: <input type="password" size="10" name="pass"></p> <br>
	                                </span>
	                                <input style="float: left; margin-right: 10px;" type="checkbox" name="remember-me"
	                                    id="remember-me" value="1">
	                                <label class="string optional" for="user_remember_me"> Nhớ thông tin</label>
	                                <a href="index.php?content=dangnhap"><button name="login">Đăng nhập</button></a>
	                                <p style="text-align:center;margin-top:5px">hay</p>
	                                <input class="btn btn-lg btn-primary btn-block" type="button" id="sign-in-google"
	                                    value="Đăng nhập với Google">
	                                <input class="btn btn-lg btn-primary btn-block" type="button" id="sign-in-twitter"
	                                    value="Đăng nhập với Facebook">

	                            </form>
	                            <?php } ?>
	                        </div>
	                    </li> 
	                </ul>
	            </div>
	        </div>
	    </div>
	</div> <!-- End mainmenu area -->