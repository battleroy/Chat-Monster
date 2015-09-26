<!DOCTYPE html>
<html>
	<head>
    	<title>Bootstrap 101 Template</title>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="../../../UI/css/bootstrap.min.css" rel="stylesheet">
    	<style>
        	body
        	{
            	background-color: #195063
         	}
         	.container
         	{
            	color: #D6E0EB
         	}
         	.jumbotron
         	{
            	color: #404346
         	}
         	#map
         	{
            	height: 100%;
         	}
         	#spots-list
         	{
            	height: 500px;
            	overflow-y: scroll; 
         	}
         	#spots-list::-webkit-scrollbar 
         	{ 
            	display: none; 
         	}
      	</style>
      	<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
   	</head>
   	<body>
    	<nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
            	<a class="navbar-brand" href="#">Workout Monster</a>
            </div>
            <div class="nav navbar-nav navbar-right">
               	<li class="dropdown">
                	<a id="user-dropdown" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ivan Ivanov <span class="caret"></span></a>
                  	<ul class="dropdown-menu">
                    	<li><a href="#">Profile</a></li>
                    	<li role="separator" class="divider"></li>
                    	<li><a href="#">Log Out</a></li>
                 	</ul>
               	</li>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-sm-2">
               <div id="spots-list" class="form-group">
                  <label>Spots</label>
                  <div class="jumbotron">
                     <p>Spot1</p>
                  </div>
                  <div class="jumbotron">
                     <p>Spot2</p>
                  </div>
                  <div class="jumbotron">
                     <p>Spot3</p>
                  </div>
                  <div class="jumbotron">
                     <p>Spot4</p>
                  </div>
                  <div class="jumbotron">
                     <p>Spot5</p>
                  </div>
               </div>
            </div>
            <div class="col-md-10 col-sm-10">
               <div id="map"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 col-md-push-2 jumbotron text-center">
               <p>Reviews</p>
            </div>
        </div>
      </div>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://code.jquery.com/jquery.js"></script>
      <!-- Include all compiled plugins (below), or include individual files 
            as needed -->
      <script src="../../../UI/js/bootstrap.min.js"></script>

      <script>
         function updateContainerHeight() {
            $('#map').css('height', $('#spots-list').height());
            document.title = $('#user-dropdown').text() + " Spots";
         }
         updateContainerHeight();

         ymaps.ready(init);

         var map;
         function init() {
            var map = new ymaps.Map("map", {
               center: [55.76, 37.64], 
               zoom: 7
           });

            ymaps.geolocation.get({
               // Выставляем опцию для определения положения по ip
               provider: 'provider',
               // Карта автоматически отцентрируется по положению пользователя.
               mapStateAutoApply: true
            }).then(function (result) {
               map.geoObjects.add(result.geoObjects);
            });
         }
      </script>
   </body>
</html>