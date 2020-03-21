
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
				</br>
				<div id="quangcao1">
					<div class="center">
						<a href="#"> <img src="img/qc1.jpg" alt="quangcao" title="quangcao"> </a>
					</br> </br> 
						<a href="#"> <img src="img/qc2.jfif" alt="quangcao2" title="quangcao2"> </a>
						</br> </br> 
						<a href="#"> <img src="img/qc3.jfif" alt="quangcao2" title="quangcao2"> </a>
					</div><!-- End .center -->
				</div><!-- End .quangcao1 -->