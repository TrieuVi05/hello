<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/style.css'/>" />
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <h1><img src="<c:url value="/resources/images/User.png" />" alt="User Icon" /> Manage Users</h1>
            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">▼ User Lists</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-primary">
                                    <th>Choose</th>
                                    <th>ID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Mark</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td colspan="5" class="text-center">No data available in table</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <form:form modelAttribute="studentForm" method="POST" action="saveUser"> 
                    <table class="table table-bordered">
                        <input type="hidden" id="action" name="action" value="" />
                        <tr>
                            <th class="col-sm-3">Key Name</th>
                            <th class="col-sm-3">Key Value</th>
                        </tr>
                        <tr>
                            <td>ID</td>
                            <td><form:input path="id" class="form-control" /></td>
                        </tr>
                        <tr>
                            <td>First Name</td>
                            <td><form:input path="firstName" class="form-control" /></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><form:input path="lastName" class="form-control" /></td>
                        </tr>
                        <tr>
                            <td>Mark</td>
                            <td><form:input path="mark" class="form-control" /></td>
                        </tr>
                    </table>
                    
                    <button type="button" class="btn btn-primary" id="btnAdd">Add</button>
                    <button type="button" class="btn btn-warning" id="btnUpdate">Update</button>
                    <button type="button" class="btn btn-danger" id="btnDelete">Delete</button>
                </form:form>
            </div>
        </div>
    </div>
    <script src="<c:url value='/resources/js/jquery-3.7.1.min.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resources/js/Lbs_Modal_Message.js'/>"></script>
    <script src="<c:url value='/resources/js/Lbs_Func_General.js'/>"></script>
    <script src="<c:url value='/resources/js/Lbs_Func_Validate.js'/>"></script>
    <script src="<c:url value='/resources/js/Oamuser_Validate.js'/>"></script>
</body>
</html>