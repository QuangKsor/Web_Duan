<link rel="stylesheet" href="css/ql_dm.css">
<?php
    if(isset($_GET['page'])){
            $page = $_GET['page'];
        }else{
            $page = 1;
        }
        $rowsPerPage = 10;
        $perRow = $page*$rowsPerPage-$rowsPerPage;
    $sql = "SELECT * FROM sanpham INNER JOIN dmsanpham ON sanpham.id_dm = dmsanpham.id_dm LIMIT $perRow, $rowsPerPage";
    $query = mysqli_query($conn,$sql);
?>
<div id="main">
    <p id="add-prd"><a href="quantri.php?page_layout=themsp"><span>Thêm sản phẩm mới</span></a></p>
    <table>
        <tr>
            <td width="15%">ID</td>
            <td width="35%">Tên sản phẩm</td>
            <td width="15%">Giá sản phẩm</td>
            <td width="15%">Ảnh sản phẩm</td>
            <td width="15%">Sửa</td>
            <td width="20%">Xóa</td>
        </tr>
        <?php
            while($row = mysqli_fetch_array($query)){ 
        ?>
            <tr>
                <td><span><?php echo $row['id_sp'];?></span></td>
                <td class="l5"><a href="#"><?php echo $row['ten_sp'];?></a></td>
                <td class="l5"><a href="#"><?php echo $row['gia_sp'];?></a></td>
                <td><span class="thumb"><img width="60" src="anh/<?php echo $row['anh_sp'];?>" /></span></td>
                <td><a href="quantri.php?page_layout=sua_sp&id_sp=<?php echo $row['id_sp'];?>"><span>Sửa</span></a></td>
                <td><a href="xoa_sp.php?id_sp=<?php echo  $row['id_sp'];?>"><span>Xóa</span></a></td>
            </tr>
            <?php
            }
            ?>
    </table>
    <?php
       $totalRows = mysqli_num_rows(mysqli_query($conn,"SELECT * FROM sanpham"));
       $totalPage = ceil($totalRows/$rowsPerPage);
       $listPage = '';
       for($i=1;$i<=$totalPage;$i++){
            if($i==$page){
                $listPage .= " <span>".$i."</span>";
            }else{
                $listPage .= ' <a href="'.$_SERVER['PHP_SELF'].'?page_layout=danhsachsp&page='.$i.'">'.$i.'</a>';
            }
       }
    ?>
    <p id="pagination"><?php echo $listPage;?></p>
</div>