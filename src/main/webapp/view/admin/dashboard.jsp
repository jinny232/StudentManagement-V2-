<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" href="colorlib-regform-7/images/icon.png" type="image/png">

    <title>Dashboard</title>
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

   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Template Stylesheet -->
    <link href="css/chat.css" rel="stylesheet">
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
                <div style="width:200px;height:55px;"><img src="img/logo1.png" style="width:100%;height:100%;object-fit: contain;"alt=""></div>
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
                    <a href="dashboard.jsp" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"  style="background-color: #0dcaf0;"></i>Dashboard</a> 
                    <a href="announcement.html" class="nav-item nav-link"><i class="fas fa-bullhorn me-2"></i>Announcement</a>
                    <a href="userlist.jsp" class="nav-link "><i class="fa fa-laptop me-2"></i>Users List</a>
                     <a href="post_list.jsp" class="nav-item nav-link"><i class="fa fa-upload me-2"></i>Post Lists</a>
                     <a href="club_dashboard.html" class="nav-item nav-link"><i class="fa fa-users me-2"></i>Clubs List</a>
                    <a href="scholarship_dashboard.html" class="nav-item nav-link"><i class="fa fa-graduation-cap me-2"></i>Scholarship List</a>
                   <a href="library_dashboard.html" class="nav-item nav-link"><i class="fa fa-book me-2"></i>Library List</a>
                    <a href="template_dashboard.html" class="nav-item nav-link "><i class="fa fa-file-alt me-2"></i>Template List</a>                    
                    <a href="admin_login.html" class="nav-item nav-link"><i class="fas fa-sign-in-alt me-2"></i>Logout</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content overflow-auto" style="height:100vh; background-color: #e8f2f7;">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-info navbar-dark sticky-top px-4 py-0">
               
                <a href="#" class="sidebar-toggler text-white flex-shrink-0">
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


            <!-- Sale & Revenue Start -->
            <div class="container-fluid pt-4 px-4 position-relative" >
                <div class="row g-4 overflow-auto position-relative">
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-info rounded  d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-line fa-3x text-white"></i>
                            <div class="ms-3">
                                <p class="text-white mb-2">Today Posts</p>
                                <h6 class="text-white mb-0">35</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-info  rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-bar fa-3x text-white"></i>
                            <div class="ms-3">
                                <p class="text-white mb-2">Total Posts</p>
                                <h6 class="text-white mb-0">112</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-info rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-area fa-3x text-white"></i>
                            <div class="ms-3">
                                <p class="text-white mb-2">Total Users</p>
                                <h6 class="text-white mb-0">127</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-info rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-pie fa-3x text-white"></i>
                            <div class="ms-3">
                                <p class="text-white mb-2">Total Clubs</p>
                                <h6 class="text-white mb-0">6</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sale & Revenue End -->


            <!-- Sales Chart Start -->
            <div class="container-fluid pt-4 px-4 overflow-auto">
                <div class="row g-4 position-relative " >
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-white text-center rounded p-4">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h6 class="text-secondary mb-0">Posts</h6>
                                <a href="post_list.html" class="text-info">Show All</a>
                            </div>
                            <canvas id="worldwide-sales"></canvas>
                        </div>
                    </div>
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-white text-center rounded p-4">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h6 class="text-secondary mb-0">Users</h6>
                                <a href="user_list.html" class="text-info">Show All</a>
                            </div>
                            <canvas id="salse-revenue"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 p-3 position-relative"> 
              <table class="table rounded-3">
                <thead>
                    <th>Name</th>
                    <th>Profile</th>
                    <th>Email</th>
                    <th>Posts</th>
                     <th>Library</th>
                     <th>Template</th>
                     <th>Scholorship</th>
                </thead>
                <tbody>
                <tr>
                    <td>Thet Paing Phyo</td>
                    <td><img class="rounded-circle" src="img/user.jpg" alt="" style="width: 50px; height: 50px;"></td>
                    <td>thetpaing@gmail.com</td>
                    <td>13</td>
                    <td>3</td>
                    <td>3</td>  
                    <td>2 </td>   
                </tr>     
             
             
                      
                </tbody>
              </table>
           </div>
        </div>
        <!-- Content End -->
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


    <!-- Template Javascript -->
  <script>
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


</script>
</body>

</html>