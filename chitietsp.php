<?php 
	$idsp=$_GET['idsp'];
	$sql="select * from sanpham where idsp=$idsp";
	$rows=mysqli_query($conn, $sql);
	while ($row=mysqli_fetch_array($rows))
	{
?>

<div class="chitietsp">
    <div class="chitietsp-in">
        <div class="content">
            <div class="zoom-small-image">
                <a href='img/uploads/<?php echo $row['hinhanh'] ?>' width="300" height="300" class='cloud-zoom'
                    id='zoom1' rel="adjustX: 10, adjustY:-4">
                    <img src="img/uploads/<?php echo $row['hinhanh'] ?>" width="250" height="250" alt=''
                        title="Optional title display" />
                </a>
                <!-- <div data-v-4a9a188f="" class="additional-images">
                    <div data-v-4a9a188f="" class="item flex align-center">
                        <img data-v-4a9a188f="" src="img/uploads/as2.jpg" class="p3">
                    </div>
                    <div data-v-4a9a188f="" class="item flex align-center">
                        <img data-v-4a9a188f="" src="img/uploads/as3.jpg" class="p3">
                    </div>
                </div> -->
            </div>

            <div class="giasp">
                <ul>
                    <p> <?php echo $row['tensp'] ?></p>
                    <li><span><b>Giá: <font color="red">
                                    <?php echo number_format(($row['gia']*((100-$row['khuyenmai1'])/100)),0,",",".");?></b>
                            </font></span></li>
                    <li>Tình trạng:
                        <?php 
							$dem = $row['soluong'] - $row['daban'];
							if( $dem >0)
								echo "Số sản phẩm còn (".$dem.")";
							else 
								echo "Hết hàng";
						?>
                    </li>
                    <form action="index.php?content=cart&action=add&idsp=<?php echo $row['idsp'] ?>" method="post">
                        <li>Số lượng mua : <input type="number" size="1" class="input-text qty text" value="1"
                                name="soluongmua" min="1" step="1" /></li>

                        <li>
                            <?php 
						if($dem <=0)
							echo "<a href='index.php?content=hethang'><button>a</button></a>
							";
						else { ?>
                            <input type="submit" value="a" name="a" class="inputmuahang" />
                            <?php } ?>
                        </li>

                    </form>
                </ul>
            </div>
        </div>
        <div class="tinhnang">
            <div class="tieudetinhnang">
                <ul class="tabs">
                    <li><a href="#tab1">Tính năng</a></li>
                    <li><a href="#tab2">Bình luận </a></li>
                </ul>
            </div>

            <div id="tab1">
                <?php echo $row['chitiet'] ?>
            </div>
            <div id="tab2">
                <div id="fb-root"></div>
                <script>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src =
                        'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.12&appId=2148141112089632&autoLogAppEvents=1';
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
                </script>
                <div class="fb-comments" data-href="https://www.facebook.com/NevermoreTuanNguyen" data-numposts="10">
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>