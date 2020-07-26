
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Definicion.*" %>
<html>
<jsp:include page="./shared/head.jsp" />
<body>
<jsp:include page="./shared/header.jsp" />
<%
    String a =  request.getParameter("number-one");
    String b =  request.getParameter("number-two");
    String c =  request.getParameter("number-three");
    Calcula n1= new Calcula(a, b, c);

    n1.calculo();
    
        if (! n1.getImaginaria()){
            Archivo.add(n1,"");
        }
     
%>
<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <h2 class="center-align">Resultados</h2>
        <div class="row">
            <table class="striped col s6 offset-s3">
                <tbody>
                <tr>
                    <td class="right-align ">
                        Resultado Ecuación 1:
                    </td>
                    <td class="left-align">
                        <%
                            if (n1.getImaginaria()){
                                out.print("Sin solución Real");
                            }else{
                                out.print(n1.getX1());
                            }
                        %>
                    </td>
                </tr>
                <tr>
                    <td class="right-align ">
                        Resultado Ecuación 2:
                    </td>
                    <td class="left-align">
                        <%
                            if (n1.getImaginaria()){
                                out.print("Sin solución Real");
                            }else{
                                out.print(n1.getX2());
                            }
                        %>
                    </td>
                </tr>

                </tbody>
            </table>

            <a class="col s6 offset-s3 btn waves-effect waves-light" href="index.jsp">Regresar
                <i class="material-icons right">arrow_back</i>
            </a>

        </div>


    </div>
</div>
<jsp:include page="./shared/footer.jsp" />
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="./js/materialize.js"></script>
</body>
</html>
