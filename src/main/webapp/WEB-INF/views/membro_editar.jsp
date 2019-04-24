<%@page pageEncoding = "utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Início - Trabalho 1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body>

    <br />
    <!-- Parte superior das páginas -->
    <div class="container">
        <div class="row">
            <div class="col">
                <h3>Membros</h3><br />
                <h5>Edite ou delete um membro já cadastrado!</h5>
            </div>
            <div class="col">
                <img src="image/" width="100" height="100"><br />
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12"></div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <form class="form" method="post" action="/membro_editar.html">

                    <input type="hidden" name="idMembro" value="${membro.idMembro}">
                    <div class="form-group">
                        <label for="sede">Sede do Membro</label>
                        <select id="sede" name='sede' class="form-control">
                            <c:forEach items="${sedes}" var="sede">
                                <option value="${sede.id}">${sede.nomefantasia}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nome">Nome</label>
                        <input type="text" class="form-control" id="nome" name="nome"
                            placeholder="Nome" value="${membro.nome}">
                    </div>
                    <div class="form-group">
                        <label for="funcao">Função</label>
                        <input type="tel" class="form-control" id="funcao" name="funcao" placeholder="Função"
                            value="${membro.funcao}">
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <input type="email" class="form-control" id="email" name="email"
                            placeholder="E-mail" value="${membro.email}">
                    </div>
                    <div class="form-group">
                        <label for="entrada">Data de Entrada</label>
                        <input type="text" class="form-control" id="dataEntrada" name="dataEntrada" placeholder=" Data de Entrada"
                            value="${membro.dataEntrada}">
                    </div>
                    <div class="form-group">
                        <label for="saida">Data de Saída</label>
                        <input type="text" class="form-control" id="dataSaida" name="dataSaida" placeholder="Data de Saida"
                            value="${membro.dataSaida}">
                    </div>
                   
                    <button type="submit" class="btn btn-success">Salvar </button>
                    <button type="reset" class="btn btn-danger">Cancelar</button>
                </form>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12"></div>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>

</body>

</html>