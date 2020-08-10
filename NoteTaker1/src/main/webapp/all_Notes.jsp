<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Takers</title>
<%@include file="all_js_css_jsp.jsp" %>
</head>
<body>

		<div class="container">
			<%@include file="navbar.jsp" %>
			<h1 class ="text-uppercase"> All Notes</h1>
			<div class=row>
				<div class="col-12">
	
		<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("From Note");
			List<Note> list = q.list();
			for(Note note:list){
					
			%>
			
			<div class="card mt-3">
				  <img class="card-img-top mx-auto m-4" style="max-width:100px;" src="img/write.png" alt="Card image cap">
				  <div class="card-body px-5">
				    <h5 class="card-title"><%= note.getTitle() %></h5>
				    <p class="card-text">
				    <%=note.getContent() %>
				    </p>
				    <p> <%=note.getAdddeddate() %> </p>
				    <div class="container text-center mt-2">
				    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
				    <a href="edit.jsp?note_id=<%= note.getId()%>" class="btn btn-primary">Update</a>
				  </div>
				  </div>
				</div>
							
			<% 	}
			s.close();
				%>
	
	
				
				</div>
			
			</div>
			
	</div>

</body>
</html>