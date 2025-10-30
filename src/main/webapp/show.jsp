<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="model.PostDAOAccess,model.Post,java.util.*"	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="" id="message">
<%=request.getAttribute("message") %>
</div>
<%

List<Post> posts  = new PostDAOAccess().index();
String url = "";
for(Post post: posts)
{
 
	url = "upload_images/"+post.getImage();
	
	%>
	
  <img src="<%=url %>">
  
  <h3><%=post.getTitle() %></h3>
	<%
}

%>
</body>
<script>

</script>
</html>