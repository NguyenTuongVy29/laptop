﻿ <div id="dangnhap">
					<div class="center1">
						<h4>ĐĂNG NHẬP</h4>
						<?php if(isset( $_SESSION['username'])){
							?>
								<div id="dangnhap-in">
								<span id="xinchao"><p>Xin chào: <span> <?php echo $_SESSION['username'] ?> </span></p></span>
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
								<a href="index.php?content=dangnhap"><button class="btn btn-warning" name="login">Đăng nhập</button></a>
								<button class ="btn btn-warning"><a href="index.php?content=dangky">Đăng ký</a></button>
							</form>
							
						</div><!-- End .dangnhap-in-->
						<?php } ?>
					</div><!-- End .center1-->
				</div><!-- End .dangnhap-->

				<div id="timkiem">
					<div class="center1">
						<h4>TÌM KIẾM </h4>
							<div id="select">
								<form action="index.php?content=timkiem" method="GET">
								<input type="hidden" name="content" value="timkiem">
								<input type="text" name="timkiem" />
								<div id="select2">
									<select name="gia">
										<option value="0"> - Chọn giá - </option>
										<option value="1">  < 1.000.000</option>
										<option value="2">1.000.000 - 3.000.000</option>
										<option value="3">3.000.000 - 5.000.000</option>
										<option value="4">5.000.000 - 8.000.000</option>
										<option value="5">8.000.000 - 10.000.000</option>
										<option value="6"> > 10.000.000</option>
									</select>
									<button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="btntk"><i class="fa fa-search" aria-hidden="true"></i></button>
								</form>
								</div><!-- End .select2-->
							</div><!-- End .select-->
					
					</div><!-- End .center1-->
				</div><!-- End .timkiem-->
				
				<div id="yahoo">
					<div class="center1">
						<h4>HOTLINE</h4>
						<h2><a href="ymsgr:sendim?anhchanglangtu_yeubetocvang&amp;m=g&amp;t=14"><img src="img/imonline.png"></a></h2>
							<p>0978164307</p>
						<h2><a href="ymsgr:sendim?boydangyeu8188&amp;m=g&amp;t=14"><img src="img/imonline.png"></a></h2>
							<p>0982612514</p>
					</div><!-- End .center1-->
				</div><!-- End .yahoo -->
				
				<div id="fb-root">
					<div class="center1">
						<div id="fb-root"></div>
						<script>(function(d, s, id) {
						  var js, fjs = d.getElementsByTagName(s)[0];
						  if (d.getElementById(id)) return;
						  js = d.createElement(s); js.id = id;
						  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
						  fjs.parentNode.insertBefore(js, fjs);
						}(document, 'script', 'facebook-jssdk'));</script>
						<div class="fb-like-box" data-href="https://www.facebook.com/dienthoaiabc" data-width="188" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="false"></div>
					</div><!-- End .center1 -->
				</div><!-- End .facebook -->