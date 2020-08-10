<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css_jsp.jsp" %>
</head>
<body>


		<div class="container">
			<%@include file="navbar.jsp" %>
		
		
		<h1>Edit your Note<h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s =FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class, noteId);
		
		
		%>
		
		
	<form action="UpdateServlet" method="post" >
	<input value="<%=note.getId()%>" name="noteId" type="hidden"	/>
  <div class="form-group">
    <label for="title">Note title</label>
    <input
     name="title"
     required 
     type="text" 
     class="form-control" 
     id="title" 
     aria-describedby="emailHelp" 
     placeholder="enter here"
    value="<%=note.getTitle() %>"
    >

  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea
    name="content"
    required 
    id="content"
     placeholder="Enter your content" 
     class="form-control"
     style="height: 300px;"><%=note.getContent() %>
     </textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">Save your Notes</button>
</div>
</form>
		
		
		
		</div>

</body>
</html>