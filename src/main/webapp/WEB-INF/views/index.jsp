<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<main role="main" class="container">
    <!-- ##################### -->
    <!-- Slider Bikes SuperDestacadas-->
    <!-- ##################### -->
    <div class="content__banner">
        <div class="searchform__bikes">
            <div class="title">
                <h2>Encuntra Tu Moto</h2>
            </div>
            <form>
                <div class="fila">
                    <div class="input-grupo">
                        <label for="sltPais"><fmt:message key="page.index.searchformBikes.slt.pais"/></label>
                        <select id="sltPais">
                            <option><fmt:message key="page.index.searchformBikes.slt.defualt"/></option>
                            <option>items</option>
                            <option>items</option>
                            <option>items</option>
                        </select>
                    </div>
                    <div class="input-grupo">
                        <label for="sltDepartamento"><fmt:message key="page.index.searchformBikes.slt.depatamento"/></label>
                        <select id="sltDepartamento">
                            <option><fmt:message key="page.index.searchformBikes.slt.defualt"/></option>
                            <option>items</option>
                            <option>items</option>
                            <option>items</option>
                        </select>
                    </div>
                    <div class="input-grupo">
                        <label for="sltCiudad"><fmt:message key="page.index.searchformBikes.slt.ciudad"/></label>
                        <select id="sltCiudad">
                            <option><fmt:message key="page.index.searchformBikes.slt.defualt"/></option>
                            <option>items</option>
                            <option>items</option>
                            <option>items</option>
                        </select>
                    </div>
                </div>
                <div class="fila--dosItems">
                    <div class="input-grupo">
                        <label for="sltMarca"><fmt:message key="page.index.searchformBikes.slt.marca"/></label>
                        <select id="sltMarca">
                            <option><fmt:message key="page.index.searchformBikes.slt.defualt"/></option>
                            <option>items</option>
                            <option>items</option>
                            <option>items</option>
                        </select>
                    </div>
                    <div class="input-grupo">
                        <label for="sltModelo"><fmt:message key="page.index.searchformBikes.slt.modelo"/></label>
                        <select id="sltModelo">
                            <option><fmt:message key="page.index.searchformBikes.slt.defualt"/></option>
                            <option>items</option>
                            <option>items</option>
                            <option>items</option>
                        </select>
                    </div>
                </div>
                <div class="fila--dosItems">
                    <div class="input-grupo">
                        <label for="sltPreciomin"><fmt:message key="page.index.searchformBikes.slt.preciomin"/></label>
                        <select id="sltPreciomin">
                            <option><fmt:message key="page.index.searchformBikes.slt.defualt"/></option>
                            <option>items</option>
                            <option>items</option>
                            <option>items</option>
                        </select>
                    </div>
                    <div class="input-grupo">
                        <label for="sltPreciomax"><fmt:message key="page.index.searchformBikes.slt.preciomax"/></label>
                        <select id="sltPreciomax">
                            <option><fmt:message key="page.index.searchformBikes.slt.defualt"/></option>
                            <option>items</option>
                            <option>items</option>
                            <option>items</option>
                        </select>
                    </div>
                </div>
                <div class="searchform__ctnbtn">
                    <button type="submit" class="btn btn-primary"><fmt:message key="page.index.searchformBikes.btn.buscar"/></button>
                </div>
            </form>
        </div>
        <div class="sliderBikesSD">
            <img class="sliderBSD" src="<c:url value="/files/img1.jpg"/>" width="990" alt="slider1">
            <img class="sliderBSD" src="<c:url value="/files/img2.jpg"/>" width="990" alt="slider2">
            <img class="sliderBSD" src="<c:url value="/files/img3.jpg"/>" width="990" alt="slider3">
            <img class="sliderBSD" src="<c:url value="/files/img4.jpg"/>" width="990" alt="slider4">
        </div>
    </div>

    <!-- ##################### -->
    <!-- Slider Bikes SuperDestacadas-->
    <!-- ##################### -->

    <!-- ##################### -->
    <!-- ##################### -->
    <!-- Servios Publicatumoto-->
    <div>
        <section>
            <div class="marcasServicios">
                <div class="marcasServicios__ctnTitle">
                    <img src="<c:url value="/resources/img/botones-02.png"/>" height="32" width="32">
                    <h2 class="text--oswald text--violeta"><fmt:message key="page.index.marcasandservices.title"/></h2>
                </div>
                <div class="marcasServicios__ctndlogos">
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-1.png"/>" width="90" alt="marcas">
                    </div>
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-2.png"/>" width="90" alt="marcas">
                    </div>
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-3.png"/>" width="90" alt="marcas">
                    </div>
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-4.png"/>" width="90" alt="marcas">
                    </div>
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-5.png"/>" width="90" alt="marcas">
                    </div>
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-6.png"/>" width="90" alt="marcas">
                    </div>
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-7.png"/>" width="90" alt="marcas">
                    </div>
                    <div>
                        <img src="<c:url value="/resources/img/logomarcas/logo-8.png"/>" width="90" alt="marcas">
                    </div>
                </div>
                <div class="marcasServicios__ctndServices">
                    <div class="columnaOne">
                        <ul class="list-unstyled">
                            <li id="btnRepuestos"><img src="<c:url value="/resources/img/servicioslogo/h-1.png"/>" width="40" alt="logo-repuestos"> Repuestos</li>
                            <li id="btnDistribuidores"><img src="<c:url value="/resources/img/servicioslogo/h-3.png"/>" width="40" alt="logo-repuestos"> Distribuidores</li>
                            <li id="btnCentrosServices"><img src="<c:url value="/resources/img/servicioslogo/h-4.png"/>" width="40" alt="logo-repuestos"> Centros de Servicio</li>
                        </ul>
                    </div>
                    <div class="columnaDos">
                        <div id="content-repuestos">
                            <div>
                                <img src="<c:url value="/resources/img/servicioslogo/h-1.png"/>" width="40" alt="logo-repuestos"> <span> Repuestos</span>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab hic quo suscipit. Ab consequatur cupiditate debitis deserunt eaque esse magnam natus nesciunt numquam odit porro, possimus rem repudiandae temporibus, vero?
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab hic quo suscipit. Ab consequatur cupiditate debitis deserunt eaque esse magnam natus nesciunt numquam odit porro, possimus rem repudiandae temporibus, vero?
                            </p>
                        </div>
                        <div id="content-distribuidores" class="elmt--novisible">
                            <div>
                                <img src="<c:url value="/resources/img/servicioslogo/h-3.png"/>" width="40" alt="logo-repuestos"> <span> Distribuidores</span>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab hic quo suscipit. Ab consequatur cupiditate debitis deserunt eaque esse magnam natus nesciunt numquam odit porro, possimus rem repudiandae temporibus, vero?
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab hic quo suscipit. Ab consequatur cupiditate debitis deserunt eaque esse magnam natus nesciunt numquam odit porro, possimus rem repudiandae temporibus, vero?
                            </p>
                        </div>
                        <div id="content-centrosServicios" class="elmt--novisible">
                            <div>
                                <img src="<c:url value="/resources/img/servicioslogo/h-4.png"/>" width="40" alt="logo-repuestos"> <span> Centros de Servicio</span>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab hic quo suscipit. Ab consequatur cupiditate debitis deserunt eaque esse magnam natus nesciunt numquam odit porro, possimus rem repudiandae temporibus, vero?
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab hic quo suscipit. Ab consequatur cupiditate debitis deserunt eaque esse magnam natus nesciunt numquam odit porro, possimus rem repudiandae temporibus, vero?
                            </p>
                        </div>
                    </div>
                    <div class="columnaTres">
                        <div id="content-repuestosDest">
                            <p>Repuestos Destacados</p>
                            <ul>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                            </ul>
                        </div>
                        <div id="content-distribuidoresDest" class="elmt--novisible">
                            <p>Distribuidores Destacados</p>
                            <ul>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                            </ul>
                        </div>
                        <div id="content-centrosServicesDest" class="elmt--novisible">
                            <p>Centros de servicio Destacados</p>
                            <ul>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                                <li>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- Servios Publicatumoto-->
    <!-- ##################### -->
    <!-- ##################### -->

    <!-- ##################### -->
    <!-- ##################### -->
    <!-- Dos Columnas: Motos y Noticias 1, widgets 2-->
    <section>
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="publicaciones__ctnd-title">
                            <img src="<c:url value="/resources/img/botones-01.png"/>" width="28" height="28" alt="icono-publicaciones">
                            &nbsp;<h2 class="text--oswald"> Publicaciones</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="publicaciones__ctnd-bikes--principal">
                        <div class="col-md-6">
                            <div class="publicaciones__img--principal">
                                <img src="<c:url value="/files/bike-1.jpg"/>" alt="xxxxxx moto">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="publicaciones__info--principal">
                                <h3>Kawasaki Z250 2015</h3>
                                <p>$14,500,000</p>
                                <p>0 km</p>
                                <button class="btn btn-primary">Ver Más</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="publicaciones__img">
                            <img src="<c:url value="/files/bike-1.jpg"/>" alt="xxxxxx moto">
                        </div>
                        <div class="publicaciones__info">
                            <h4>Kawasaki Z250 2015</h4>
                            <p>$14,500,000</p>
                            <p>0 km</p>
                            <button class="btn btn-primary">Ver Más</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="publicaciones__img">
                            <img src="<c:url value="/files/bike-1.jpg"/>" alt="xxxxxx moto">
                        </div>
                        <div class="publicaciones__info">
                            <h4>Kawasaki Z250 2015</h4>
                            <p>$14,500,000</p>
                            <p>0 km</p>
                            <button class="btn btn-primary">Ver Más</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="publicaciones__img">
                            <img src="<c:url value="/files/bike-1.jpg"/>" alt="xxxxxx moto">
                        </div>
                        <div class="publicaciones__info">
                            <h4>Kawasaki Z250 2015</h4>
                            <p>$14,500,000</p>
                            <p>0 km</p>
                            <button class="btn btn-primary">Ver Más</button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="noticias__ctnd-title">
                                    <img src="<c:url value="/resources/img/botones-03.png"/>" width="28" height="28" alt="icono-publicaciones">
                                    &nbsp;<h2 class="text--oswald"> Noticias</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row news">
                            <div class="col-md-6">
                                <img class="news__image" src="<c:url value="/files/news-1.jpg"/>" alt="new title here">
                            </div>
                            <div class="col-md-6">
                                <h3>Lincoln MKX Concept Bows in Beijing</h3>
                                <p>Ea magnis! Erat vulputate sodales rerum! Nonummy adipisci orci tempore habitant, condimentum arcu voluptatum nobis repudiandae ultrices augue laboris sociosqu dolor litora cubilia mollit pellentesque irure. Reprehenderit, illum aspernatur irure autem doloribus</p>
                                <button class="btnn btnn--yellow">Ver Más</button>
                            </div>
                        </div>
                        <div class="row news">
                            <div class="col-md-6">
                                <h3>Lincoln MKX Concept Bows in Beijing</h3>
                                <p>Ea magnis! Erat vulputate sodales rerum! Nonummy adipisci orci tempore habitant, condimentum arcu voluptatum nobis repudiandae ultrices augue laboris sociosqu dolor litora cubilia mollit pellentesque irure. Reprehenderit, illum aspernatur irure autem doloribus</p>
                                <button class="btnn btnn--yellow">Ver Más</button>
                            </div>
                            <div class="col-md-6">
                                <img class="news__image" src="<c:url value="/files/news-1.jpg"/>" alt="new title here">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <aside class="col-md-4">

            </aside>
        </div>
    </section>
    <!-- ##################### -->
    <!-- ##################### -->

</main>


