<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>
        lab
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width"/>
</head>
<body>

<h2>Put coefficients in cells. Press button. Profit. Enjoy.</h2>

<header class="header">
    <div class="overlay"></div>
    <div class="container offset-1">

        <form:form modelAttribute="calculation" method="POST"
                   action="${pageContext.request.contextPath}/calculate">

            <spring:bind path="paramA">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="paramA" class="form-control" placeholder="a"
                                autofocus="true"></form:input>
                    <span> x <sup>2</sup> + </span>
                    <form:errors path="paramA"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="paramB">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="paramB" class="form-control" placeholder="b"
                                autofocus="true"></form:input>
                    <span> x + </span>
                    <form:errors path="paramB"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="paramC">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="paramC" class="form-control" placeholder="c"
                                autofocus="true"></form:input>
                    <form:errors path="paramC"></form:errors>
                </div>
            </spring:bind>

            <div class="form-group">
                <div class="">
                    <button type="submit" class="btn btn-primary btn-sm" id="ajax-submit-btn">
                        calculate
                    </button>
                </div>
            </div>
        </form:form>

    </div>
</header>


<c:if test="${wrongInput == true}">
    <h3>Negative discriminant. Sorry bro</h3>
</c:if>

<c:if test="${discriminantIsNegative == true}">
    <h3>Negative discriminant. Sorry bro</h3>
</c:if>

<c:if test="${calculation.discriminant != null}">
    <h3> D = <c:out value="${calculation.discriminant}"/></h3>
</c:if>
<c:if test="${calculation.x1 != null}">
    <h3> x1 = <c:out value="${calculation.x1}"/></h3>
</c:if>
<c:if test="${calculation.x2 != null}">
    <h3> x2 = <c:out value="${calculation.x2}"/></h3>
</c:if>


<%--<script src="${pageContext.request.contextPath}/resources/js/ajax-submit-report.js"></script>--%>
</body>

</html>


<%--<form:form modelAttribute="calculation" method="POST"--%>
<%--           action="${pageContext.request.contextPath}/calculate">--%>

<%--    <spring:bind path="paramA">--%>
<%--        <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--            <form:input type="text" path="paramA" class="form-control" placeholder="a"--%>
<%--                        autofocus="true"></form:input>--%>
<%--            <span> x <sup>2</sup> + </span>--%>
<%--            <form:errors path="paramA"></form:errors>--%>
<%--        </div>--%>
<%--    </spring:bind>--%>

<%--    <spring:bind path="paramB">--%>
<%--        <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--            <form:input type="text" path="paramB" class="form-control" placeholder="b"--%>
<%--                        autofocus="true"></form:input>--%>
<%--            <span> x + </span>--%>
<%--            <form:errors path="paramB"></form:errors>--%>
<%--        </div>--%>
<%--    </spring:bind>--%>


<%--    <spring:bind path="paramC">--%>
<%--        <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--            <form:input type="text" path="paramC" class="form-control" placeholder="c"--%>
<%--                        autofocus="true"></form:input>--%>
<%--            <form:errors path="paramC"></form:errors>--%>
<%--        </div>--%>
<%--    </spring:bind>--%>

<%--    <div class="form-group">--%>
<%--        <div class="">--%>
<%--            <button type="submit" class="btn btn-primary btn-sm" id="ajax-submit-btn">--%>
<%--                calculate--%>
<%--            </button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</form:form>--%>


