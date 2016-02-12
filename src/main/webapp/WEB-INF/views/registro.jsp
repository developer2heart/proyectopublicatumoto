<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="container ng-cloak" data-ng-controller="registroCtrlr">
    <div class="row">
        <div class="col-md-12 tab-register--ctnd-space">
            <div>
                <ul class="tab-register list-unstyled text-center">
                    <li>
                        <p class="text--oswald-nonitalic">Datos de Moto</p>
                    </li>
                    <li class="li--borders li--inactivo">
                        <p class="text--oswald-nonitalic">Fotos</p>
                    </li>
                    <li class="li--borders li--inactivo">
                        <p class="text--oswald-nonitalic">Descripción de Moto</p>
                    </li>
                    <li class="li--borders li--inactivo">
                        <p class="text--oswald-nonitalic">Condiciones, Seguridad</p>
                    </li>
                    <li class="li--inactivo">
                        <p class="text--oswald-nonitalic">Datos Personales</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row">
        <form>
            <div class="col-md-4">
                <div class="form-register__one-step form-register__one-step--padding-left">
                    <div class="campos-grupo">
                        <label for="sltTipoMoto">Estilo:</label>
                        <select id="sltTipoMoto" ng-model="moto.estilo">
                            <option value="-1">Selecciona el estilo de la moto.</option>
                            <c:forEach var="tipo" items="${estilosMotos}">
                                <option value="${tipo.getId()}">${tipo.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="campos-grupo">
                        <label for="sltMarcaMoto">Marca:</label>
                        <select id="sltMarcaMoto" ng-model="moto.marca">
                            <option value="-1">Selecciona una marca.</option>
                            <c:forEach var="marca" items="${marcasMotos}">
                                <option value="${marca.getId()}">${marca.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="campos-grupo">
                        <label for="sltCilindrajeMoto">Cilindraje:</label>
                        <select id="sltCilindrajeMoto" ng-model="moto.cilindraje">
                            <option value="-1">Selecciona una marca.</option>
                            <c:forEach var="cilindraje" items="${cilindrajeMotos}">
                                <option value="${cilindraje.getId()}">${cilindraje.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="campos-grupo">
                    <label for="sltDepartamentoMoto">Departamento:</label>
                    <select id="sltDepartamentoMoto" ng-change="stlchangeDepartamento(moto.departamento)"  ng-model="moto.departamento">
                        <option ng-repeat="option in departamentos" value="{{option.id}}">{{option.departamento}}</option>
                    </select>
                </div>
                <div class="campos-grupo">
                    <label for="sltDepartamentoMoto">Ciudad:</label>
                    <select id="sltDepartamentoMoto" ng-model="moto.ciudad">
                        <option ng-repeat="option in ciudades" value="{{option}}">{{option}}</option>
                    </select>
                </div>
                <div class="campos-grupo">
                    <label for="inptTelefonoMoto">Teléfono:</label>
                    <input id="inptTelefonoMoto" ng-model="moto.telefono" placeholder=""/>
                </div>
            </div>
        </form>
    </div>
    <div class="row">
        <div class="col-md-12">
            <button class="btn btn-primary" type="button" ng-click="nextstep()">Siguiente</button>
        </div>
    </div>
</div>