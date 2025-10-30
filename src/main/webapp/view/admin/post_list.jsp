<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="icon" href="colorlib-regform-7/images/icon.png" type="image/png">

    <title>Post List</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/noframework.waypoints.min.js" integrity="sha512-fHXRw0CXruAoINU11+hgqYvY/PcsOWzmj0QmcSOtjlJcqITbPyypc8cYpidjPurWpCnlB8VKfRwx6PIpASCUkQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Template Stylesheet -->
    <link href="css/feed.css" rel="stylesheet">
    <style>
       table .img{
        width: 30px;
        height: 30px;
        }
        .navbar-nav i{
            color:#28a3d7;
        }
    </style>
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
      <!-- Sidebar Start -->
      <div class="sidebar pe-4 pb-3">
        <nav class="navbar bg-white navbar-dark">
          <div style="width:200px;height:55px;"><img src="./colorlib-regform-7/images/logo1.png" style="width:100%;height:100%;object-fit: contain;"alt=""></div>
          <nav class="navbar navbar">
            <div class="d-flex align-items-center ms-4 mb-2">
                <div class="position-relative">
                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                    <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                </div>
                <div class="ms-3">
                    <h6 class="text-secondary mb-0">Sai Sai</h6>
                    <span>Admin</span>
                </div>
            </div>
        </nav>
            <div class="navbar-nav w-100">
              <a href="dashboard.jsp" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a> 
              <a href="announcement.html" class="nav-item nav-link"><i class="fas fa-bullhorn me-2"></i>Announcement</a>
              <a href="userlist.jsp" class="nav-link "><i class="fa fa-laptop me-2"></i>Users List</a>
               <a href="post_list.jsp" class="nav-item nav-link active"><i class="fa fa-upload me-2" style="background-color: #0dcaf0;"></i>Post Lists</a>
               <a href="club_dashboard.html" class="nav-item nav-link"><i class="fa fa-users me-2"></i>Clubs List</a>
              <a href="scholarship_dashboard.html" class="nav-item nav-link"><i class="fa fa-graduation-cap me-2"></i>Scholarship List</a>
             <a href="library_dashboard.html" class="nav-item nav-link"><i class="fa fa-book me-2"></i>Library List</a>
              <a href="template_dashboard.html" class="nav-item nav-link"><i class="fa fa-file-alt me-2"></i>Template List</a>                    
              <a href="admin_login.html" class="nav-item nav-link"><i class="fas fa-sign-in-alt me-2"></i>Logout</a>
          </div>
        </nav>
    </div>
    <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-info navbar-dark sticky-top px-4 py-0">
             
              <a href="#" class="sidebar-toggler text-white flex-shrink-0" style="background-color: #0dcaf0;">
                  <i class="fa fa-bars"></i>
              </a>
              <form class="d-none d-md-flex ms-4">
                  <input class="form-control bg-white border-0" type="search" placeholder="Search">
              </form>
              <div class="navbar-nav align-items-center ms-auto">
                  <div class="nav-item dropdown">
                      <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">
                          <i class=" nav-link fa fa-bell me-lg-2"></i>
                          <span class="d-none d-lg-inline-flex text-white">Notification</span>
                      </a>
                      <div class="dropdown-menu dropdown-menu-end bg-white border-0 rounded-0 rounded-bottom m-0">
                          <a href="#" class="dropdown-item">
                              <h6 class="text-secondary fw-normal mb-0">Profile updated</h6>
                              <small>1 minutes ago</small>
                          </a>
                          <hr class="dropdown-divider">
                          <a href="#" class="dropdown-item">
                              <h6 class="text-secondary fw-normal mb-0">New user added</h6>
                              <small>10 minutes ago</small>
                          </a>
                          <hr class="dropdown-divider">
                          <a href="#" class="dropdown-item">
                              <h6 class="text-secondary fw-normal mb-0">Password changed</h6>
                              <small>15 minutes ago</small>
                          </a>
                          <hr class="dropdown-divider">
                          <a href="#" class="dropdown-item text-center">See all notifications</a>
                      </div>
                  </div>
                 
                
              </div>
          </nav>
          <!-- Navbar End -->


            <!-- Table Start -->
         
        <div class="container-fluid pt-4 px-4">
          <div class="d-flex justify-content-between position-relative">
            <h3 class=" col text-info mb-10">Post Lists</h3>
            <div col="8">
                <input type="date" class="form-control bg-white"  style="width:80%"> <i class="fa fa-filter " style="position:absolute;top:8px;font-size:20px;right:0;cursor:pointer"></i>
            </div>
           </div>
           <div class="bg-white text-center rounded pt-2 px-1 mt-3"  style="overflow: hidden;">
            <div class="row g-4">
                            <div class="table-responsive text-nowrap ">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">Uid</th>
                                    <th scope="col">Profile</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Caption</th>
                                    <th scope="col">Time</th>
                                    <th scope="col">Viewers</th>
                                    <th scope="col">Likes</th>
                                    <th scope="col">Comments</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">004</th>
                                    <td><img src="feed_image/p7.jpeg" alt="User Avatar" class="avatar"></td>
                                    <td>Moe Satt Pwint</td>
                                    <td> function()</td>
                                    <td>17.6.2023</td>
                                    <td>25</td>
                                    <td>5</td>
                                    <td>8</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal" class="me-2" style="color: black;"><i class="fa fa-info-circle text-light"></i></a> 
                                      <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                        <i class="fa fa-trash"></i>
                                    </a></td>
                                </tr>
                                <tr>
                                    <th scope="row">002</th>
                                    <td><img src="feed_image/p9.jpeg" alt="User Avatar" class="avatar"></td>
                                    <td>Thet Paing Phyo</td>
                                    <td>I hope u get good idea</td>
                                    <td>2.6.2023</td>
                                    <td>55</td>
                                    <td>8</td>
                                    <td>5</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal11" class="me-2" style="color: black;"><i class="fa fa-info-circle text-light"></i></a> 
                                      <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                        <i class="fa fa-trash"></i>
                                    </a></td>
                                   </tr>
                                <tr>
                                  <th scope="row">004</th>
                                  <td><img src="feed_image/p7.jpeg" alt="User Avatar" class="avatar"></td>
                                  <td>Moe Satt Pwint</td>
                                  <td>it's ur choice!</td>
                                  <td>8.7.2023</td>
                                  <td>33</td>
                                  <td>5</td>
                                  <td>8</td>
                                  <td><a data-bs-toggle="modal" data-bs-target="#exampleModal12" class="me-2"><i class="fa fa-info-circle text-light"></i></a>
                                    <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                      <i class="fa fa-trash"></i>
                                  </a></td>
                              </tr>
                                <tr>
                                    <th scope="row">003</th>
                                    <td><img src="feed_image/p11.jpeg" alt="User Avatar" class="avatar"></td>
                                    <td>Thu Htoo San</td>
                                    <td>what amazing it is!</td>
                                    <td>28.6.2023</td>
                                    <td>45</td>
                                    <td>5</td>
                                    <td>8</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal13" class="me-2"><i class="fa fa-info-circle text-light"></i></a>
                                      <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                        <i class="fa fa-trash"></i>
                                    </a></td>
                                </tr>
                                <tr>
                                    <th scope="row">001</th>
                                    <td><img src="assets/images/gallery/shen.jpg" alt="User Avatar" class="avatar"></td>
                                    <td>April Moe</td>
                                    <td>how could be!</td>
                                    <td>9.7.2023</td>
                                    <td>41</td>
                                    <td>5</td>
                                    <td>8</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal14" class="me-2"><i class="fa fa-info-circle text-light"></i></a>
                                      <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                      <i class="fa fa-trash"></i>
                                  </a></td>
                                </tr>
                                <tr>
                                    <th scope="row">005</th>
                                    <td><img src="feed_image/p10.jpeg" alt="User Avatar" class="avatar"></td>
                                    <td>Ain Jinn Moe</td>
                                    <td>just like real ##</td>
                                    <td>12.6.2023</td>
                                    <td>20</td>
                                    <td>7</td>
                                    <td>5</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal15" class="me-2"><i class="fa fa-info-circle text-light"></i></a> <i class="fa fa-trash"></i></td>
                                </tr>
                                <tr>
                                    <th scope="row">006</th>
                                    <td><img src="feed_image/p10.jpeg" alt="User Avatar" class="avatar"></td>
                                    <td>May Yadanar Bo</td>
                                    <td>Scholarship for u</td>
                                    <td>7.6.2023</td>
                                    <td>55</td>
                                    <td>5</td>
                                    <td>8</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal16" class="me-2"><i class="fa fa-info-circle text-light"></i></a> 
                                      <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                        <i class="fa fa-trash"></i>
                                    </a></td>
                                </tr>
                                <tr>
                                    <th scope="row">007</th>
                                    <td><img src="feed_image/p1.jpeg" alt="User Avatar" class="avatar"></td>
                                    <td>Yoon Thandar Zaw</td>
                                    <td>for ur goal</td>
                                    <td>25.7.2023</td>
                                    <td>10</td>
                                    <td>5</td>
                                    <td>8</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal17" class="me-2"><i class="fa fa-info-circle text-light"></i></a>
                                      <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                        <i class="fa fa-trash"></i>
                                    </a></td>
                                </tr>
                                <tr>
                                    <th scope="row">008</th>
                                    <td><img src="assets/images/gallery/gallery_02.jpg" alt="User Avatar" class="avatar"></td>
                                    <td>Khin Myo Thiri</td>
                                    <td>Everyone!It's my birthday</td>
                                    <td>9.6.2023</td>
                                    <td>43</td>
                                    <td>6</td>
                                    <td>10</td>
                                    <td><a data-bs-toggle="modal" data-bs-target="#exampleModal18" class="me-2"><i class="fa fa-info-circle text-light"></i></a>
                                      <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                  </td>
                                </tr>
                                <tr>
                                  <th scope="row">002</th>
                                  <td><img src="feed_image/p11.jpeg" alt="User Avatar" class="avatar"></td>
                                  <td>Thu Htoo San</td>
                                  <td>oh ! pretty cool</td>
                                  <td>19.7.2023</td>
                                  <td>21</td>
                                  <td>5</td>
                                  <td>8</td>
                                  <td><a data-bs-toggle="modal" data-bs-target="#exampleModal" class="me-2"><i class="fa fa-info-circle text-light"></i></a>
                                    <a class="delete-icon" data-bs-toggle="modal" data-bs-target="#deleteModal" style="color: black;">
                                      <i class="fa fa-trash"></i>
                                  </a></td>
                              </tr>
                            </tbody>
                        </table>
                    </div>
            </div>
            </div>
        <!-- Content End -->

        <div class="d-flex justify-content-center mt-3 black">
          <nav aria-label="Page navigation example">
            <ul class="pagination text-info">
              <li class="page-item">
                <a class="page-link " href="#" aria-label="Previous">
                  <span aria-hidden="true" class="text-light">&laquo;</span>
                  <span class="sr-only">Previous</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link text-light" href="#" >1</a></li>
              <li class="page-item"><a class="page-link text-light" href="#" >2</a></li>
              <li class="page-item"><a class="page-link text-light" href="#" >3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true" class="text-light">&raquo;</span>
                  <span class="sr-only">Next</span>
                </a>
              </li>
            </ul>
          </nav>
        </div>



