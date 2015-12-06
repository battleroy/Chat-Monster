<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link type="text/css" href="../../static/css/typeaheadjs.css"/>
<nav class="navbar navbar-default">
    <div class="navbar-header">
        <c:url var="index_page" value="/welcome"/>
        <a class="navbar-brand" href="${index_page}">
            <img src="../../static/images/logo.png" alt="Workout Monster">
        </a>
    </div>
    <form class="navbar-form navbar-left" action="javascript:searchNearestSpots()">
        <div class="form-group">
            <span>
                <input type="search" class="twitter-typeahead form-control form-search" id="place" placeholder="Enter place">
            </span>
        </div>
        <button type="submit" class="btn btn-primary">Search for spots!</button>
    </form>
    <script src="../../static/js/yamaps/yamaps-header.js"></script>
    <script type="text/javascript" src="../../static/js/typeahead/twitter-typeahead.js"></script>
    <script type="text/javascript" src="../../static/js/typeahead/input-typeahead.js"></script>
    <form class="pull-right">
        <c:url var="signup_link" value="/signup"/>
        <c:url var="login_link" value="/login"/>
        <c:url var="logout_link" value="/j_spring_security_logout"/>
        <sec:authorize access="isAnonymous()">
            <a role="button" class="navbar-btn btn btn-primary" href="${signup_link}">Sign Up</a>
            <a role="button" class="navbar-btn btn btn-primary login-button" href="${login_link}">Log In</a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <span class="label label-default">${sessionScope.user}</span>
            <a role="button" class="navbar-btn btn btn-primary" href="${logout_link}">Log Out</a>
        </sec:authorize>
    </form>
</nav>