<!DOCTYPE html>
<html>

	<head>
		<title>New Spot</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="../../static/css/bootstrap.min.css" rel="stylesheet">
		<link href="../../static/css/app.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery.js"></script>
		<script src="../../static/js/bootstrap.min.js"></script>
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
		<script src="../../static/js/yamaps.js"></script>
	</head>

	<body>
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">
						<img src="../../static/images/logo.png" alt="Workout Monster">
					</a>
				</div>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="search" class="form-control form-search" placeholder="Minsk, BY">
					</div>
					<button class="btn btn-primary" type="submit">Search for spots!</button>
				</form>
				<form class="pull-right">
					<button type="button" class="navbar-btn btn btn-primary">Sign Up</button>
					<button type="button" id="login-button" class="navbar-btn btn btn-primary">Log In</button>
				</form>
			</nav>
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
	                        	<textarea class="form-control" cols="92" rows="10" placeholder="You can leave this empty."></textarea>
	                        </div>
	                        <button type="submit" class="btn btn-primary">Create spot</button>
	                    </form>
                    </div>
				</div>
			</div>
		</div>
		<footer class="navbar navbar-default navbar-fixed-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-3 sitemap">
						<h4>Sitemap</h4>
						<a href="#">Home</a>
						<a href="#">About</a>
						<a href="#">Contact</a>
					</div>
					<div class="col-md-4 social">
					</div>
					<div class="col-md-3 col-md-push-2 footer-logo">
						<a href="/"><img src="../../static/images/logo.png" alt="Workout Monster"></a>
						<p>
							Copyright 2015 Yauheni Chasavitsin. <span class="glyphicon glyphicon-menu-right"></span><a href="http://github.com/battleroy"> GitHub</a>
						</p>
					</div>
				</div>
			</div>
		</footer>
	</body>
</html>