package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.awt.Desktop.Action;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import org.json.JSONObject;

import model.Post;
import model.PostDAOAccess;
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10,      // 10MB
maxRequestSize = 1024 * 1024 * 50) 
/**
 * Servlet implementation class PostController
 */
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  String action =request.getParameter("action");
	 
	  if(action.equals("search")) {
		   try { 
			//response.getWriter().write(request.getParameter("keyword")+33);
			JSONObject jsonObject =new JSONObject();   
			List<Post> posts  =new PostDAOAccess().search(request.getParameter("keyword"),request.getParameter("category"));
		    jsonObject.put("posts",posts);
		    
		    response.getWriter().write(jsonObject.toString());
		   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
	  }
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fileName ="null";
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
	
         
        Post post =new Post();
        post.setCategory(request.getParameter("category"));
        post.setYear("second");
        post.setImage(fileName);
        post.setTitle(request.getParameter("title"));
        
        try {
			String success=new PostDAOAccess().store(post);
			response.getWriter().println(success);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        response.getWriter().println("File successfully uploaded to: " + uploadPath);
        request.setAttribute("message","success");
        request.getRequestDispatcher("show.jsp").forward(request,response);
    
	}

}
