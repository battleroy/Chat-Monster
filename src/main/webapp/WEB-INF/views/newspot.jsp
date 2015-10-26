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
					<div class="col-md-2 col-md-push-1">
						<label>Coordinates of the spot:</label>
						<form class="form-group">
                            <label for="inputLatitude">Latitude</label>
							<input type="text" class="form-control" id="inputLatitude" placeholder="53.46" disabled>
						</form>
						<form class="form-group">
                            <label for="inputLongitude">Longitude</label>
							<input type="text" class="form-control" id="inputLongitude" placeholder="48.67" disabled>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-md-push-1">
						<form>
	                        <div class="form-group">
	                            <label for="inputCreator">Creator</label>
	                            <input type="text" class="form-control" id="inputCreator" placeholder="Admin" disabled>
	                        </div>
	                        <div class="form-group">
	                            <label for="inputNameOfSpot">Name of spot</label>
	                            <input type="text" class="form-control" id="inputNameOfSpot" placeholder="Password">
	                        </div>
	                        <div class="form-group">
	                        	<label for="inputReview">Your review</label>
	                        	<textarea class="form-control" id="inputReview" cols="92" rows="10" placeholder="You can leave this empty."></textarea>
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