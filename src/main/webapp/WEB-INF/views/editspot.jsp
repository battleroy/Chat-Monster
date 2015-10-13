<!DOCTYPE html>
<html>

	<head>
		<title>Edit Spot</title>
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
					<button type="button" class="navbar-btn btn btn-primary login-button">Log In</button>
				</form>
			</nav>
			<div class="page-header">
				<h1>Editing the spot <small>You are making a step into new healthy life.</small></h1>
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
	                        	<textarea class="form-control" cols="92" rows="10" placeholder="You can leave this empty.">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nec magna sit amet mi lacinia venenatis quis ut justo. Nullam vel iaculis velit. Nunc dignissim, libero non semper rutrum, justo erat hendrerit diam, ut sollicitudin est risus at eros. Vivamus euismod porttitor auctor. Nunc dui ex, pharetra eget semper vitae, facilisis vel urna. Sed in sapien sapien. Nullam tempus eros sodales ullamcorper ullamcorper. Pellentesque blandit neque diam, eget ultricies tellus ultricies sit amet. Cras suscipit sagittis mauris molestie lobortis. Vivamus porta magna orci. Nunc euismod pellentesque tortor, at efficitur mauris lobortis eget. Morbi consectetur turpis id leo vestibulum, eu gravida velit finibus. Vivamus urna nulla, consectetur quis iaculis vel, mollis quis libero. Integer tincidunt mauris ac libero porttitor euismod. Suspendisse eget ultricies turpis, sit amet mattis nunc.
								</textarea>
	                        </div>
                        	<button type="submit" class="btn btn-primary input">Save spot</button>
                        	<button type="button" class="btn btn-danger input">Delete spot</button>
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