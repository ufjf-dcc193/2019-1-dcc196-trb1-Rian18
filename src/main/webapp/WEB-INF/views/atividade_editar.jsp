<%@page pageEncoding = "utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Início - Trabalho 1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">


</head>

<body>

    <br />
    <!-- Parte superior das páginas -->
    <div class="container">
        <div class="row">
            <div class="col">
                <h3>Atividades</h3><br />
                <h5>Edite ou delete uma atividade já cadastrada!</h5>
            </div>
            <div class="col">
                <img src="image/" width="100" height="100"><br />
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12"></div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <form class="form" method="post" action="/atividade_editar.html">

                    <input type="hidden" name="id" value="${atividade.id}">
                    <div class="form-group">
                        <label for="sede">Sede da Atividade</label>
                        <select id="sede" name='sede' class="form-control">
                            <c:forEach items="${sedes}" var="sede">
                                <option value="${sede.id}">${sede.nomefantasia}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="titulo">Nome</label>
                        <input type="text" class="form-control" id="titulo" name="titulo"
                            placeholder="Título" value="${atividade.titulo}">
                    </div>
                    <div class="form-group">
                        <label for="descricao">Descrição</label>
                        <input type="descricao" class="form-control" id="descricao" name="descricao" placeholder="Função"
                            value="${atividade.descricao}">
                    </div>
                    <div class="form-group">
                        <label for="dataInicio">Data Inicial</label>
                        <input type="dataInicio" class="form-control" id="dataInicio" name="dataInicio"
                            placeholder="Data Início" value="${atividade.dataInicio}">
                    </div>
                    <div class="form-group">
                        <label for="dataFim">Data Final</label>
                        <input type="dataFim" class="form-control" id="dataFim" name="dataFim"
                            placeholder="Data Fim" value="${atividade.dataFim}">
                    </div>
                    <div class="form-group">
                        <label for="horasAssistencial">Horas Assitencial</label>
                        <input type="text" class="form-control" id="horasAssistencial" name="horasAssistencial" placeholder=" Data de Entrada"
                            value="${atividade.horasAssistencial}">
                    </div>

                    <div class="form-group">
                        <label for="horasJuridica">Horas Jurídica</label>
                        <input type="text" class="form-control" id="horasJuridica" name="horasJuridica" placeholder=" Data de Entrada"
                            value="${atividade.horasJuridica}">
                    </div>
                    <div class="form-group">
                        <label for="horasFinanceira">Horas Financeira</label>
                        <input type="text" class="form-control" id="horasFinanceira" name="horasFinanceira" placeholder=" Data de Entrada"
                            value="${atividade.horasFinanceira}">
                    </div>
                    <div class="form-group">
                        <label for="horasExecutiva">Horas Executiva</label>
                        <input type="text" class="form-control" id="horasExecutiva" name="horasExecutiva" placeholder=" Data de Entrada"
                            value="${atividade.horasExecutiva}">
                    </div>
                                      
                    <button type="submit" class="btn btn-success">Salvar </button>
                    <button type="reset" class="btn btn-danger">Cancelar</button>
                </form>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12"></div>
        </div>
       <!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>