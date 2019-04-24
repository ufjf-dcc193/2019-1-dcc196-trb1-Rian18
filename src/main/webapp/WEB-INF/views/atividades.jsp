<%@page pageEncoding = "utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Membros - Trabalho 1</title>
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
                <h3>Atividades</h3><br />
                <h6>Cadastre uma atividade ou visualize informações sobre as já cadastradas!</h6>
            </div>
            <div class="col">
                <img src="image/atividades.jpg" width="100" height="100"><br />
            </div>
        </div>

        <c:if test="${param.excluido==true}">
            <div class="alert alert-success alert-dismissible fade show col-lg-12 text-center" role="alert">
                <strong>Atividade deletada da Sede com sucesso</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>

        <c:if test="${param.cadastrar==true}">
            <div class="alert alert-success alert-dismissible fade show col-lg-12 text-center" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h6>Cadastro</h6>
                <form class="form" method="post" action="/atividade_cadastrar.html">
                    <div class="form-group">
                        <label for="sede">Sede da Atividade</label>
                        <select id="sede" name='sede' class="form-control">
                            <c:forEach items="${sedes}" var="sede">
                                <option value="${sede.id}">${sede.nomefantasia}</option>
                            </c:forEach>
                        </select>
                    </div>
                    Título:<br>
                    <input type="text" name="titulo" value="">
                    <br>
                    Descricao: <br>
                    <input type="text" name="descricao" value="">
                    <br>
                    Data Início:<br>
                    <input type="text" name="dataInicio" value="">
                    <br>
                    Data Final:<br>
                    <input type="text" name="dataFim" value="">
                    <br>
                    Horas Assistencial:<br>
                    <input type="text" name="horasAssistencial" value="">
                    <br>
                    Horas Jurídica:<br>
                    <input type="text" name="horasJuridica" value="">
                    <br>
                    Horas Financeira:<br>
                    <input type="text" name="horasFinanceira" value="">
                    <br>
                    Horas Executiva:<br>
                    <input type="text" name="horasExecutiva" value="">
                    <br>
                    <br><br>
                    <input type="submit" class="btn btn-success" value="Salvar">
                </form>
            </div>
        </c:if>

        <c:if test="${param.alterado==true}">
            <div class="alert alert-success alert-dismissible fade show col-lg-12 text-center" role="alert">
                <strong>Alteração realizada com sucesso</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
        <c:if test="${param.cadastrado==true}">
            <div class="alert alert-success alert-dismissible fade show col-lg-12 text-center" role="alert">
                <strong>Nova Atividade inserida com sucesso</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
        <br>
        <div class="row container-fluid col-4">
            <a href="/index.html" class="btn btn-danger"> Voltar <i class="fas fa-user-plus"></i></a>
            <a href="/atividades.html/cadastrar" class="btn btn-success">Nova Atividade <i
                    class="fas fa-user-plus"></i></a>
        </div>
        <br>
        <table class="table">
            <thead>
                <th>Título</th>
                <th>Data Início</th>
                <th>Data Fim</th>
                <th>Horas Assistencial</th>
                <th>Horas Jurídica</th>
                <th>Horas Financeira</th>
                <th>Horas Executiva</th>
                <th>Sede</th>
                <th colspan="2"></th>
            </thead>
            <tbody>
                <c:forEach var="atividade" items="${atividades}">
                    <tr>
                        <td>${atividade.titulo}</td>
                        <td>${atividade.dataInicio}</td>
                        <td>${atividade.dataFim}</td>
                        <td>${atividade.horasAssistencial}</td>
                        <td>${atividade.horasJuridica}</td>
                        <td>${atividade.horasFinanceira}</td>
                        <td>${atividade.horasExecutiva}</td>
                        <td>${atividade.sede.nomefantasia}</td>
                        <td> <a href="atividade_deletar.html/${atividade.id}" class="btn btn-danger">Deletar Atividade</a></td>
                        <td><a href="atividade_editar.html/${atividade.id}" class="btn btn-primary">Editar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="col"></div>

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