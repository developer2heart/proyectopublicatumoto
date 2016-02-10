<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="container">
    <div class="row">
        <form action="">
            <div class="col-md-3">
                <div class="form-register__one-step">
                    <h2><fmt:message key="page.register.home.form.promerpaso.title"/></h2>
                    <div class="form-group">
                        <label for="sltTipoMoto">Estilo:</label>
                        <select id="sltTipoMoto" class="form-control">
                            <option>Selecciona el estilo de la moto.</option>
                            <c:forEach var="tipo" items="${estilosMotos}">
                                <option value="${tipo.getId()}">${tipo.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="sltMarcaMoto">Marca:</label>
                        <select id="sltMarcaMoto" class="form-control">
                            <option>Selecciona una marca.</option>
                            <c:forEach var="marca" items="${marcasMotos}">
                                <option value="${marca.getId()}">${marca.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="rbCilindraje">Cilindraje:</label>
                        <c:forEach var="cilindraje" items="${cilindrajeMotos}">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="rbCilindraje" id="rbCilindraje"
                                           value="${cilindraje.getId()}">${cilindraje.getName()}
                                </label>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="col-md-3">

            </div>
        </form>
    </div>
</div>