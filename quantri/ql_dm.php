<link rel="stylesheet" href="css/ql_dm.css">
<?php
    $sql = "SELECT * FROM dmsanpham ORDER BY id_dm ASC";
    $query = mysqli_query($conn, $sql);

?>
<div id="main">
    <p id="add-prd"><a href="quantri.php?page_layout=themdm"><span>Thêm danh mục mới</span></a></p>
    <table>
        <tr>
            <td width="15%">ID</td>
            <td width="40%">Tên danh mục</td>
            <td width="20%">Ảnh danh mục</td>
            <td width="15%">Sửa</td>
            <td width="15%">Xóa</td>
        </tr>
        <?php
            while($row = mysqli_fetch_array($query)){ 
        ?>
            <tr>
                <td><span><?php echo $row['id_dm'];?></span></td>
                <td class="l5"><a href="#"><?php echo $row['ten_dm'];?></a></td>
                <td><span class="thumb"><img width="60" src="anh/<?php echo $row['anh_dm'];?>" /></span></td>
                <td><a href="quantri.php?page_layout=sua_dm&id_dm=<?php echo $row['id_dm'];?>"><span>Sửa</span></a></td>
                <td><a href="xoa_dm.php?id_dm=<?php echo  $row['id_dm'];?>"><span>Xóa</span></a></td>
            </tr>
            <?php
            }
            ?>
    </table>
</div>