<div class="modal fade" id="exampleModal" tabindex="1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog  modal-lg">
    <div class="modal-content p-3">
      <div class="modal-header">
        <h1 class="modal-title fs-5 text-light fw-normal" id="exampleModalLabel"> Moe's post</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body overflow-auto" style="height:70vh">
        <div class="comment-header">
          <div class="comment">
            <div class="profile">
              <img src="feed_image/p7.jpeg" alt="User Avatar" class="avatar">
              <div class="user-info">
                <h3 class="username text-secondary">Moe Satt Pwint</h3>
                <span class="post-time">3 minutes ago</span>
              </div>
            </div>
            <p class="post-content">function()<br>
              <div class="row">
                <div class="column photo">
                  <img src="feed_image/p17.jpg" alt="Snow" style="width:100%; height: 100%;">
                </div>
                <div class="column photo">
                  <img src="feed_image/p18.jpg" alt="Forest" style="width:100%; height: 100%;">
                </div>
                <div class="column photo">
                  <img src="feed_image/p19.jpg" alt="Snow" style="width:100%; height: 100%;">
                </div>
                <div class="column photo">
                  <img src="feed_image/p20.jpg" alt="Forest" style="width:100%; height: 100%;">
                </div>
              </div>
            </p>
                <div class="post-actions">
                  <a class="like-button btn text-secondary"><i id="i-button" class="far fa-thumbs-up"></i></a>
                  <span class="like-count">like 5</span>
                  <a href="" class="comment-button btn text-secondary" id="post-comment-btn"><i id="i-button" class="far fa-comment-alt"></i></a>
                  <span class="comment-count">comment 8</span>
                </div>
                </div> 
              </div><br>    
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModal12" tabindex="1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog  modal-lg">
    <div class="modal-content p-3">
      <div class="modal-header">
        <h1 class="modal-title fs-5 text-light fw-normal" id="exampleModalLabel"> Moe's post</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body overflow-auto" style="height:70vh">
        <div class="comment-header">
          <div class="comment">
            <div class="profile">
              <img src="feed_image/p7.jpeg" alt="User Avatar" class="avatar">
              <div class="user-info">
                <h3 class="username text-secondary">Moe Satt Pwint</h3>
                <span class="post-time">20 minutes ago</span>
              </div>
            </div>
            <p class="post-content">Hello World!<br><br>
              <img src="feed_image/p4.jpeg" alt="Photo" class="photo"><br><br>
            </p>
                <div class="post-actions">
                  <a class="like-button btn text-secondary"><i id="i-button" class="far fa-thumbs-up"></i></a>
                  <span class="like-count">like 5</span>
                  <a href="" class="comment-button btn text-secondary" id="post-comment-btn"><i id="i-button" class="far fa-comment-alt"></i></a>
                  <span class="comment-count">comment 8</span>
                </div>
                </div> 
              </div><br>    
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModal11" tabindex="1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog  modal-lg">
    <div class="modal-content p-3">
      <div class="modal-header">
        <h1 class="modal-title fs-5 text-light fw-normal" id="exampleModalLabel"> Thet's post</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body overflow-auto" style="height:70vh">
        <div class="comment-header">
          <div class="comment">
            <div class="profile">
              <img src="feed_image/p9.jpeg" alt="User Avatar" class="avatar">
              <div class="user-info">
                <h3 class="username text-secondary">Thet Paing Phyo</h3>
                <span class="post-time">2 minutes ago</span>
              </div>
            </div>
            <p class="post-content">Hello Friends!<br><br>
              <div class="row">
              <img src="feed_image/p3.jpeg" alt="Photo" class="photo"><br><br>
              </div>
            </p>
                <div class="post-actions">
                  <a class="like-button btn me-2 text-secondary"><i id="i-button" class="far fa-thumbs-up"></i></a>
                  <span class="like-count">like 8</span>
                  <a href="" class="comment-button btn me-2 text-secondary" id="post-comment-btn"><i id="i-button" class="far fa-comment-alt"></i></a>
                  <span class="comment-count">comment 5</span>
                </div>
                </div> 
              </div><br>
      </div>
    </div>
  </div>
