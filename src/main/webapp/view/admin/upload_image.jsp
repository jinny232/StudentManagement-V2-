<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*,model.User,model.UserDAOAccess" %>
  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" href="colorlib-regform-7/images/icon.png" type="image/png">

    <title>Users</title>
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
    <link href="css/feed.css" rel="stylesheet">
</head>
<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Sidebar Start -->
    <div class="sidebar pe-6 pb-3">
        <div style="width:200px;height:60px;"><img src="img/logo1.png" style="width:100%;height:100%;object-fit: contain;"alt=""></div>
        <nav class="navbar navbar">
              <div class="d-flex align-items-center ms-4 mb-4">
                <div class="position-relative">
                   <a href="profile.html"> <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;"></a>
                    <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                </div>
                <div class="ms-3">
                    <h4 class="text-secondary fw-normal mb-0">April Moe</h4>
                </div>
            </div>
              <div class="navbar-nav w-100">
                <a href="info.html" class="nav-item nav-link"><i class="fa fa-user me-2"></i>Profile</a>
                  <a href="announcement_user.html" class="nav-item nav-link"><i class="fas fa-bullhorn fa-lg me-2"></i>Announcement</a>
                  <a href="newsfeed.html" class="nav-item nav-link"><i class="fas fa-newspaper me-2"></i>NewsFeed</a>
                  <a href="Scholarship.html" class="nav-item nav-link"><i class="fas fa-graduation-cap me-2"></i>Scholarship</a>
                  <a href="template.html" class="nav-item nav-link"><i class="fas fa-file-alt me-2"></i>Template</a>
                  <a href="library-html.html" class="nav-item nav-link"><i class="fas fa-book me-2"></i>Library</a>
                  <div class="nav-item dropdown">
                    <a href="#" class="nav-item nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fas fa-users me-2"></i>Club</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="club.html" class="dropdown-item"><i class="fas fa-user-friends me-2"></i>Club</a>
                        <a href="club-posts.html" class="dropdown-item"><i class="fas fa-user-check me-2"></i>Joined Club</a>
                        <a href="club-create.html" class="dropdown-item"><i class="fas fa-user-edit me-2"></i>Create Club</a>
                    </div>
                </div>   
                  <a href="user_login.html" class="nav-item nav-link"><i class="fas fa-sign-in-alt me-2"></i>Logout</a>
              </div>
          </nav>
      </div>
      <!-- Sidebar End -->
  
  
          <!-- Content Start -->
          <div class="content">
              <!-- Navbar Start -->
              <nav class="navbar navbar-expand bg-info navbar-dark sticky-top px-4 py-0">
               
                <a href="#" class="sidebar-toggler text-white flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control bg-white btn-outline-info border-0" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                  <div class="nav-item">
                    <a href="post_form.html" class="nav-link">
                        <i class="fa fa-upload me-lg-2"></i>
                        <span class="d-none d-lg-inline-flex text-white">Post</span>
                    </a>
                </div>
                  <div class="nav-item">
                    <a href="chatpage.html" class="nav-link">
                        <i class="fa fa-envelope me-lg-2"></i>
                        <span class="d-none d-lg-inline-flex text-white">Message</span>
                    </a>
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


            <!-- Form Start -->
            <div class="container-fluid pt-4 px-4 " style="background-color:#e8f2f7;">
                <div class="row g-4 overflow-auto position-relative" style="height:90vh;" >
                    <div class="col-sm-12 col-xl-12">
                        <div class=" bg-white rounded p-1">
                           <div style="width:30%;height:50px">
                            <img src="img/logo1.png" alt="" style="width:50%;height:50px;object-fit: contain;">
                           </div>
                            <form action="/ucs_iconic_system/PostController" method="post" enctype="multipart/form-data">
                                <div class="mb-3">

                                    <input type="text" name="title" style="width:90%;height:200px; border:0;outline:none;padding:20px;" placeholder="Type Here For Something what you want to share..   " class="bg-white" id="exampleInputEmail1"
                                       aria-describedby="emailHelp">
                                   
                                </div>
                                                              
                                <div class="mt- form-check mb-5">
                                
                                    <button class="btn btn-sm me-3" type="button">
                                        <input type="file" style="width:30px;position:absolute;opacity: 0;" name="image" >
                                      <i class="fa fa-images  text-#fff"  style="font-size:20px;color:rgb(103, 59, 173)" ></i>
                                    </button>
                               
                                    
                                </div>
                                <div class="mb-3">
                                    <select name="category" style="border:none;outline:none;color:rgb(90, 140, 233)" class="form-select-md bg-white" id="category">
                                        <option value="">Choose Category</option>
                                        <option value="notice_board">Notice Board</option>
                                        <option value="schedule">Schedule</option>
                                        <option value="result">Result</option>
                                        
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-info offset-2 text-white">POST <i class="fa fa-upload text-white"></i></button>
                            </form>
                        </div>
                    </div>
                   
                    </div>
                    </div>
            <!-- Form End -->

        </div>
        <!-- Content End -->
        </div>

        
                            	  
                            	  
                           
  
        <!-- Content End -->

       
      
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   
   <script>

 
   $("#user_add_form").submit(function(e){
	  e.preventDefault();
	  var formData  = $(this).serialize();
	  $.ajax({
          url: "/ucs_iconic/UserController",
          type: "POST",
          data:formData,
          success: function(response) {
        	  
             response= JSON.parse(response)
              console.log(response)
             
               $("tbody").html("")
               let i=0;
              response.users.forEach(user=>{
            	  console.log(user.name)
            	    $("tbody").append(`
            	    		 
                            <tr>
                                <th scope="row">`+(++i)+`</th>
                                <td><img src="img/user.jpg" alt="User Avatar" class="avatar"></td>
                                <td>`+user.name+`</td>
                                <td>`+user.email+`</td>
                                <td><a  data-bs-toggle="modal"  data-bs-target="#user_detail`+user.id+`"><i class="fa fa-edit  me-2"></i></a>
                                <a   data-bs-toggle="modal"  data-bs-target="#user_delete`+user.id+`"><i class="fa fa-trash  delete-icon"></i></a>
                              </td>
                       
                            </tr>
            	    		`);
              })
              
            
          },
          error: function() {
              $("#response").text("An error occurred.");
          }
      });
   });
   
   </script>

    <script>
        // Function to handle scholarship deletion

      
        // Attach event listeners to delete icons
      

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