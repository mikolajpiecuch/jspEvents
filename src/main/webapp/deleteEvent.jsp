<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuń wydarzenie</title>
</head>
<body>
	<jsp:useBean id="event" class="domain.Event" scope="request"/>
	<jsp:setProperty name="event" property="*" />
	<jsp:useBean id="storage" class="service.StorageHelper" scope="application"/>

<% if(storage.add(event)) { %>
	<div class="alert alert-success">
		<strong>Sukces!</strong> Poprawnie dodano wydarzenie
	</div>
	<div class="input-group input-group-lg">
		<span class="input-group-addon" id="sizing-addon1">Nazwa</span>
		<input type="text" class="form-control" value=<%=event.getName()%> readonly aria-describedby="sizing-addon1">	
	</div>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="sizing-addon2">Data rozpoczęcia</span>
		<input type="text" class="form-control" value=<%=event.getBeginDate() %> readonly aria-describedby="sizing-addon2">	
	</div>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="sizing-addon3">Miejsce</span>
		<input type="text" class="form-control" value=<%=event.getPlace() %> readonly aria-describedby="sizing-addon3">	
	</div>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="sizing-addon4">Opis</span>
		<input type="text" class="form-control" value=<%=event.getDescription() %>readonly aria-describedby="sizing-addon4">	
	</div>
<%} else { %>
	<div class="alert alert-danger">
		<strong>Błąd!</strong> Wydarzenie o podanej nazwie już istnieje
	</div>
<%} %>

</body>
</html>