</div>    
    </div>

   <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <!-- Template Javascript -->
    <script >

    (function ($) {
        "use strict";

        // Spinner
        var spinner = function () {
            setTimeout(function () {
                if ($('#spinner').length > 0) {
                    $('#spinner').removeClass('show');
                }
            }, 1);
        };
        spinner();
        
        
        // Back to top button
        $(window).scroll(function () {
            if ($(this).scrollTop() > 300) {
                $('.back-to-top').fadeIn('slow');
            } else {
                $('.back-to-top').fadeOut('slow');
            }
        });
        $('.back-to-top').click(function () {
            $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
            return false;
        });


        // Sidebar Toggler
        $('.sidebar-toggler').click(function () {
            $('.sidebar, .content').toggleClass("open");
            return false;
        });






        // Chart Global Color



        // Worldwide Sales Chart
        var ctx1 = $("#worldwide-sales").get(0).getContext("2d");
        var myChart1 = new Chart(ctx1, {
            type: "bar",
            data: {
                labels: ["Jan", "Feb", "Mar", "Apr", "May", "June", "July"],
                datasets: [
                    {
                        label: "Newsfeed",
                        data: [12, 25, 45, 55, 65, 70, 60],
                        backgroundColor: "#1e90ff"
                    },
                    {
                        label: "Library",
                        data: [15, 30, 55, 65, 60, 80, 95],
                        backgroundColor: "#1560bd"
                    },
                    {
                        label: "Scholarship",
                        data: [8, 35, 40, 60, 70, 55, 75],
                        backgroundColor: "#0077b6"
                    },
                    {
                        label: "Template",
                        data: [12, 25, 45, 55, 65, 70, 60],
                        backgroundColor: "#023e8a"
                    },
                    {
                        label: "Clubs",
                        data: [12, 25, 45, 55, 65, 70, 60],
                        backgroundColor: "#00b4d8"
                    }
                ]
                },
            options: {
                responsive: true
            }
        });


        // Salse & Revenue Chart
        var ctx2 = $("#salse-revenue").get(0).getContext("2d");
        var myChart2 = new Chart(ctx2, {
            type: "line",
            data: {
                labels: ["2016", "2017", "2018", "2019", "2020", "2021", "2022"],
                datasets: [{
                        label: "Register Users",
                        data: [15, 30, 55, 45, 70, 65, 85],
                        backgroundColor: "#1e90ff",
                        fill: true
                    },
                    {
                        label: "Login Users",
                        data: [99, 135, 170, 130, 190, 180, 270],
                        backgroundColor: "#00b4d8",
                        fill: true
                    }
                ]
                },
            options: {
                responsive: true
            }
        });
        


        // Single Line Chart
        var ctx3 = $("#line-chart").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });


        // Single Bar Chart
        var ctx4 = $("#bar-chart").get(0).getContext("2d");
        var myChart4 = new Chart(ctx4, {
            type: "bar",
            data: {
                labels: ["Italy", "France", "Spain", "USA", "Argentina"],
                datasets: [{
                    backgroundColor: [
                        "rgba(235, 22, 22, .7)",
                        "rgba(235, 22, 22, .6)",
                        "rgba(235, 22, 22, .5)",
                        "rgba(235, 22, 22, .4)",
                        "rgba(235, 22, 22, .3)"
                    ],
                    data: [55, 49, 44, 24, 15]
                }]
            },
            options: {
                responsive: true
            }
        });


        // Pie Chart
        var ctx5 = $("#pie-chart").get(0).getContext("2d");
        var myChart5 = new Chart(ctx5, {
            type: "pie",
            data: {
                labels: ["Italy", "France", "Spain", "USA", "Argentina"],
                datasets: [{
                    backgroundColor: [
                        "rgba(235, 22, 22, .7)",
                        "rgba(235, 22, 22, .6)",
                        "rgba(235, 22, 22, .5)",
                        "rgba(235, 22, 22, .4)",
                        "rgba(235, 22, 22, .3)"
                    ],
                    data: [55, 49, 44, 24, 15]
                }]
            },
            options: {
                responsive: true
            }
        });


        // Doughnut Chart
        var ctx6 = $("#doughnut-chart").get(0).getContext("2d");
        var myChart6 = new Chart(ctx6, {
            type: "doughnut",
            data: {
                labels: ["Italy", "France", "Spain", "USA", "Argentina"],
                datasets: [{
                    backgroundColor: [
                        "rgba(235, 22, 22, .7)",
                        "rgba(235, 22, 22, .6)",
                        "rgba(235, 22, 22, .5)",
                        "rgba(235, 22, 22, .4)",
                        "rgba(235, 22, 22, .3)"
                    ],
                    data: [55, 49, 44, 24, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        
    })(jQuery);


      // Wait for the DOM to be fully loaded
      document.addEventListener('DOMContentLoaded', function () {
          const deleteButtons = document.querySelectorAll('.delete-icon');
  
          // Loop through each delete button and add a click event listener
          deleteButtons.forEach(button => {
              button.addEventListener('click', function () {
                  const row = this.closest('tr');
                  const rowIndex = row.rowIndex - 1; // Subtract 1 to account for header row
                  const confirmDeleteButton = document.getElementById('confirmDelete');
                  confirmDeleteButton.addEventListener('click', function () {
                      deleteRow(row, rowIndex);
                  });
              });
          });
  
          // Function to delete the row
          function deleteRow(row, rowIndex) {
              // Your delete row logic here
              // For example, you can use the rowIndex to identify the row and delete it from the table.
              // You may also want to show a confirmation dialog before actually deleting.
  
              // Once the row is deleted, you can close the modal
              const deleteModal = document.getElementById('deleteModal');
              const modal = bootstrap.Modal.getInstance(deleteModal);
              modal.hide();
  
              // Remove the row from the table
              row.remove();
          }
      });
  </script>
  
    <!-- Delete Confirmation Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h5 class="modal-title" id="deleteModalLabel" style="color:black">Confirm Deletion</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
              Are you sure you want to delete this post?
          </div>
          <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-danger" id="confirmDelete">Delete</button>
          </div>
      </div>
  </div>
</div>

</body>

</html>