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
        <h3>Sedes</h3><br />
        <h5>Cadastre uma sede ou visualize informações sobre já cadastradas!</h5>
      </div>
      <div class="col">
        <img src="image/gerenciamento.jpg" width="200" height="100"><br />
      </div>
    </div>

    
    <br>
    <div class="row container-fluid col-4">
      <a href="/index.html" class="btn btn-danger"> Voltar </a>
      </div>
    <br>
    <table class="table">
      <thead>
        <th>Sede</th>
        <th>Assistencial</th>
        <th>Jurídica</th>
        <th>Financeira</th>
        <th>Executiva</th>
        <th colspan="2"></th>
      </thead>
      <tbody>
        <c:forEach var="total" items="${totalHoras}">
          <tr>
            <td>${total.sede.nomefantasia}</td>
            <td>${total.totalAssistencial}</td>
            <td>${total.totalJuridica}</td>
            <td>${total.totalFinanceira}</td>
            <td>${total.totalExecutiva}</td>
                   

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