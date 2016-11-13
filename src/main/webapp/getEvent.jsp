<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj wydarzenie</title>
</head>
<body>
	<jsp:useBean id="event" class="domain.Event" scope="request"/>
	<jsp:setProperty name="event" property="*" />
	<jsp:useBean id="storage" class="service.StorageHelper" scope="application"/>
	<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-6">
<div class="alert alert-null"></div>
<form action="addEvent.jsp">
	<div class="input-group">
		<span class="input-group-addon" id="sizing-addon1">Nazwa</span>
		<input type="text" name="name" class="form-control" placeholder="Nazwa" aria-describedby="sizing-addon1" required>	
	</div>
	<div class="input-group">
		<span class="input-group-addon" id="sizing-addon2">Organizator</span>
		<input type="text" name="organizer" class="form-control" placeholder="Organizator" aria-describedby="sizing-addon2" required>	
	</div>
	<div class="input-group">
		<span class="input-group-addon" id="sizing-addon3">Miejsce</span>
		<input type="text" name="place" class="form-control" placeholder="Miejsce" aria-describedby="sizing-addon3" required>	
	</div>
	<div class="input-group">
		<span class="input-group-addon" id="sizing-addon4">Opis</span>
		<input type="text" name="description" class="form-control" placeholder="Opis" aria-describedby="sizing-addon4">	
	</div>
	<div class="input-group">
		<span class="input-group-addon" id="sizing-addon5">Maksymalna liczba osób</span>
		<input type="number" name="maxCapacity" class="form-control" placeholder="Maksymalna liczba osób" aria-describedby="sizing-addon5">	
	</div>
	<div>
		<button type="submit" class="btn btn-default">Dodaj</button>	
	</div>
</form>
</div>
<div class="col-sm-4"></div>
<script>
	
</script>
</div>
</body>
</html>