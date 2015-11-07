<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../static/css/app.css" rel="stylesheet">
    <script src="../../static/js/jquery.js"></script>
    <script src="../../static/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <c:import url="header.jsp"/>
        <div class="page-header">
            <h1>Signing up
                <small>You are about good to go.</small>
            </h1>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-push-4">
                <c:url var="signupUrl" value="/register"/>
                <form:form modelAttribute="user" action="${signupUrl}" method="POST">
                    <spring:bind path="username">
                        <div class="form-group">
                            <form:label path="username">User name</form:label>
                            <form:input type="text" class="form-control" placeholder="Name" path="username"/>
                        </div>
                        <div class="form-group">
                            <form:label path="password">Password</form:label>
                            <form:input type="password" class="form-control" placeholder="Password"
                                        path="password"/>
                        </div>
                        <div class="form-group">
                            <form:label path="firstName">First name</form:label>
                            <form:input type="text" class="form-control" path="firstName"/>
                        </div>
                        <div class="form-group">
                            <form:label path="lastName">Last name</form:label>
                            <form:input type="text" class="form-control" path="lastName"/>
                        </div>
                        <button type="submit" class="btn btn-primary" id="signup-submit">Submit</button>
                        <div class="form-group" style="margin-top: 24px;">
                            <form:errors path="username" class="form-group">
                                <div class="alert alert-danger" role="alert">
                                    <b>Oops! </b>User with such name already exists
                                </div>
                            </form:errors>
                        </div>
                    </spring:bind>
                </form:form>
            </div>
        </div>
    </div>
    <c:import url="footer.jsp"/>
</body>
</html>