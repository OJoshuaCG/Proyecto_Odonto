<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ASPNET_Odonto.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="css/journal_bootstrap.min.css"/>

    <title>OdonTam - Home</title>
</head>
<body class="text-center">
    <form runat="server">
<!-- navbar - o barra de navegacion -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <div class="container-fluid">
        <img class="me-2" src="img/ico/diente_06.png" alt="" width="50"/>
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
              <a class="nav-link" href="medicos.html">Medicos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pacientes.html">Pacientes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Citas</a>
            </li>
          </ul>                         
          <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesión" OnClick="BtnCerrar_Click"/>
        </div>
      </div>
    </nav>

    <!-- main - donde almacenara todo el contenido de la pagina separado por divs u otras etiquetas -->
    <main class="container my-3">

      <asp:Label CssClass="h2" runat="server" ID="lblUser"></asp:Label>
      <!-- grupo de cartas - este contiene las imagenes y texto -->
      <div class="card-group">
        <div class="card mx-3">
          <img src="img/medico_01.jpg" class="card-img" alt="medico"/>
          <div class="card-body">
            <h5 class="card-title">Medicos</h5>
            <p class="card-text">Contamos con medicos especialistas en su área. Si cuentas con algun problema, no dudes en contactarnos, alguno podrá ayudarte.</p>            
          </div>
        </div>
        <div class="card mx-3">
          <img src="img/sonrisa_02.jpg" class="card-img" alt="paciente"/>
          <div class="card-body">
            <h5 class="card-title">Pacientes</h5>
            <p class="card-text">Sonríe! Ten la confianza con nosotros, tu sonrisa te lo agradecera.</p>            
          </div>
        </div>
        <div class="card mx-3">
          <img src="img/agenda_01.jpg" class="card-img" alt="citas"/>
          <div class="card-body">
            <h5 class="card-title">Citas</h5>
            <p class="card-text">Agenda tu cita cuando antes!. Contactanos para reservarte el día y la hora, no digas "luego...".</p>            
          </div>
        </div>
      </div>



    </main>
</form>
    <script src="js/bootstrap/bootstrap.bundle.min.js"></script>

</body>
</html>
