<%@ page import="domain.Event"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj wydarzenie</title>
</head>
<body>
	<jsp:useBean id="storage" class="service.StorageHelper" scope="application" />
	<jsp:useBean id="msg" class="web.Msg" scope="request" />
	<%
		if (msg != null)
			out.println("<div class=\"alert alert-" 
						+ msg.getCommType() 
						+ "\">" 
						+ msg.getMessage()
						+ "</div>");
	%>

	<div class="table-reponsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Nazwa</th>
					<th>Data</th>
					<th>Miejsce</th>
					<th>Opis</th>
					<th>Edycja</th>
					<th>Usuń</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (Event event : storage.getAllEvents()) {
						out.println("<tr>");
						out.println("<td>" + event.getName() + "</td>");
						out.println("<td>" + event.getBeginDate() + "</td>");
						out.println("<td>" + event.getPlace() + "</td>");
						out.println("<td>" + event.getDescription() + "</td>");
						out.println(
								"<td><a href=\"\" role=\"button\" class=\"btn btn-info\"><span class=\"glyphicon glyphicon-pencil\"></span></a> </td>");
						out.println("<td>"
									+ "<form method=\"post\" action=\"/delete\">"
									+ "<input type=\"hidden\" name=\"index\" value=\"" + event.getId()
									+ "\"><button type=\"submit\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span></button></form> </td>");
						out.println("</tr>");
					}
				%>
			</tbody>
		</table>
	</div>


</body>
</html>