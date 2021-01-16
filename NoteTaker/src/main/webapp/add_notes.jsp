<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file = "all_js_css.jsp" %>
</head>
<body>
  <div class = "container-fluid p-0 m-0">
  <%@include file = "navbar.jsp" %>
  </div>
 
  
<div class = "container">
 <br>
  <h1 class="display-1">Write Note here</h1>
  <br>
  <!-- this is add form -->
  <form action = "SaveNoteServlet" method = "post">
  <div class="mb-3">
    <label for="title">Note Title </label>
    <input name = "title" required type="text" required class="form-control" id="title" aria-describedby="emailHelp" placeholder = "enter title">

  </div>
  
  <div class="mb-3">
    <label for="content" >Note Description</label>
   <textarea name = "content" required id="content" required rows="15px"  class  = "form-control" style = "hieght:600px;" placeholder = "start writing here"></textarea>
  </div>
</div>

<div class = "container text-center">
  <button type="submit" class="btn btn-primary">Save Note</button>
</div>
</form>

</body>
</html>