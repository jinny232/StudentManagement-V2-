<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.PostDAOAccess,model.Post,java.util.*"	 %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" href="colorlib-regform-7/images/icon.png" type="image/png">

    <title>Announcement</title>
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
    
      .announcement-box {
              
              max-width: 80%;
              margin: 0 auto;
              padding: 20px;
              box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
              border-radius: 8px;
              border: 1px solid #ccc;
              background-color: #fff;
          }
  
          .post-author {
              font-size: 16px;
              color: #365899;
              font-weight: bold;
              margin-bottom: 5px;
          }
  
          .post-time {
              font-size: 14px;
              color: #888;
              margin-bottom: 15px;
          }
  
          .post-content {
              font-size: 18px;
              line-height: 1.6;
              color: #333;
              margin-bottom: 20px;
          }
  
          .post-actions {
              display: flex;
              align-items: center;
              justify-content: space-between;
              border-top: 1px solid #ccc;
              padding-top: 10px;
          }
          .custom-width {
          width: 100%; /* Adjust the width as needed */
          /* Add any other styling you want for the announcement boxes */
      }
      
    * {box-sizing: border-box}
    body {font-family: Verdana, sans-serif; margin:0}
    .mySlides {
      display: none;
    }
    .mySlides img {
          width: 70%;
          border: 1px solid #ccc; /* Add a border around the thumbnails */
          border-radius: 10px; /* Apply rounded corners to the thumbnails */
      height: 250px; /* Set the desired height for the images */
      object-position: center;
      object-fit: cover; /* Maintain aspect ratio and cover the entire cell */
      }
    
    /* Slideshow container */
    .slideshow-container {
      height: auto;
      position: relative;
      margin: auto;
    }
    
    /* Next & previous buttons */
    .prev, .next {
      cursor: pointer;
      position: absolute;
      top: 50%;
      width: auto;
      padding: 16px;
      margin-top: -22px;
      color: white;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      user-select: none;
    }
    
    /* Position the "next button" to the right */
    .next {
      right: 0;
      border-radius: 3px 0 0 3px;
    }
    
    /* On hover, add a black background color with a little bit see-through */
    .prev:hover, .next:hover {
      background-color: rgba(0,0,0,0.8);
    }
    
  
   
    
    /* The dots/bullets/indicators */
    .dot {
      cursor: pointer;
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbb;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.6s ease;
    }
    
    .active, .dot:hover {
      background-color: #717171;
    }
    
    /* Fading animation */
    .fade {
      animation-name: fade;
      animation-duration:6s;
    }
    
    @keyframes fade {
      from {opacity: .4} 
      to {opacity: 1}
    }
    
    /* On smaller screens, decrease text size */
    @media only screen and (max-width: 300px) {
      .prev, .next,.text {font-size: 11px}
    }
    .carousel-caption{
      color:#333;
      margin-bottom: 0%;
    }
    </style>
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Sidebar Start -->
        <div class="sidebar pe-6 pb-3">
          <div style="width:200px;height:55px;"><img src="img/logo1.png" style="width:100%;height:100%;object-fit: contain;"alt=""></div>
    
            <nav class="navbar navbar">
                <div class="d-flex align-items-center ms-4 mb-4">
                  <div class="position-relative">
                     <a href="profile.jsp"> <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;"></a>
                      <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                  </div>
                  <div class="ms-3">
                      <h4 class="text-secondary fw-normal mb-0">April Moe</h4>
                  </div>
              </div>
                <div class="navbar-nav w-100">
                  <a href="profile.jsp" class="nav-item nav-link"><i class="fa fa-user me-2"></i>Profile</a>
                    <a href="notice_board.jsp" class="nav-item nav-link active"style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><i class="fas fa-bullhorn fa-lg me-2"></i>Notice Board</a>
                    <a href="exam_result.jsp" class="nav-item nav-link"><i class="fas fa-newspaper me-2"></i>Exam Result</a>
                    
                    <a href="enrollment.jsp" class="nav-item nav-link "><i class="fas fa-graduation-cap me-2"></i>Enrollment</a>
                    <a href="schedule.jsp" class="nav-item nav-link"><i class="fas fa-file-alt me-2"></i>Schedule</a>
					<a href="aboutus.jsp" class="nav-item nav-link "><i class="fas fa-graduation-cap me-2"></i>About Us</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->
        <!-- Content Start -->
        <div class="content" style=" background-color: #e8f2f7;">
