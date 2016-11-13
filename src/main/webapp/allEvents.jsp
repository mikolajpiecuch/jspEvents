<%@ page import="domain.Event"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> <!-- PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
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
<div class="col-sm-2"></div>
<div class="col-sm-6">
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
					<th>Organizator</th>
					<th>Miejsce</th>
					<th>Opis</th>
					<th>Edycja</th>
					<th>Usuń</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${storage.getAllEvents()}" var="ev">
		<tr>
			<td><c:out value="${ev.name}"/></td>
			<td><c:out value="${ev.organizer}"/></td>
			<td><c:out value="${ev.place}"/></td>
			<td><c:out value="${ev.description}"/></td>
			<td><form method="post" action="/getEditEvent.jsp" >
					<input type="hidden" name="index" value=<c:out value="${event.id}"/>/>
						<button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span></button></form> 
			</td>
			<td><form method="post" action="/delete" >
					<input type="hidden" name="index" value=<c:out value="${event.id}"/>/>
						<button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button></form> 
			</td>
		</tr>
	</c:forEach>
				<%-- <%
					for (Event event : storage.getAllEvents()) {
						out.println("<tr>");
						out.println("<td>" + event.getName() + "</td>");
						out.println("<td>" + event.getOrganizer() + "</td>");
						out.println("<td>" + event.getPlace() + "</td>");
						out.println("<td>" + event.getDescription() + "</td>");
						out.println("<td>"
									+ "<form method=\"post\" action=\"/getEditEvent.jsp\" >"
									+ "<input type=\"hidden\" name=\"index\" value=\"" + event.getId()
									+ "\"><button type=\"submit\" class=\"btn btn-info\"><span class=\"glyphicon glyphicon-pencil\"></span></button></form> </td>");
						out.println("<td>"
									+ "<form method=\"post\" action=\"/delete\" onsubmit=\"return confirm('Czy na pewno chcesz usunąć to wydarzenie?');\">"
									+ "<input type=\"hidden\" name=\"index\" value=\"" + event.getId()
									+ "\"><button type=\"submit\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span></button></form> </td>");
						out.println("</tr>");
					}
				%> --%>
			</tbody>
		</table>
	</div>
	<a href="/getEvent.jsp" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-plus"></span>Dodaj nowe wydarzenie</a>
	<a href="/weather" class="btn btn-info">Zapytaj o pogodę</a>
</div>
<div class="col-sm-4"></div>

</body>
</html>