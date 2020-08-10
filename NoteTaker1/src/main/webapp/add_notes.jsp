<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add notes</title>

		<%@include file="all_js_css_jsp.jsp" %>
</head>
<body>

		<div class="container">
			<%@include file="navbar.jsp" %>
		<h1>please fill your notes</h1>
		

		<!-- this is add form -->	
		
	<form action="SaveNoteServlet" method="post" >
  <div class="form-group">
    <label for="title">Note title</label>
    <input
     name="title"
     required 
     type="text" 
     class="form-control" 
     id="title" 
     aria-describedby="emailHelp" 
    placeholder="enter here">

  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea
    name="content"
    required 
    id="content"
     placeholder="Enter your content" 
     class="form-control"
     style="height: 300px"
     ></textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">Add</button>
</div>
</form>
</div>
</body>
</html>