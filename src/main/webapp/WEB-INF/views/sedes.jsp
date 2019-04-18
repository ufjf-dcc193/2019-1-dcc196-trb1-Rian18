<%@page pageEncoding = "utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Início - Trabalho 1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"rel="stylesheet">
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>
    
    <br/>
    <!-- Parte superior das páginas -->
    <div class="container">
            <div class="row">
              <div class="col">
                <h3>Sedes</h3><br/>
                <h5>Cadastre uma sede ou visualize informações sobre já cadastradas!</h5>
              </div>
              <div class="col">
                    <img src="image/" width="100" height="100"><br/>
                  </div>
            </div>

            <div class="row">
                    <div class="col">
                        <h6>Cadastro</h6>
                        <form action="post">
                            Nome Fantasia:<br>
                            <input type="text" name="fantasia" value="">
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
                    
                    <div class="col"></div>

    </div>
    
   

</body>
</html>