<!-- Navbar Start -->
<nav class="navbar navbar-expand bg-info navbar-dark sticky-top px-2 py-0">
              
  <a href="#" class="sidebar-toggler text-info flex-shrink-0">
      <i class="fa fa-bars" ></i>
  </a>
  <div class="d ms-4">
      <input class="form-control bg-white btn-outline-info border-0" type="text" id="search_box" placeholder="Search">
      
  </div>
  <div class="navbar-nav align-items-center ms-auto">
      <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">
              <i class=" nav-link fa fa-bell "></i>
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
<!-- announce Start -->
<div class="container mt-4 col-md-10 col-sm-10"  >
    <!-- Carousel Section -->
        <div class="slideshow-container"  style="border-radius: 2px;">
           <div class="mySlides fade">
               <img class="d-block w-100" src="img/user.jpg" alt="Announcement 1 Image">
                <div class="carousel-caption">
                  <h3 style="color: #333;">Exam Notice</h3>
                    <p>Examination will be begin starting from 25.9.2023</p>
                    <p>Released Date: 2023-07-30</p>
                </div>
            </div>

            <div class="mySlides fade">
                <img class="d-block w-100" src="img/user.jpg" alt="Announcement 2 Image">
                <div class="carousel-caption">
                  <h3 style="color: #333;">Project Presentation are going to start !</h3>
                    <p>Everyone project Presentation are coming soon br sure to complete your projects</p>
                    <p>Released Date: 2023-08-08</p>
                </div>
            </div>

            <div class="mySlides fade">
                <img class="d-block w-100" src="img/user.jpg" alt="Announcement 3 Image">
                <div class="carousel-caption">
                    <h3 style="color: #333;">School activity-Football match !</h3>
               
                  
                </div>
            </div>

            <div class="mySlides fade">
              <img class="d-block w-100" src="video/rule.png" alt="Announcement 4 video">
             </div>
            <!-- Add more carousel items for additional announcement posts -->
            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>
        </div>
        <br>
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span> 
          <span class="dot" onclick="currentSlide(2)"></span> 
          <span class="dot" onclick="currentSlide(3)"></span>
          <span class="dot" onclick="currentSlide(4)"></span>  
        </div>
        
    <!-- carousal end-->
</div>

<br>

<div id="post_container">

  <!--post start-->
   <% List<Post> posts = new PostDAOAccess().index();
     for(Post post : posts){
    	 String category = post.getCategory();
    	 String title = post.getTitle();
    	 String url = "../../upload_images/"+post.getImage();
    	 int id=  post.getId();
     if(category.equals("notice_board")){
    	 
    

    	%> 
    	<div class="announcement-box custom-width mt-2" >
        <div class="post-author">Admin</div>
        <div class="post-time">2 hours ago</div>
        <div class="post-content">
        
            <%=title %>
            <% 
            if(!url.equals("../../upload_images/null")){
            	%>
            <img src="<%=url %>" style="width:100%;height:200px;object-fit:cover">        
     	
            	<%
            }
            	
            	%>
               </div>
        <div class="post-actions">
           
           
        </div>
   </div>
    	
    <%
     }	
     }
   %>
 
 


<!--post end-->
<!-- announce End -->
</div>
        </div>
        <!-- Content End -->
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <!-- Template Javascript -->

 <script>
 $("#search_box").on("keypress",function(e){
	 if(e.key==="Enter"){
		 let keyword=$(this).val();
		 let action="search";
		 let category="notice_board";
		 $.ajax({
			 url:"/ucs_iconic_system/PostController",
			 type:"GET",
			 data:{keyword,
				   action,
				   category},
			 success:function(response){
				 response = JSON.parse(response);
				 console.log(response)
				 if(response.posts.length==0){
					 $("#post_container").html(`<div class="text-center"><h3>Nothing Searching</h3></div>`);
				 }else{ 
					 $("#post_container").html("");
					
					  response.posts.forEach(post=>{
						  
						  if(post.image!=="null"){
							  $("#post_container").append(`
										 
									    <div class="announcement-box custom-width mt-2" >
								        <div class="post-author">Admin</div>
								        <div class="post-time">2 hours ago</div>
								        <div class="post-content">
								        
								            `+ post.title +`
								          
								            <img src="../../upload_images/`+post.image+`" style="width:100%;height:200px;object-fit:cover">        
								     	
								               </div>
								        <div class="post-actions">
								           
								           
								        </div>
								   </div>	  
									  
							`);
						  }else{
							        $("#post_container").append(`
										 
									    <div class="announcement-box custom-width mt-2" >
								        <div class="post-author">Admin</div>
								        <div class="post-time">2 hours ago</div>
								        <div class="post-content">
								        
								            `+post.title+`
					     	
								               </div>
								        <div class="post-actions">
								           
								           
								        </div>
								   </div>	  
									  
							`);  
						  }
						  
						 
					  })
				 }
				 
			 }
		 })
	 }
 })
 </script>
    <script>
        let slideIndex = 1;
        showSlides(slideIndex);
      
        function plusSlides(n) {
          showSlides((slideIndex += n));
        }
      
        function currentSlide(n) {
          showSlides((slideIndex = n));
        }
      
        function showSlides(n) {
          let i;
          let slides = document.getElementsByClassName("mySlides");
          let dots = document.getElementsByClassName("dot");
          if (n > slides.length) {
            slideIndex = 1;
          }
          if (n < 1) {
            slideIndex = slides.length;
          }
          for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
          }
          for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex - 1].style.display = "block";
          dots[slideIndex - 1].className += " active";
        }
      
        let slideInterval;
      
        function startSlideshow() {
          showSlides(slideIndex);
          slideInterval = setInterval(() => {
            plusSlides(1);
          }, 6000); // Change this value to adjust the delay (in milliseconds)
        }
      
        function pauseSlideshow() {
          clearInterval(slideInterval);
        }
      
        document.querySelector(".prev").addEventListener("click", () => {
          pauseSlideshow();
          plusSlides(-1);
          startSlideshow();
        });
      
        document.querySelector(".next").addEventListener("click", () => {
          pauseSlideshow();
          plusSlides(1);
          startSlideshow();
        });
      
        startSlideshow();
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