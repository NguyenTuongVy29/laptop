	<?php 
		if(isset($_GET['action']))
    {    $action=$_GET['action'];}
    else $action=""; 
		if(isset($_GET['content']))
				{
					switch ($_GET['content'])
					{
						case "gioithieu":
							include ('gioithieu.php');
							break;
						case "timkiem":
							include ('timkiem.php');
							break;
						case "dangky":
							include ('dangky.php');
							break;
						case "dangnhap":
							include ('dangnhap.php');
							break;
						case "chitietsp":
							include ('chitietsp.php');
							break;
						case "cart":
							include ('cart/index.php');
							break;
						case "hotro":
							include ('hotro.php');
							break;
						case "sanpham":
							include ('sanpham.php');
							break;
						case "phukien":
							include ('phukien.php');
							break;
						case "tintuc":
							include ('tintuc.php');
							break;
						case "chitiettintuc":
							include ('chitiettintuc.php');
							break;
						case "hethang":
							include ('hethang.php');
							break;
						case "khuyenmai":
							include ('khuyenmai.php');
							break;
					}
				}
			elseif(isset($_GET['idloaisp'])) {
					$sql = "SELECT * FROM sanpham  WHERE idloaisp='{$_GET['idloaisp']}'";	
					if(isset($GET['idloaisp']))
					{
						$sql.="where idloaisp='".$_GET['idloaisp']."'";
					}
						/*------------Phan trang------------- */
						// Nếu đã có sẵn số thứ tự của trang thì giữ nguyên (ở đây tôi dùng biến $page) 
						// nếu chưa có, đặt mặc định là 1!   
					
						if(!isset($_GET['page'])){  
						$page = 1;  
						} else {  
						$page = $_GET['page'];  
						}  

						// Chọn số kết quả trả về trong mỗi trang mặc định là 10 
						$max_results = 12;  

						// Tính số thứ tự giá trị trả về của đầu trang hiện tại 
						$from = (($page * $max_results) - $max_results);  

						// Chạy 1 MySQL query để hiện thị kết quả trên trang hiện tại  

						$sql.=  "LIMIT $from, $max_results";
						
		
					$query=mysqli_query($conn,$sql);
					$total=mysqli_num_rows($query);
					if($total>0)
					{
					?>
						
						<div class="sanpham">	
							<?php
							$sql1="select tenloaisp from loaisp where idloaisp='{$_GET['idloaisp']}'";
							$query1=mysqli_query($conn,$sql1);
							$row=mysqli_fetch_array($query1);
							?>
						<h2><?php echo $row['tenloaisp']?></h2>
							<div class="sanphamcon">
								<div id="xemthem">
				<p><a href="index.php?loaisp=<?php echo $row['idloaisp']?>">Xem thêm >></a></p>
			</div>
								<?php 
								  while ($result=mysqli_fetch_array($query))
								  { ?>
								
								<div class="laptop">
									<?php 
										if($result['khuyenmai1']>0)
										{
									?>
									<div class="moi"><h3>-<?php echo $result['khuyenmai1']?>%</h3>
									</div>
									<?php } ?>
									<div class="product-carousel">
                            <div class="single-product">
									<div class="product-f-image">
									<a href="#"><img  src="img/uploads/<?php echo $result['hinhanh'];?>"></a>				
									<p><a href="#" ><?php echo $result['tensp'];?></a></p>
									<h4><?php echo number_format(($result['gia']*((100-$result['khuyenmai1'])/100)),0,",",".");?></h4>
									<div class="product-hover">
									<div class="button">
										
												<h5><a href="index.php?content=chitietsp&idsp=<?php echo $result['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h5>
											
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $rows['idsp'] ?>"><button type="submit"><i class="fa fa-cart-plus" aria-hidden="true"></i></button></a></h5>
									</div><!-- End .button-->
									</div>
								</div>
							</div>
						</div>
						
								</div><!-- End .dienthoai-->
								<?php } ?>
								
							</div><!-- End .sanphamcon-->
							
						</div><!-- End .sanpham-->
						<div class="phantrang">
						<?php 
						
						// Tính tổng kết quả trong toàn DB:  
						$total_results = mysqli_result(mysqli_query("SELECT COUNT(*) as Num FROM sanpham where idloaisp='{$_GET['idloaisp']}'"),0);  

						// Tính tổng số trang. Làm tròn lên sử dụng ceil()  
						$total_pages = ceil($total_results / $max_results);  


						// Tạo liên kết đến trang trước trang đang xem 
						if($page > 1){  
						$prev = ($page - 1);  
						echo "<a href=\"".$_SERVER['PHP_SELF']."?idloaisp=".$_GET['idloaisp']."&page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";  
						}  

						for($i = 1; $i <= $total_pages; $i++){  
						if(($page) == $i){
							
						echo "$i&nbsp;"; 
						} else {  
						echo "<a href=\"".$_SERVER['PHP_SELF']."?idloaisp=".$_GET['idloaisp']."&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
						}  
						}  

						// Tạo liên kết đến trang tiếp theo  
						if($page < $total_pages){  
						$next = ($page + 1);  
						echo "<a href=\"".$_SERVER['PHP_SELF']."?idloaisp=".$_GET['idloaisp']."&page=$next\"><button class='trang'>Trang sau</button></a>";  
						}  
						echo "</center>";  	
						?>
						</div>			<?php 
					}
					else {echo "Không có sản phẩm nào";}
				}
				else {	
	?>
				<div class="sanpham">			
						<h2>LAPTOP MỚI</h2>
					<div class="sanphamcon">
					    <?php 
						    $sql2="select * from sanpham where idloaisp=1 and dequi=1 order by daban  DESC limit 6 ";
							$result2= mysqli_query($conn,$sql2);
						?>
						<?php 
						  while ($row=mysqli_fetch_array($result2))
						  { ?>
						
						<div class="laptop">
							<?php 
										if($row['khuyenmai1']>0)
										{
									?>
									<div class="moi"><h3>-<?php echo $row['khuyenmai1']?>%</h3></div>
									<?php } ?>
							<h1><a href="#"><img  src="img/uploads/<?php echo $row['hinhanh'];?>"></a></h1>				
							<p><a href="#" ><?php echo $row['tensp'];?></a></p></br>
							<p><?php echo $row['giacu'];?></p>
							<h4>Giá: <?php echo number_format(($row['giaban']*((100-$row['khuyenmai1'])/100)),0,",",".");?></h4>
							<div class="button">

												<h5><a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h5>
											
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $row['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											
									</div><!-- End .button-->
						</div><!-- End .dienthoai-->
						<?php } ?>
						
					</div><!-- End .sanphamcon-->
					
				</div><!-- End .sanpham-->
				
				<!------------------------------------------------------------------------------------------------------------------->
                <div class="sanpham">			
						<h2>LAPTOP ĐƯỢC MUA NHIỀU NHẤT</h2>
					<div class="sanphamcon">
					    <?php 
						    $sql3="select * from sanpham where idloaisp=1 order by idsp  DESC limit 6 ";
							$result3= mysqli_query($conn, $sql3);
						?>
						<?php 
						  while ($row=mysqli_fetch_array($result3))
						  { ?>
						
						<div class="laptop">
							<?php 
										if($row['khuyenmai1']>0)
										{
									?>
									<div class="moi"><h3>-<?php echo $row['khuyenmai1']?>%</h3></div>
									<?php } ?>
							<h1><a href="#"><img  src="img/uploads/<?php echo $row['hinhanh'];?>"></a></h1>				
							<p><a href="#" ><?php echo $row['tensp'];?></a></p></br>
							<p><?php echo $row['giacu'];?></p>
							<h4><?php echo number_format(($row['giaban']*((100-$row['khuyenmai1'])/100)),0,",",".");?></h4>
							<div class="button">

												<h5><a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h5>
										
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $row['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											
									</div><!-- End .button-->
						</div><!-- End .dienthoai-->
						<?php } ?>
						
					</div><!-- End .sanphamcon-->
					
				</div><!-- End .sanpham-->
	<?php } ?>