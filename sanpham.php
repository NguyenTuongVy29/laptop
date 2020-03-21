	<?php 
	   $sql="select * from sanpham where idloaisp=1 order by idsp";
	   $result=mysqli_query($conn,$sql);
	
	 
	    while($row=mysqli_fetch_array($result))
		{ 
		?> 	<div class="sanpham"> <?php 
			$sql1="select * from sanpham where idloaisp={$row['idloaisp']} order by idsp  LIMIT 0,6";
			$kq=mysqli_query($conn,$sql1);
			$dem = mysqli_num_rows($kq);
			if($dem>0)
			{
			?>
				
		<h2><?php echo $row["tenloaisp"];?></h2> 
			<div id="xemthem">
				<p><a href="index.php?loaisp=<?php echo $row['idloaisp']?>">Xem thêm >></a></p>
			</div>
		<?php } ?>
    	<div class="sanphamcon">
			<?php while($rows=mysqli_fetch_array($kq))
			{ ?>
			<div class="laptop">
									<?php 
										if($rows['khuyenmai1']>0)
										{
									?>
									<div class="moi"><h3>-<?php echo $rows['khuyenmai1']?>%</h3></div>
									<?php } ?>
									<a href="#"><img  src="img/uploads/<?php echo $rows['hinhanh'];?>"></a><br>					
									<p><a href="#" ><?php echo $rows['tensp'];?></a></p><br>
									<h4><?php echo number_format(($rows['gia']*((100-$rows['khuyenmai1'])/100)),0,",",".");?></h4>
									<div class="button">
												<h5><a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h5>

												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $rows['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
									</div><!-- End .button-->
			</div><!-- End .dienthoai-->
			
			<?php } ?>
			
		</div>
		</div><!-- end san pham-->
<?php }?>