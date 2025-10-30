package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Post;
import model.User;
import model.UserDAOAccess;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.PasswordAuthentication;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

import javax.mail.search.IntegerComparisonTerm;

import org.json.JSONObject;

/**
 * Servlet implementation class UserController
 */

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10,      // 10MB
maxRequestSize = 1024 * 1024 * 50) 
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action =request.getParameter("action");
		if(action.equals("login")) {
			User user =new User();
			user.setPassword(request.getParameter("password"));
			user.setEmail(request.getParameter("email"));
			try {
				String status =new UserDAOAccess().login(user);
				//response.getWriter().append(status);
				
			    JSONObject jsonObject = new JSONObject();
			    if(status.equals("200"))
				jsonObject.put("status","200");
			    else
			    	jsonObject.put("status","300");
				response.getWriter().write(jsonObject.toString());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//doGet(request, response);
		if(action.equals("store")) {
			System.out.print("HELLO");
	        Random random  = new Random();
	        int max=9999,min=1000;
			User user =new User();
			user.setName(request.getParameter("name"));
			user.setEmail(request.getParameter("email"));
			user.setPassword(""+random.nextInt(max - min + 1) + min);
			
			try {
				String status =new UserDAOAccess().store(user);
				//response.getWriter().append(status);
				List<User> users =null;
				users=new UserDAOAccess().index();
			  JSONObject jsonObject = new JSONObject();
			 
			  
				jsonObject.put("status","200");
				jsonObject.put("users",users);
				response.getWriter().write(jsonObject.toString());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(action.equals("search")) {
			try {
				//List<User> status =new UserDAOAccess().search(request.getParameter("keyword"));
				//response.getWriter().append(status);
				List<User> users =null;
				users=new UserDAOAccess().search(request.getParameter("keyword"));
			    JSONObject jsonObject = new JSONObject();
			    
				jsonObject.put("status","200");
				jsonObject.put("users",users);
				response.getWriter().write(jsonObject.toString());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if(action.equals("delete")) {
			try {
				String status =new UserDAOAccess().delete(Integer.parseInt(request.getParameter("id")));
				//response.getWriter().append(status);
				List<User> users =null;
				users=new UserDAOAccess().index();
			    JSONObject jsonObject = new JSONObject();
			    
				jsonObject.put("status","200");
				jsonObject.put("users",users);
				response.getWriter().write(jsonObject.toString());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(action.equals("update")) {
			User user =new User();
		    user.setId(Integer.parseInt(request.getParameter("id")));
			user.setName(request.getParameter("name"));
			user.setEmail(request.getParameter("email"));
			
			try {
				String status =new UserDAOAccess().update(user);
				//response.getWriter().append(status);
				List<User> users =null;
				users=new UserDAOAccess().index();
			response.sendRedirect("/ucs_iconic_system/view/admin/userlist.jsp");
			//JSONObject jsonObject = new JSONObject();
			    
			//jsonObject.put("status","200");
			//jsonObject.put("users",users);
			//response.getWriter().write(jsonObject.toString());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		if(action.equals("edit")) {
		
			String fileName ="default.jpg";
			String uploadPath ="";
			System.out.println("Sever is ok");
			Part file =request.getPart("image");
			if (file != null && file.getSize() > 0) {
			fileName=file.getSubmittedFileName();
			System.out.println("Selected Image File Name"+fileName);
	     uploadPath="C:/Users/hp/Desktop/JavaWorkspace/ucs_iconic_system/src/main/webapp/upload_images";
	        System.out.println("UploadPath:"+uploadPath);
	        try (InputStream inputStream = file.getInputStream();
	                FileOutputStream outputStream = new FileOutputStream(uploadPath + File.separator + fileName)) {
	               int bytesRead;
	               byte[] buffer = new byte[4096];
	               while ((bytesRead = inputStream.read(buffer)) != -1) {
	                   outputStream.write(buffer, 0, bytesRead);
	               }
	           }
			}
		
	         
	        
			 JSONObject jsonObject = new JSONObject();
			User user =new User();
			String password ="";
		    
			String currentPassword=request.getParameter("password");
			String newPassword =request.getParameter("new_password");
			
			User uid = null;
			try {
				 uid = new  UserDAOAccess().detail(Integer.parseInt(request.getParameter("id")));
				 
			} catch (NumberFormatException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
				System.out.println(uid.getPassword());
			if(!currentPassword.equals("") && !newPassword.equals("")) {
			  System.out.println("ldjflkdsjfl");
			 try {
				 
				  uid=new UserDAOAccess().detail(Integer.parseInt(request.getParameter("id")));
				  System.out.println(uid.getPassword());
				  if(uid.getPassword().equals(currentPassword)) {
					    user.setId(Integer.parseInt(request.getParameter("id")));
					    user.setName(request.getParameter("name"));
						user.setEmail(request.getParameter("email"));
						user.setPassword(request.getParameter("password"));
						user.setProfile(fileName);
					    
					    user.setPassword(newPassword);
					 
					 try {
					    String status =new UserDAOAccess().edit(user);
							//response.getWriter().append(status);
							
				
						    
						
							
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					 
					 jsonObject.put("status","200");
					    System.out.print("success");
						//jsonObject.put("users",users);
						response.getWriter().write(jsonObject.toString());
					 
				 }else {
					
					    System.out.print("fail");
						jsonObject.put("status","300");
						response.getWriter().write(jsonObject.toString());
						
				 }
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}else {
				
				 try {
					
					uid=new UserDAOAccess().detail(Integer.parseInt(request.getParameter("id")));
					user.setId(Integer.parseInt(request.getParameter("id")));
				    user.setName(request.getParameter("name"));
					user.setEmail(request.getParameter("email"));
					user.setPassword(request.getParameter("password"));
					user.setProfile(fileName);
				    
				    user.setPassword(uid.getPassword());
				    try {
						String status =new UserDAOAccess().edit(user);
						//response.getWriter().append(status);
						
					
					   System.out.print("successful");
				     jsonObject.put("status","200");
					//jsonObject.put("users",users);
					response.getWriter().write(jsonObject.toString());
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				 
				 
				 } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					
			}
			
			
			
		}
		
	}
	
	

}
