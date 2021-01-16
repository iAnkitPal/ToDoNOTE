<%@page import="org.hibernate.*"%>
<%@page import="com.helper.*"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0 ">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="mx-auto" style="width: 250px;">
			<h1 class="text-uppercase">Edit note</h1>
		</div>

		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();

			Note note = (Note) s.get(Note.class, noteId);
		%>
		<div class="container">
			<!-- this is add form -->
			<form action="UpdateServlet" method="post">
			
			<input value=<%= note.getId() %> name = "noteId" type = "hidden"/>
			
				<div class="mb-3">
					<label for="title">Note Title </label> <input name="title" required
						type="text" required class="form-control" id="title"
						aria-describedby="emailHelp" placeholder="enter title" 
						value="<%= note.getTitle() %>"/>

				</div>

				<div class="mb-3">
					<label for="content">Note Description</label>
					<textarea name="content" required id="content" required rows="15px"
						class="form-control" style="hieght: 600px;"
						placeholder="start writing here"><%= note.getContent() %>
						</textarea>
				</div>
		</div>

		<div class="container text-center">
			<button type="submit" class="btn btn-success">Done Editing</button>
		</div>
		</form>

	</div>

</body>
</html>