<%-- 
    Document   : navbar
    Created on : 5 abr. 2022, 13:48:52
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Source bootswatch  https://bootswatch.com/quartz/ -->   
        <!-- Source bootswatch  https://bootswatch.com/journal/  -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <!-- <link rel="stylesheet" href="https://bootswatch.com/5/quartz/bootstrap.min.css"> -->
        <!-- <link rel="stylesheet" href="https://bootswatch.com/5/journal/bootstrap.min.css"> -->
        <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
        <link rel="stylesheet" href="css/journal_bootstrap.min.css">

        <title>OdonTam - Home</title>
    </head>
    <body>
        <!-- navbar - o barra de navegacion -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
          <div class="container-fluid">
            <img class="me-2" src="img/ico/diente_06.png" alt="" width="50">
            <a class="navbar-brand" href="#">OdonTam</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>    
            <div class="collapse navbar-collapse" id="navbarColor01">
              <ul class="navbar-nav me-auto">
                <li class="nav-item">
                  <a class="nav-link active" href="#">Home
                    <!-- <span class="visually-hidden">(current)</span> -->
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="medicos.jsp">Medicos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="pacientes.jsp">Pacientes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="citas.jsp">Citas</a>
                </li>
              </ul>                         
              <a href="index.jsp" class="btn btn-light" type="submit">Cerrar Sesión</a>
            </div>
          </div>
        </nav>
    </body>
</html>
