<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-center register__ctnd">
            <c:url value="/j_spring_security_check" var="urlLogin"/>
            <form action="${urlLogin}" method="post" novalidate>
                <div class="form-group">
                    <label for="inptMail">Correo:</label>
                    <input type="email" class="form-control" id="inptMail" name="j_id" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="inptPass">Contraseña:</label>
                    <input type="password" class="form-control" id="inptPass" name="j_pass" placeholder="Email">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Recordar me
                    </label>
                    <label>
                        <a href="#">¿Olvidaste tu contraseña?</a>
                    </label>
                </div>

                <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                    <div class="bg-danger text-center">
                        <p class="text-danger"><c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/></p>
                    </div>
                </c:if>

                <button type="submit" class="btn btn-primary">Ingresar</button>
                <a href="<c:url value="/registro/"/>" class="btn btn-info">Registrarme</a>
            </form>
        </div>

    </div>
</div>