<%-- 
    Document   : index
    Created on : 5 abr. 2022, 13:33:02
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <!-- <link rel="stylesheet" href="https://bootswatch.com/5/quartz/bootstrap.min.css"> -->
        <!-- <link rel="stylesheet" href="https://bootswatch.com/5/journal/bootstrap.min.css"> -->
        <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
        <link rel="stylesheet" href="css/journal_bootstrap.min.css">
        <link rel="stylesheet" href="css/signin.css">
        <link rel="stylesheet" href="css/personal.css">
        
        <title>OdonTam</title>
        
    </head>
    <body class="text-center">
        <div class="row">      
            <img src="img/banner_03.jpg" alt=""> 

            <main class="form-signin">
              <form method="post" action="<%= request.getContextPath() %>/LoginController">                  
                <h3 class="mb-3 fw-normal">Ingrese su usuario y contraseña</h3>      

                <div class="form-floating">
                  <input class="form-control" id="floatingInput" name="txtUsuario" placeholder="Usuario" required>
                  <label for="floatingInput">Usuario</label>
                </div>
                <div class="form-floating">
                  <input type="password" class="form-control" id="floatingPassword" name="txtPass" placeholder="Password" required>
                  <label for="floatingPassword">Contraseña</label>
                </div>

                <!-- <div class="checkbox mb-3">
                  <label>
                    <input type="checkbox" value="recordar"> Recordar
                  </label>
                </div> -->
                <input class="w-100 btn btn-lg btn-primary" type="submit" name="btnLogin" value="Sign-in">
                <p class="mt-5 mb-3 text-muted">UAT - BCHSZ</p>
              </form>
            </main>

          </div>
    </body>
</html>
