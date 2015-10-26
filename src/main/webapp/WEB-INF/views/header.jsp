<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-default">
    <div class="navbar-header">
        <c:url var="index_page" value="/"/>
        <a class="navbar-brand" href="${index_page}">
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
        <c:url var="signup_link" value="/signup"/>
        <c:url var="login_link" value="/login"/>
        <c:url var="logout_link" value="/j_spring_security_logout"/>
        <sec:authorize access="isAnonymous()">
            <a role="button" class="navbar-btn btn btn-primary" href="${signup_link}">Sign Up</a>
            <a role="button" class="navbar-btn btn btn-primary login-button" href="${login_link}">Log In</a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a role="button" class="navbar-btn btn btn-primary" href="${logout_link}">Log Out</a>
        </sec:authorize>
    </form>
</nav>