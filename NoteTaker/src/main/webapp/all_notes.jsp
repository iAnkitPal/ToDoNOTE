<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0 ">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="mx-auto" style="width: 400px;">
			<h1 class="display-1" class="text-uppercase">ALL NOTES</h1>
		</div>

		<div class="row">
			<div class="col-12">

				<%
					Session s = FactoryProvider.getFactory().openSession();
					Query q = s.createQuery("from Note");
					List<Note> list = q.list();
					for (Note note : list) {
				%>
				<div class="container">
					<div class="card mt-3" style="width: 70rem;">
						<div class="card-body">
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<hr>
							<p class="card-text">
								<%=note.getContent()%>
							</p>
							<div class="container text-center">
								<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a> 
								<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>
				</div>


				<%
					}
					s.close();
				%>


			</div>
		</div>


	</div>

</body>
</html>