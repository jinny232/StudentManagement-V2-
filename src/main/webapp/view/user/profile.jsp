<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,model.UserDAOAccess" %>

<% User user = new UserDAOAccess().detail(7); %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" href="colorlib-regform-7/images/icon.png" type="image/png">

    <title>Profile Update</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

  <!-- Icon Font Stylesheet -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
 

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>

body{
background-color:#e8f2f7;
color:#69707a;
}
.img-account-profile {
    height: 10rem;
}
.rounded-circle {
    border-radius: 50% !important;
}
.card {
    box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
}
.card .card-header {
    font-weight: 500;
}
.card-header:first-child {
    border-radius: 0.35rem 0.35rem 0 0;
}
.card-header {
    padding: 1rem 1.35rem;
    margin-bottom: 0;
    background-color: rgba(33, 40, 50, 0.03);
    border-bottom: 1px solid rgba(33, 40, 50, 0.125);
}
.form-control, .dataTable-input {
    display: block;
    width: 100%;
    padding: 0.875rem 1.125rem;
    font-size: 0.875rem;
    font-weight: 400;
    line-height: 1;
    color: #69707a;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #c5ccd6;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0.35rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.row{
    margin: 0 auto;
}
    </style>
</head>

<body>

      <!-- Sidebar Start -->
    <div class="sidebar pe-6 pb-3">
        <div style="width:200px;height:55px;"><img src="img/logo1.png" style="width:100%;height:100%;object-fit: contain;"alt=""></div>
    <nav class="navbar navbar">
              <div class="d-flex align-items-center ms-4 mb-4">
                <div class="position-relative">
                   <a href="profile.jsp"> <img class="rounded-circle" src="../../upload_images/<%=user.getProfile()%>" alt="" style="width: 40px; height: 40px;"></a>
                    <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                </div>
                <div class="ms-3">
                    <h5 class="text-secondary fw-normal mb-0"><%=user.getName() %></h5>
                </div>
            </div>
                <div class="navbar-nav w-100">
                  <a href="profile.jsp" class="nav-item nav-link active" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><i class="fa fa-user me-2"></i>Profile</a>
                    <a href="notice_board.jsp" class="nav-item nav-link "><i class="fas fa-bullhorn fa-lg me-2"></i>Notice Board</a>
                    <a href="exam_result.jsp" class="nav-item nav-link"><i class="fas fa-newspaper me-2"></i>Exam Result</a>
                    
                    <a href="enrollment.jsp" class="nav-item nav-link "><i class="fas fa-graduation-cap me-2"></i>Enrollment</a>
                    <a href="schedule.jsp" class="nav-item nav-link"><i class="fas fa-file-alt me-2"></i>Schedule</a>
                    <a href="aboutus.jsp" class="nav-item nav-link "><i class="fas fa-graduation-cap me-2"></i>About Us</a>

                </div>
          </nav>
      </div>
      <!-- Sidebar End -->
  
  
          <!-- Content Start -->
          <div class="content">
              <!-- Navbar Start -->
              <nav class="navbar navbar-expand bg-info navbar-dark sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-secondary mb-0"><i class="fa fa-user"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler text-info flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    </form>
                <div class="navbar-nav align-items-center ms-auto">
                 <div class="nav-item">
                   
                </div>
                  <div class="nav-item">
                  
                </div>
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
    <div class="profile_content">
     <div class="mt-2 ">
        <div class="row justify-content-center" >
            <div class="col">
              <form action="/ucs_iconic_system/UserController" method="post" enctype="multipart/form-data" id="profile_edit_form">
                <!-- Profile picture card-->
                <div class="card  position-relative">
                    <div class="card-header">Profile Picture</div>
                    <div class="card-body text-center position-relative" >
                        <!-- Profile picture image-->
                        <img class="img-account-profile rounded-circle mb-2" src="../../upload_images/<%=user.getProfile() %>" style="object-fit:cover" alt="">
                        
                          <a style="position:relative">
                          <i class="fas fa-camera text-info bg-light rounded-circle p-2 position-absolute" style="margin-top: 128px; margin-left: -45px; font-size: large;">
                          </i>
                          <input type="file" name="image" style="opacity:0;z-index:10;margin-top: 128px; margin-left: -45px; width:50px">
                     
                          </a>
                           
                       

                        
                        
                        <!-- Profile picture help block-->
                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                    </div>
                </div>
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                            <input type="text" name="action" value="edit" style="display:none">
                            <input type="text" name="id" value="<%=user.getId() %>" style="display:none">
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1 " for="inputUsername">Name</label>
                                <input class="form-control bg-white" id="name" type="text" name="name" value="<%=user.getName() %>">
                            </div> 
                            <!-- Form Group (email address)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                <input class="form-control bg-white" id="inputEmailAddress" type="email" name="email" readonly value="<%=user.getEmail() %>">
                            </div>
                            <!-- Form Row-->
                          
                                <!-- Form Group (birthday)-->
                                                     
                            <!-- Form Row-->
                          
                                <!-- Form Group (location)-->
                              
                        <div class="mb-3">
                                    <label class="small mb-1" for="inputBirthday">Current Password</label>
                                   <input class="form-control bg-white" id="password" type="password" name="password"   placeholder="Enter your new password">
                           </div>
                            <div class="mb-3">
                                <label class="small mb-1" for="inputBirthday">New Password</label>
                                <input class="form-control bg-white" id="" type="password" name="new_password" placeholder="Enter your new password">
                        </div>    
                            <!-- Save changes button-->
                            <button class="btn btn-info" type="submit">Save changes</button>
                        </form>
                    </div>
                </div>
            </div>
          </div>
         </div> 
     </div>
    </div>



    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
       <script>
      $("#profile_edit_form").on("submit",function(e){
    	  e.preventDefault();
    	  var $form = $(e.target);
    	  
    	  var formData=new FormData($form[0]);
    	  $.ajax({
    		  url:"/ucs_iconic_system/UserController",
    		  type:"POST",
    		  data:formData,
    		  processData:false,
    		  contentType:false,
    		  successs:function(response){
    			  
    			  response = JSON.parse(response);
    			  console.log(response)
    		  }
    	  })
      })
      
       </script>
       
       
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


    	    // Progress Bar
    	   


    	    // Calender
    	  

    	    // Testimonials carousel
    	    $(".testimonial-carousel").owlCarousel({
    	        autoplay: true,
    	        smartSpeed: 1000,
    	        items: 1,
    	        dots: true,
    	        loop: true,
    	        nav : false
    	    });


    	    // Chart Global Color
    	    Chart.defaults.color = "#6C7293";
    	    Chart.defaults.borderColor = "#000000";


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