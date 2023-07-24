<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Open+Sans:wght@400;500;600&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
      rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link href="../lib/animate/animate.min.css" rel="stylesheet" />
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet" />

    <!-- <link href="css/chart.css" rel="stylesheet"> -->

    <link rel="stylesheet" href="../css/serviceProfit.css" />
    
    <title>WYC - Turn to farming</title>
  </head>
  <body>
    <!-- Spinner Start -->
    <div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div
        class="spinner-border text-primary"
        role="status"
        style="width: 3rem; height: 3rem"
      ></div>
    </div>
    <!-- Spinner End -->

    <!-- Navbar Start -->
    <nav
      class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5"
    >
      <a href="index.html" class="navbar-brand d-flex align-items-center">
        <h1 class="m-0"><img src="img/logo.png" style="width: 16vw" /></h1>
      </a>
      <button
        type="button"
        class="navbar-toggler me-0"
        data-bs-toggle="collapse"
        data-bs-target="#navbarCollapse"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
          <a href="index.html" class="nav-item nav-link active">Home</a>
          <a href="recomend.html" class="nav-item nav-link">추천서비스</a>
          <div class="nav-item dropdown">
            <a
              href="#"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              >수익 분석</a
            >
            <div class="dropdown-menu bg-light m-0">
              <a href="revenue1.html" class="dropdown-item"
                >매출 확인(농작물우선)</a
              >
              <a href="revenue2.html" class="dropdown-item"
                >매출 확인(지역우선)</a
              >
              <a href="serviceCost.html" class="dropdown-item">비용 조회</a>
              <a href="serviceProfit.html" class="dropdown-item">수익 확인</a>
            </div>
          </div>
          <a href="servicePolicyCheck.html" class="nav-item nav-link"
            >지원정책</a
          >
          <div class="nav-item dropdown">
            <a
              href="#"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              >커뮤니티</a
            >
            <div class="dropdown-menu bg-light m-0">
              <a href="serviceEsidence.html" class="dropdown-item"
                >농지 & 거주지 현황</a
              >
              <a href="festival.html" class="dropdown-item"
                >지역축제 & 문화행사</a
              >
              <a href="success.html" class="dropdown-item">귀농 성공사례</a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a
              href="#"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              >회원관리</a
            >
            <div class="dropdown-menu bg-light m-0">
              <a href="login.html" class="dropdown-item">로그인</a>
              <a href="mypage.html" class="dropdown-item">마이 페이지</a>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div
      class="container-fluid header_img py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 animated slideInDown">
          수익 확인
        </h1>
      </div>
    </div>

    <div
      class="text-center mx-auto pb-4 wow fadeInUp"
      data-wow-delay="0.1s"
      style="max-width: 500px"
    >
      <p class="section-title bg-white text-center text-primary px-3">
        수익 예측
      </p>
      <h1 class="mb-5">매출과 비용을 고려한<br />수익을 확인해보세요.</h1>
    </div>

    <!-- Page Header End -->

    <main class="container-xxl py-5">
      <div class="content wow fadeInUp" data-wow-delay="0.3s">
        <!-- onsubmit="return false" DB연동시 삭제 -->
        <form class="select_box row" onsubmit="return false">
          <div class="select_option_box row col-lg-8 col-md-8 col-xs-12">
            <div class="select_sales col-lg-6 col-xs-6">
              <!-- <input type="text" name="cost_datalist" list="cost_datalist"> -->
              <select class="select_option_sales select_box_style">
                <option value="sales">매출 선택</option>
                <option value="sale_gokseong_strawberry">
                  곡성군 딸기 매출
                </option>
                <option value="sale_naju_strawberry">나주시 딸기 매출</option>
                <option value="sale_suncheon_cucumber">순천시 오이 매출</option>
                <option value="sale_naju_tomato">나주시 토마토 매출</option>
                <!-- <option value="">나주시 포도 매출</option>
                <option value="">장흥군 쌀 매출</option> -->
              </select>
            </div>
            <div class="select_cost col-lg-6 col-xs-6">
              <select class="select_option_cost select_box_style">
                <option value="cost">비용 선택</option>
                <option value="cost_gokseong_strawberry">
                  곡성군 딸기 비용
                </option>
                <option value="cost_naju_strawberry">나주시 딸기 비용</option>
                <option value="cost_suncheon_cucumber">순천시 오이 비용</option>
                <option value="cost_naju_tomato">나주시 토마토 비용</option>
                <!-- <option value="">나주시 포도 비용</option>
                <option value="">장흥군 쌀 비용</option> -->
              </select>
            </div>
          </div>

          <div class="reset_sumbmit_box row col-lg-4 col-md-4">
            <div class="col-lg-6">
              <input
                type="reset"
                name="reset_button"
                id="reset_button"
                class="select_box_button"
              />
            </div>
            <!-- <label for="reset_button" class="select_box_button_label"></label> -->
            <div class="col-lg-6">
              <input
                type="submit"
                name="sumbmit_button"
                id="sumbmit_button"
                class="select_box_button"
                onclick="history_same()"
              />
            </div>
            <!-- <label for="submit_button" class="select_box_button_label"></label> -->
          </div>
        </form>

        <div class="visualization_box_container">
          <div class="visualization_box">
            <div class="visualization_text">
              <div class="default_message">
                동일한 지역 및 작물을 선택해 주세요.
              </div>
            </div>
          </div>

          <div class="visualization_graph container-fluid">
            <div class="chart_title">
              내년 <span class="select_crop_title"></span> 예상 수익
            </div>
            <!--  <canvas id="myChart" class="graph_image" style="display: none;"></canvas> -->
            <canvas id="graphgokseong_strawberry" class="graph_image"></canvas>
            <canvas id="graphnaju_strawberry" class="graph_image"></canvas>
            <canvas id="graphsuncheon_cucumber" class="graph_image"></canvas>
            <canvas id="graphnaju_tomato" class="graph_image"></canvas>
            <!-- <div class=""></div> -->
          </div>
        </div>
      </div>
    </main>

    <!-- Footer Start -->
    <div
      class="container-fluid bg-dark footer mt-5 py-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-4 col-md-6">
            <h5 class="text-white mb-4">Our Office</h5>
            <p class="mb-2">
              <i class="fa fa-map-marker-alt me-3"></i>서울시 마포구 신촌로 104
              4층, 5층<br />그린컴퓨터
            </p>
            <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>02-715-2111</p>
            <p class="mb-2">
              <i class="fa fa-envelope me-3"></i>http://sinchon.greenart.co.kr/
            </p>
            <div class="d-flex pt-3">
              <!-- <a class="btn btn-square btn-secondary rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                      <a class="btn btn-square btn-secondary rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                      <a class="btn btn-square btn-secondary rounded-circle me-2" href=""><i class="fab fa-youtube"></i></a>
                      <a class="btn btn-square btn-secondary rounded-circle me-2" href=""><i class="fab fa-linkedin-in"></i></a> -->
              <a
                class="btn btn-square btn-secondary rounded-circle me-2"
                href="https://github.com/Sanghokim91/WYC"
                ><i class="fab fa-github"></i
              ></a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <h5 class="text-white mb-4">Quick Links</h5>
            <a class="btn btn-link" href="recomend.html">농작물 추천</a>
            <a class="btn btn-link" href="revenue1.html"
              >매출 확인(농작물우선)</a
            >
            <a class="btn btn-link" href="revenue2.html">매출 확인(지역우선)</a>
            <a class="btn btn-link" href="serviceCost.html">비용 조회</a>
            <a class="btn btn-link" href="serviceProfit.html">수익 확인</a>
            <a class="btn btn-link" href="servicePolicyCheck.html"
              >정부지원 정책들</a
            >
            <a class="btn btn-link" href="festival.html">지역축제 & 문화행사</a>
          </div>
          <div class="col-lg-4 col-md-6">
            <h5 class="text-white mb-4">Business Hours</h5>
            <p class="mb-1">Monday - Friday</p>
            <h6 class="text-light">09:30 am - 06:20 pm</h6>
            <p class="mb-1">Saturday</p>
            <h6 class="text-light">Closed</h6>
            <p class="mb-1">Sunday</p>
            <h6 class="text-light">Closed</h6>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer End -->

    <!-- Copyright Start -->
    <div class="container-fluid bg-secondary text-body copyright py-4">
      <div class="container">
        <div class="row">
          <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
            &copy; <a class="fw-semi-bold" href="#">WYC - Turning to Farm</a>,
            All Right Reserved.
          </div>
          <div class="col-md-6 text-center text-md-end">
            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
            Designed By
            <a class="fw-semi-bold" href="https://github.com/Sanghokim91/WYC"
              >Team WYC</a
            >
          </div>
        </div>
      </div>
    </div>
    <!-- Copyright End -->

    <!-- Back to Top -->
    <a
      href="#"
      class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/wow/wow.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="../lib/counterup/counterup.min.js"></script>
    <script src="../lib/parallax/parallax.min.js"></script>
    <script src="../lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="../js/serviceProfit.js"></script>
    <script src="../js/chart_bar.js"></script>
  </body>
</html>
