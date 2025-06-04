<div id="cart">
    <a href="index.php?page_layout=giohang">
        <button width="20px">
            <span>
                <?php
                if(isset($_SESSION['giohang'])){
                    echo count($_SESSION['giohang']);
                }
                else{
                    echo 0;
                }
                ?>
            </span>
        </button>
    </a>
</div>