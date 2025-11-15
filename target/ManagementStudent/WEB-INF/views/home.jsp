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
    <link rel="stylesheet" href="<c:url value='/resources/css/darkblue.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/gof.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/layout.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/modal_message.css'/>" />
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
                                <c:if test="${empty studentsList}">
                                    <tr><td colspan="5" class="text-center">No data available in table</td></tr>
                                </c:if>
                                <c:forEach var="student" items="${studentsList}">
                                    <tr>
                                        <td class="text-center"><input type="radio" name="studentRadio" value="${student.id}" class="student-radio" /></td>
                                        <td>${student.id}</td>
                                        <td>${student.firstName}</td>
                                        <td>${student.lastName}</td>
                                        <td>${student.marks}</td>
                                    </tr>
                                </c:forEach>
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
                <form:form modelAttribute="studentForm" method="POST" action="saveUser" cssClass="form-inline">
                    <input type="hidden" id="action" name="action" value="" />
                    <div class="form-group" style="margin-bottom: 15px;">
                        <table class="table table-bordered key-table">
                            <tr>
                                <th>Key Name</th>
                                <th>Key Value</th>
                            </tr>
                            <tr>
                                <td>ID</td>
                                <td><form:input path="id" class="form-control" placeholder="Enter ID" /></td>
                            </tr>
                            <tr>
                                <td>First Name</td>
                                <td><form:input path="firstName" class="form-control" placeholder="Enter First Name" /></td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td><form:input path="lastName" class="form-control" placeholder="Enter Last Name" /></td>
                            </tr>
                            <tr>
                                <td>Mark</td>
                                <td><form:input path="marks" class="form-control" placeholder="Enter Mark" /></td>
                            </tr>
                        </table>
                    </div>
                    
                    <div style="margin-top: 10px;">
                        <button type="button" class="btn btn-primary" id="btnAdd">Add</button>
                        <button type="button" class="btn btn-warning" id="btnUpdate">Update</button>
                        <button type="button" class="btn btn-danger" id="btnDelete">Delete</button>
                    </div>
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