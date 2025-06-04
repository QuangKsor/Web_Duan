<head>
  <meta charset="UTF-8" />
  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
  <title>Slider Demo</title>
  <style>
    .slider {
      overflow: hidden;
      position: relative;
      width: 100%;
      height: 80%;
      object-fit: contain;
      margin: 10px auto;
      border: 1px solid #ccc;
    }

    .list-images {
      display: flex;
      transition: transform 0.5s ease;
    }

    .list-images>div {
      min-width: 100%;
      box-sizing: border-box;
    }

    .slider-img {
      width: 100%;
      background-repeat: no-repeat;
      background-size: contain;
      height: 80%;
      /* object-fit: cover; */
      display: block;
    }

    .btn:hover {
      color: aliceblue;
    }

    .btn {
      font-size: 50px;
      color: #999;
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      user-select: none;
      padding: 10px;

      border-radius: 50%;
      transition: background 0.3s;
      z-index: 10;
    }

    .btn:hover {
      background: rgba(0, 0, 0, 0.5);
      color: white;
    }

    .btn-left {
      left: 10px;
    }

    .btn-right {
      right: 10px;
    }
  </style>
</head>

<body>
  <!-- Slider 1 -->
  <div class="slider" id="slider1">
    <div class="list-images">

      <div><a href="index.php?page_layout=depnam"><img class="slider-img" src="chucnang/banner/dep nam nu.jpg" alt="Image 1" /></a></div>
      <div><a href="index.php?page_layout=depnu"><img class="slider-img" src="chucnang/banner/ảnh dép1.jpg" alt="Image 2" /></a></div>
    </div>
    <div class="btn-left btn"><i class="bx bx-chevron-left"></i></div>
    <div class="btn-right btn"><i class="bx bx-chevron-right"></i></div>
  </div>

</body>
