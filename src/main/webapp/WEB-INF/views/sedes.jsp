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
        <h3>Sedes</h3><br />
        <h5>Cadastre uma sede ou visualize informações sobre já cadastradas!</h5>
      </div>
      <div class="col">
        <img src="image/" width="100" height="100"><br />
      </div>
    </div>

    <c:if test="${param.excluido==true}">
      <div class="alert alert-success alert-dismissible fade show col-lg-12 text-center" role="alert">
        <strong>Sede deletada do sistema</strong>
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
        <form class="form" method="post" action="/sede-cadastrar.html">
          Nome Fantasia:<br>
          <input type="text" name="nomefantasia" value="">
          <br>
          Endereço: <br>
          <input type="text" name="rua" value="">
          <br>
          Bairro:<br>
          <input type="text" name="bairro" value="">
          <br>
          Cidade:<br>
          <input type="text" name="cidade" value="">
          <br>
          Estado:<br>
          <input type="text" name="estado" value="">
          <br>
          Telefone:<br>
          <input type="text" name="telefone" value="">
          <br>
          Endereço na web:<br>
          <input type="text" name="endweb" value="">
          <br><br>
          <input type="submit" value="Salvar">
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
        <strong>Nova sede inserida com sucesso</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    </c:if>
    <br>
    <div class="row container-fluid col-4">
      <a href="/sedes.html/cadastrar" class="btn btn-success">Cadastrar Sede <i class="fas fa-user-plus"></i></a>
    </div>
    <br>
    <table class="table">
      <thead>
        <th>Nome Fantasia</th>
        <th>Endereço Web</th>
        <th>Telefone</th>
        <th>Cidade</th>
        <th>UF</th>
        <th colspan="2"></th>
      </thead>
      <tbody>
        <c:forEach var="sede" items="${sedes}">
          <tr>
            <td>${sede.nomefantasia}</td>
            <td>${sede.endweb}</td>
            <td>${sede.telefone}</td>
            <td>${sede.cidade}</td>
            <td>${sede.uf}</td>
            <td><a href="sede-alterar.html/${sede.id}" class="btn btn-primary">Alterar</a></td>
            <td><a href="sede-deletar.html/${sede.id}" class="btn btn-danger">Deletar</a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>


   
      <div class="col"></div>

    </div>

    <!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>

</html>