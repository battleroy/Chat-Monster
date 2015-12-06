<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../static/css/app.css" rel="stylesheet">
    <script src="../../static/js/jquery.js"></script>
    <script src="../../static/js/bootstrap.min.js"></script>
    <script src="../../static/js/validation/jquery.validate.min.js"></script>
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
                <form id="signup-form" action="${signupUrl}" method="POST">
                        <div class="form-group">
                            <label for="username">User name (required, at least 4 characters)</label>
                            <input type="text" class="form-control" placeholder="Name" name="username" id="username"/>
                        </div>
                        <div class="form-group">
                            <label for="password">Password (required, at least 5 characters)</label>
                            <input type="password" class="form-control" placeholder="Password" name="password" id="password"/>
                        </div>
                        <div class="form-group">
                            <label for="firstName">First name (required)</label>
                            <input type="text" class="form-control" name="firstName" id="firstName"/>
                        </div>
                        <div class="form-group">
                            <label for="lastName">Last name (required)</label>
                            <input type="text" class="form-control" name="lastName" id="lastName"/>
                        </div>
                        <button type="submit" class="btn btn-primary" id="signup-submit">Submit</button>
                        <div class="form-group" style="margin-top: 24px;">
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger" role="alert">
                                    <b>Oops! </b>User with such name already exists
                                </div>
                            </c:if>
                        </div>
                </form>
                <script src="../../static/js/validation/vld-signup.js"></script>
            </div>
        </div>
    </div>
    <c:import url="footer.jsp"/>
</body>
</html>