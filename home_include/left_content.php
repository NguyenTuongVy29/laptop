<div id="danhmucsp">
	<div class="center">
					<h4>THƯƠNG HIỆU</h4>
					<?php 
					   $sql="select * from thuonghieu ";
					   $result=mysqli_query($conn,$sql);
					?>
						<ul>
						<?php 
						   while($row=mysqli_fetch_array($result))
						   {
						?>
							<li><a href="index.php?idth=<?php echo $row['idth'] ?>"><?php echo $row["tenth"];?></a></li>
							<?php } ?>
							
							
						</ul>
					</div><!-- End .center -->
				</div>	<!-- End .menu-left -->
				</br>
				<div id="phukien">
					<div class="center">
						<h4> PHỤ KIỆN</h4>
						<?php 
					   $sql="select * from loaisp where idloaisp !=1";
					   $result=mysqli_query($conn,$sql);
					?>
						<ul>
						<?php 
						   while($row=mysqli_fetch_array($result))
						   {
						?>
							<li><a href="index.php?idloaisp=<?php echo $row['idloaisp'] ?>"><?php echo $row["tenloaisp"];?></a></li>
							<?php } ?>
							
						</ul>
					</div><!-- End .center -->
				</div><!-- End .phukien -->	
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

				<div id="quangcao1">
					<div class="center">
						<a href="#"> <img src="img/qc1.jpg" alt="quangcao" title="quangcao"> </a>
					</br> </br> 
						<a href="#"> <img src="img/qc2.jfif" alt="quangcao2" title="quangcao2"> </a>
						</br> </br> 
						<a href="#"> <img src="img/qc3.jfif" alt="quangcao2" title="quangcao2"> </a>
					</div><!-- End .center -->
				</div><!-- End .quangcao1 -->