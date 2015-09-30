<!DOCTYPE html>
<html>

	<head>
		<title>Workout Monster</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="static/css/bootstrap.min.css" rel="stylesheet">
		<link href="static/css/app.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery.js"></script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
		<script src="static/js/yamaps.js"></script>
	</head>

	<body>
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">
						<img src="static/images/logo.png" alt="Workout Monster">
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
					<button type="button" id="logInButton" class="navbar-btn btn btn-primary">Log In</button>
				</form>
			</nav>
			<div class="panel panel-default panel-body">
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-book"></span>
					My Spots
				</button>
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-plus"></span>
					Add Spot
				</button>
			</div>
			<div class="row">
				<div class="row">
					<div class="col-md-7">
						<div class="col-md-12">
							<div class="thumbnail">
								<img src="http://placehold.it/512x128" alt="512x128">
								<table class="table">
									<tbody>
										<tr>
											<td><span class="label label-default">Added By</span></td>
											<td><a href="#">Admin123</td>
										</tr>
										<tr>
											<td><span class="label label-default">Address</span></td>
											<td>
												<p>Fisherman's Wharf, Russian Hill
													1323 Columbus Ave
													San Francisco, CA 94133
													Phone number (415) 292-4888
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<button type="button" class="btn btn-default center-block">Reviews</button>
							</div>
						</div>
						<div class="col-md-12">
							<div class="thumbnail">
								<img src="http://placehold.it/512x128" alt="512x128">
								<table class="table">
									<tbody>
										<tr>
											<td><span class="label label-default">Added By</span></td>
											<td><a href="#">Admin123</td>
										</tr>
										<tr>
											<td><span class="label label-default">Address</span></td>
											<td>
												<p>Fisherman's Wharf, Russian Hill
													1323 Columbus Ave
													San Francisco, CA 94133
													Phone number (415) 292-4888
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<button type="button" class="btn btn-default center-block">Reviews</button>
							</div>
						</div>
						<div class="col-md-12">
							<div class="thumbnail">
								<img src="http://placehold.it/512x128" alt="512x128">
								<table class="table">
									<tbody>
										<tr>
											<td><span class="label label-default">Added By</span></td>
											<td><a href="#">Admin123</td>
										</tr>
										<tr>
											<td><span class="label label-default">Address</span></td>
											<td>
												<p>Fisherman's Wharf, Russian Hill
													1323 Columbus Ave
													San Francisco, CA 94133
													Phone number (415) 292-4888
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<button type="button" class="btn btn-default center-block">Reviews</button>
							</div>
						</div>
						<div class="col-md-12">
							<div class="thumbnail">
								<img src="http://placehold.it/512x128" alt="512x128">
								<table class="table">
									<tbody>
										<tr>
											<td><span class="label label-default">Added By</span></td>
											<td><a href="#">Admin123</td>
										</tr>
										<tr>
											<td><span class="label label-default">Address</span></td>
											<td>
												<p>Fisherman's Wharf, Russian Hill
													1323 Columbus Ave
													San Francisco, CA 94133
													Phone number (415) 292-4888
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<button type="button" class="btn btn-default center-block">Reviews</button>
							</div>
						</div>
						<div class="col-md-12">
							<div class="thumbnail">
								<img src="http://placehold.it/512x128" alt="512x128">
								<table class="table caption">
									<tbody>
										<tr>
											<td><span class="label label-default">Added By</span></td>
											<td><a href="#">Admin123</td>
										</tr>
										<tr>
											<td><span class="label label-default">Address</span></td>
											<td>
												<p>Fisherman's Wharf, Russian Hill
													1323 Columbus Ave
													San Francisco, CA 94133
													Phone number (415) 292-4888
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<button type="button" class="btn btn-default center-block">Reviews</button>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div id="map"></div>
					</div>
				</div>
			</div>
		</div>
		<footer>
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
						<a href="/"><img src="static/images/logo.png" alt="Workout Monster"></a>
						<p>
							Copyright 2015 Yauheni Chasavitsin. <span class="glyphicon glyphicon-menu-right"></span><a href="http://github.com/battleroy"> GitHub</a>
						</p>
					</div>
				</div>
			</div>
		</footer>
	</body>

</html>