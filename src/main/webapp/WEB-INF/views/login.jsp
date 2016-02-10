<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="container">
    <div class="row">
        <div class="col-md-5 col-center register__ctnd">
            <h2><fmt:message key="page.login.home.title"/></h2>
            <c:url value="/j_spring_security_check" var="urlLogin"/>
            <form action="${urlLogin}" method="post" novalidate>
                <div class="form-group">
                    <label for="inptMail"><fmt:message key="page.login.home.form.inpt.mail"/>:</label>
                    <input type="email" class="form-control" id="inptMail" name="j_id" placeholder="<fmt:message key="page.login.home.form.inpt.mail.placeholder"/>">
                </div>
                <div class="form-group">
                    <label for="inptPass"><fmt:message key="page.login.home.form.inpt.pass"/>:</label>
                    <input type="password" class="form-control" id="inptPass" name="j_pass" placeholder="<fmt:message key="page.login.home.form.inpt.pass.placeholder"/>">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> <fmt:message key="page.login.home.form.chkx.rememberme"/>
                    </label>
                    <label>
                        <a href="#"><fmt:message key="page.login.home.form.recordarcontrasena"/></a>
                    </label>
                </div>

                <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                    <div class="bg-danger text-center">
                        <p class="text-danger"><c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/></p>
                    </div>
                </c:if>

                <button type="submit" class="btn btn-primary"><fmt:message key="page.login.home.form.btn.ingresar"/></button>
                <a href="<c:url value="/registro/"/>" class="btn btn-info"><fmt:message key="page.login.home.form.btn.registrarme"/></a>
            </form>
        </div>

    </div>
</div>