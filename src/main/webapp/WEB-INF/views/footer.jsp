<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
        <c:url var="index_page" value="/welcome"/>
        <div class="row">
            <div class="col-md-3 sitemap">
                <h4>Sitemap</h4>
                <a href="${index_page}">Home</a>
                <a href="#">About</a>
                <a href="#">Contact</a>
            </div>
            <div class="col-md-4 social">
            </div>
            <div class="col-md-3 col-md-push-2 footer-logo">
                <a href="${index_page}"><img src="../../static/images/logo.png" alt="Workout Monster"></a>
                <p>
                    Copyright 2015 Yauheni Chasavitsin. <span class="glyphicon glyphicon-menu-right"> </span><a href="http://github.com/battleroy">GitHub</a>
                </p>
            </div>
        </div>
    </div>
</footer>