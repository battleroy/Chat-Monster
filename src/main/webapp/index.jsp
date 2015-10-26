<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

<head>
	<title>Workout Monster</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/app.css" rel="stylesheet">
	<script src="static/js/jquery.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
	<script src="static/js/yamaps.js"></script>
</head>

<body>
<div class="container">
	<c:import url="WEB-INF/views/header.jsp"/>
	<sec:authorize access="isAuthenticated()">
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
    </sec:authorize>
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
								<td><a href="#">Admin123</a></td>
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
								<td><a href="#">Admin123</a></td>
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
								<td><a href="#">Admin123</a></td>
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
								<td><a href="#">Admin123</a></td>
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
								<td><a href="#">Admin123</a></td>
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
<c:import url="WEB-INF/views/footer.jsp"/>
</body>
</html>
