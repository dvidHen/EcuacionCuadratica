<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="./shared/head.jsp" />
<body>
<jsp:include page="./shared/header.jsp" />
<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <div class="row">
            <div class="col s8">
                <img src="img/math.png"  width="100%"/>
            </div>

            <form class="col s4" action="resultados.jsp" method="post">
                <blockquote>
                   Proporciona los coeficinetes de la ecuación de segundo grado de la forma:
                </blockquote>
                <div class="divider" ></div>
                <div class="col s12">
                    <img src="img/ecuacion1.png"  width="100%"/>
                </div>
                <div class="divider" ></div>
                <div class="col s12">
                    <img src="img/ecuacion2.png"  width="100%"/>
                </div>
                <div class="divider" ></div>

                <div class="row">
                    <div class="input-field col s12">
                        <input name="number-one"  placeholder="Coeficiente a" id="number-one" type="number" class="validate">
                        <label for="number-one">Número a</label>
                    </div>
                    <div class="input-field col s12">
                        <input name="number-two"  placeholder="Coeficiente b"  id="number-two" type="number" class="validate">
                        <label for="number-two">Número b</label>
                    </div>
                    <div class="input-field col s12">
                        <input name="number-three"  placeholder="Coeficiente c"  id="number-three" type="number" class="validate">
                        <label for="number-three">Número c</label>
                    </div>
                </div>


                <div class="row">

                    <div class="input-field col s6">
                        <button  type="reset" class="waves-effect waves-light btn"><i class="material-icons left">delete</i>Borrar</button>
                    </div>
                    <div class="input-field col s6">
                        <button type="submit" class="waves-effect waves-light btn"><i class="material-icons left">cloud</i>Enviar</button>
                    </div>
                </div>

            </form>
        </div>

    </div>
</div>
<jsp:include page="./shared/footer.jsp" />
<!--JavaScript at end of body for optimized loading-->
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="./js/materialize.js"></script>
</body>
</html>
