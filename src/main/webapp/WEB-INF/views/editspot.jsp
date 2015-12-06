<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<title>Edit Spot</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="../../static/css/bootstrap.min.css" rel="stylesheet">
		<link href="../../static/css/app.css" rel="stylesheet">
		<script src="../../static/js/jquery.js"></script>
		<script src="../../static/js/bootstrap.min.js"></script>
		<script src="http://api-maps.yandex.ru/2.1/?load=package.full&lang=ru-RU"></script>
		<script src="../../static/js/yamaps/yamaps-editspot.js"></script>
        <script src="../../static/js/validation/jquery.validate.min.js"></script>
    </head>

	<body>
		<div class="container">
			<c:import url="header.jsp"/>
			<div class="page-header">
				<h1>Editing the spot <small>You are making a step into new healthy life.</small></h1>
			</div>
			<div class="row">
				<div class="row">
					<div class="col-md-8 col-md-push-1">
						<div id="map"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-md-push-1">
						<form id="spot-form" action="/spot/${spot.id}/save" method="POST">
							<label>Coordinates of the spot:</label>
                            <input type="text" name="spotId" value="${spot.id}" hidden>
							<div class="form-group">
								<label for="latitude">Latitude</label>
								<input type="text" class="form-control" id="latitude" name="latitude" value="${spot.latitude}" readonly>
							</div>
							<div class="form-group">
								<label for="longitude">Longitude</label>
								<input type="text" class="form-control" id="longitude" name="longitude" value="${spot.longitude}" readonly>
							</div>
	                        <div class="form-group">
	                            <label for="name">Name of spot (required, minimum 5 characters)</label>
	                            <input type="text" class="form-control" id="name" name="name" value="${spot.name}"/>
	                        </div>
							<div class="form-group">
								<label for="address">Address (required, minimum 10 characters)</label>
								<input type="text" class="form-control" id="address" name="address">
							</div>
                        	<button type="submit" class="btn btn-primary">Save spot</button>
							<button type="button" class="btn btn-default btn-danger" data-toggle="modal" data-target="#modalDeleteDiv" data-spotid="${spot.id}">Delete Spot</button>
							<c:import url="modaldeletediv.jsp"/>
						</form>
                        <script src="../../static/js/validation/vld-spot.js"></script>
                    </div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-md-push-1">
				</div>
			</div>
		</div>
		<c:import url="footer.jsp"/>
	</body>
</html>