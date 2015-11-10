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
    <script src="http://api-maps.yandex.ru/2.1/?load=package.full&lang=ru-RU" type="text/javascript"></script>
    <script src="static/js/yamaps/yamaps-index.js"></script>
</head>

<body>
<div class="container">
	<c:import url="WEB-INF/views/header.jsp"/>
	<sec:authorize access="isAuthenticated()">
        <div class="panel panel-default panel-body">
            <a type="button" class="btn btn-default" href="<c:url value="/myspots"/>">
                <span class="glyphicon glyphicon-book"></span>
                My Spots
            </a>
            <a type="button" class="btn btn-default" href="<c:url value="/newspot"/>">
                <span class="glyphicon glyphicon-plus"></span>
                New Spot
            </a>
        </div>
    </sec:authorize>
	<div class="row">
		<div class="row">
			<div id="spotsDiv" class="col-md-7">
				<c:forEach var="spot" items="${spots}">
					<div class="col-md-12">
						<div class="thumbnail">
							<img src="${photos.get(spot)}" alt="512x128">
							<table class="table">
								<tbody>
								<tr>
									<td><span class="label label-default">Added By</span></td>
									<td><a href="#">${spot.creator}</a></td>
								</tr>
								<tr>
									<td><span class="label label-default">Address</span></td>
									<td>
										<p>${spot.address}</p>
									</td>
								</tr>
								</tbody>
							</table>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default" data-toggle="collapse" data-target="#reviewCollapse${spot.id}">Review</button>
                                <c:if test="${spot.creator.equals(sessionScope.user)}">
									<a class="btn btn-default" href="/spot/${spot.id}/edit">Edit Spot</a>
									<button class="btn btn-default btn-danger" data-toggle="modal" data-target="#modalDeleteDiv" data-spotid="${spot.id}">Delete Spot</button>
                                </c:if>
                            </div>
                            <div style="margin: 5px;">
                                <div class="collapse" id="reviewCollapse${spot.id}">
                                    <div class="well">${reviews.get(spot).text}</div>
                                </div>
                            </div>
						</div>
					</div>
                    <script type="text/javascript">addPlacemark(${spot.latitude}, ${spot.longitude}, "${spot.name}")</script>
				</c:forEach>
                <c:import url="WEB-INF/views/modaldeletediv.jsp"/>
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
