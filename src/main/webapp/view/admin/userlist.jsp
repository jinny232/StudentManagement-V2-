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

    <style>
       .avatar {
    width: 40px;
    height: 40px;
    border-radius: 100%;
    margin-right: 10px;
  }
      .crud_button {
          display: flex;
          justify-content: space-between;
          margin: 20px;
      }

      .action-button {
          background-color: #90c3fa;
          color: rgb(3, 3, 3);
          border: none;
          border-radius: 5px;
          padding: 10px 15px;
          margin: 5px;
          cursor: pointer;
          transition: background-color 0.3s;
      }

      .action-button:hover {
          background-color: #94e6f8;
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
                    <a href="dashboard.jsp" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a> 
                    <a href="announcement.html" class="nav-item nav-link"><i class="fas fa-bullhorn me-2"></i>Announcement</a>
                    <a href="userlist.jsp" class="nav-link active"><i class="fa fa-laptop me-2"  style="background-color: #0dcaf0;"></i>Users List</a>
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
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-info navbar-dark sticky-top px-4 py-0">
                
                <a href="#" class="sidebar-toggler text-white flex-shrink-0" style="background-color: #0dcaf0;">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control bg-white border-0" type="text" id="search_box" name="search_box" placeholder="Search">
                </form>
         
                <div class="navbar-nav align-items-center ms-auto">
                   <a href="upload_image.jsp" class=" text-white flex-shrink-0" style="background-color: #0dcaf0;">
                    <i class="fa fa-upload"></i>
                </a>
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
              <div class="crud_button">
                <h3 class="text-info">Users List</h3>
              
                <button type="button" class="action-button btn" data-bs-toggle="modal"  data-bs-target="#addNewUser"><i class="fas fa-plus"></i> Add New Users</button>
            </div>

            

        <div id="registerContent" >
          <div class="bg-white  rounded pt-4 px-2">
            <div class="row g-4">
                <div class="col-12">
                    <div class="table-responsive text-nowrap">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Profile</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                   <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                              <%
                               List<User> users  = new UserDAOAccess().index();
                              int  i= 0;
                              for(User user:users){
                              
                            	  %>
                            	  <tr>
                            	  <td><%=++i %></td>
                            	  <td><img src="img/user.jpg" style="width:50px;height:50px;object-fit:cover"></td>
                            	  <td><%=user.getName() %></td>
                            	  <td><%=user.getEmail() %></td>
                            	  <td><a  data-bs-toggle="modal"  data-bs-target="#user_edit<%=user.getId()%>"><i class="fa fa-edit  me-2"></i></a>
                                     <a   data-bs-toggle="modal"  data-bs-target="#user_delete<%=user.getId() %>"><i class="fa fa-trash  delete-icon"></i></a>
                                   </td>
                            
                            	  </tr>
                            	  
         <div style="margin-top: 100px" class="modal fade" id="user_edit<%=user.getId() %>" tabindex="-1" aria-labelledby="addNewCategory" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title text-info fs-5" id="">Edit User</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <form action="/ucs_iconic_system/UserController"  method="post" class="user_edit_form">
                  <div class="mb-4 mt-2 form-group">
                    <label for="formGroupExampleInput" class="form-label text-secondary fw-normal">Name</label>
                    <input type="text" placeholder="Enter username" class="bg-white form-control btn-outline-info" value="<%=user.getName() %>" name="name" />
                  </div>
                   <div class="mb-4 mt-2 form-group" style="display:none">
                    <label for="formGroupExampleInput" class="form-label text-secondary fw-normal">ID</label>
                    <input type="text" class="bg-white form-control btn-outline-info" value="<%=user.getId() %>" name="id" />
                  </div>
                   <div class="mb-4 mt-2 form-group" style="display:none">
                    <label for="formGroupExampleInput" class="form-label text-secondary fw-normal">Action</label>
                    <input type="text" class="bg-white form-control btn-outline-info" value="update" name="action" />
                  </div>
                  <div class="mb-4 form-group">
                    <label for="formGroupExampleInput" class="form-label text-secondary fw-normal">Email</label>
                    <input  type="email"  class="form-control bg-white form-floating btn-outline-info" value="<%=user.getEmail() %>" name="email"/>
                  </div>
                   <input type="text" name="action" value="store" style="display:none">
                  <button  type="button"  class="btn btn-light"  data-bs-dismiss="modal">Cancel</button>
                  <button type="submit" class="btn btn-info" data-bs-dismiss="modal" >Save</button>
                </form>
              </div>
            </div>
          </div>
        </div>  
        
        
                                    	  
         <div style="margin-top: 100px" class="modal fade" id="user_delete<%=user.getId() %>" tabindex="-1" aria-labelledby="addNewCategory" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title text-info fs-5" id="">Delete User</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                Are you sure to delete?
              </div>
              <div class="modal-footer">
               <button class="btn btn-info"  type="button" data-bs-dismiss="modal" >cancel</button>
               <button class="btn btn-info delete_btn" type="button" value="<%=user.getId()%>"  data-bs-dismiss="modal">delete</button>
              </div>
            </div>
          </div>
        </div>  
        
                            	  
                            	  
                              <%
                            	  
                              }
                              %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
    </div>
</div>
</div>

        <!-- Content End -->

       
        <div style="margin-top: 100px" class="modal fade" id="addNewUser" tabindex="-1" aria-labelledby="addNewCategory" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title text-info fs-5" id="exampleModalLabel">Create User</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <form action="/ucs_iconic_system/UserController" class="" method="post" id="user_add_form">
                  <div class="mb-4 mt-2 form-group">
                    <label for="formGroupExampleInput" class="form-label text-secondary fw-normal">Name</label>
                    <input type="text" placeholder="Enter username" class="bg-white form-control btn-outline-info" value="" name="name" />
                  </div>
                  <div class="mb-4 form-group">
                    <label for="formGroupExampleInput" class="form-label text-secondary fw-normal">Email</label>
                    <input  type="email"  class="form-control bg-white form-floating btn-outline-info"  placeholder="Enter email" name="email"/>
                  </div>
                   <input type="text" name="action" value="store" style="display:none">
                  <button  type="button"  class="btn btn-light"  data-bs-dismiss="modal">Cancel</button>
                  <button type="submit" class="btn btn-info"  data-bs-dismiss="modal">Save</button>
                </form>
              </div>
            </div>
          </div>
        </div>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   
   <script>
$(".delete_btn").on("click",function(e){
	 let id=$(this).val();
	 $.ajax({
         url: "/ucs_iconic_system/UserController",
         type: "POST",
         data:{
       	  action:"delete",
       	  id
         },
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
	   
})

   $("#search_box").on("keypress",function(e){
          
	   if(e.key==="Enter"){
		   e.preventDefault();
		   console.log($(this).val())
		  let key_word = $(this).val();
		  $.ajax({
	          url: "/ucs_iconic_system/UserController",
	          type: "POST",
	          data:{
	        	  action:"search",
	        	  keyword:key_word
	          },
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
	                                <td><a  data-bs-toggle="modal"  data-bs-target="#user_edit`+user.id+`"><i class="fa fa-edit  me-2"></i></a>
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
	   }
	   
   });

 
   $("#user_add_form").submit(function(e){
	  e.preventDefault();
	  var formData  = $(this).serialize();
	  $.ajax({
          url: "/ucs_iconic_system/UserController",
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