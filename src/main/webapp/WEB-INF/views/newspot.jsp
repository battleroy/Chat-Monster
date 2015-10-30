<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<title>New Spot</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="../../static/css/bootstrap.min.css" rel="stylesheet">
		<link href="../../static/css/app.css" rel="stylesheet">
		<script src="../../static/js/jquery.js"></script>
		<script src="../../static/js/bootstrap.min.js"></script>
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
		<script src="../../static/js/yamaps.js"></script>
	</head>

	<body>
		<div class="container">
			<c:import url="header.jsp"/>
			<div class="page-header">
				<h1>Creating new spot <small>You are making a step into new healthy life.</small></h1>
			</div>
			<div class="row">
				<div class="row">
					<div class="col-md-8 col-md-push-1">
						<div id="map"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-md-push-1">
						<form action="<c:url value="/createspot"/>" method="POST">
							<label>Coordinates of the spot:</label>
							<div class="form-group">
								<label for="latitude">Latitude</label>
								<input type="text" class="form-control" id="latitude" name="latitude" value="53.46" readonly>
							</div>
							<div class="form-group">
								<label for="longitude">Longitude</label>
								<input type="text" class="form-control" id="longitude" name="longitude" value="48.67" readonly>
							</div>
	                        <div class="form-group">
	                            <label for="creator">Creator</label>
	                            <input type="text" class="form-control" id="creator" name="creator" value="${user}" readonly>
	                        </div>
	                        <div class="form-group">
	                            <label for="name">Name of spot</label>
	                            <input type="text" class="form-control" id="name" name="name" placeholder="Name">
	                        </div>
	                        <div class="form-group">
	                        	<label for="review">Your review</label>
	                        	<textarea class="form-control" id="review" name="review" cols="92" rows="10" placeholder="You can leave this empty."></textarea>
	                        </div>
	                        <button type="submit" class="btn btn-primary">Create spot</button>
	                    </form>
                    </div>
				</div>
			</div>
		</div>
		<c:import url="footer.jsp"/>
	</body>
</html>