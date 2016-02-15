<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div ng-cloak class="container ng-cloak" data-ng-controller="registroCtrlr">
    <div class="row">
        <div class="col-md-12 tab-register--ctnd-space">
            <div>
                <ul class="tab-register list-unstyled text-center">
                    <li ng-class="{'li--inactivo':inactivoDatPer}" ng-init="inactivoDatPer = false">
                        <p class="text--oswald-nonitalic">Datos Personales</p>
                    </li>
                    <li class="li--borders" ng-class="{'li--inactivo':inactivoDatMot}" ng-init="inactivoDatMot = true">
                        <p class="text--oswald-nonitalic">Datos de Moto</p>
                    </li>
                    <li class="li--borders" ng-class="{'li--inactivo':inactivoDesMoto}" ng-init="inactivoDesMoto = true">
                        <p class="text--oswald-nonitalic">Descripción de Moto</p>
                    </li>
                    <li ng-class="{'li--inactivo':inactivoConSeg}" ng-init="inactivoConSeg = true">
                        <p class="text--oswald-nonitalic">Condiciones, Seguridad</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <form>

        <div class="form-register__datos-moto">
            <div class="row">

            </div>
        </div>
        <div class="form-register__datos-personales" data-ng-class="{'elmt--novisible':!steptDos}" data-ng-init="steptDos = false">
            <div class="row">
                <div class="col-md-4">
                    <div class="campos-grupo">
                        <label for="sltTipoMoto">Estilo:</label>
                        <select id="sltTipoMoto" ng-model="moto.estilo" size="6">
                            <c:forEach var="tipo" items="${estilosMotos}">
                                <option value="${tipo.getId()}">${tipo.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="campos-grupo">
                        <label for="sltMarcaMoto">Marca:</label>
                        <select id="sltMarcaMoto" ng-model="moto.marca" size="6">
                            <c:forEach var="marca" items="${marcasMotos}">
                                <option value="${marca.getId()}">${marca.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="campos-grupo">
                        <label for="sltCilindrajeMoto">Cilindraje:</label>
                        <select id="sltCilindrajeMoto" ng-model="moto.cilindraje" size="6">
                            <c:forEach var="cilindraje" items="${cilindrajeMotos}">
                                <option value="${cilindraje.getId()}">${cilindraje.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="campos-grupo">
                        <label for="sltDepartamentoMoto">Departamento:</label>
                        <select id="sltDepartamentoMoto" ng-change="stlchangeDepartamento(moto.departamento)"
                                ng-model="moto.departamento">
                            <option ng-repeat="option in departamentos" value="{{option.id}}">{{option.departamento}}
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="campos-grupo">
                        <label for="sltCiudadMoto">Ciudad:</label>
                        <select id="sltCiudadMoto" ng-model="moto.ciudad">
                            <option ng-repeat="option in ciudades" value="{{option}}">{{option}}</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="campos-grupo">
                        <label for="inptTelefonoMoto">Teléfono:</label>
                        <input id="inptTelefonoMoto" ng-model="moto.telefono" placeholder=""/>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <button class="btn btn-primary" type="button" ng-click="steptDos = false; inactivoDatMot = true; inactivoDatPer = false">Anterior</button>
                <button class="btn btn-primary" type="button" ng-click="nextstep(); inactivoDatMot = false ; inactivoDatPer = true">Siguiente</button>
            </div>
        </div>
    </form>
</div>