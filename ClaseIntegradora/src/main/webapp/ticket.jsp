<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>Comprar tickets</title>
    <style>
      .error{
          color: red;
      }
  </style> 
</head>
<body>
    
        <header>
          <nav class="navbar fixed-top navbar-expand-lg navbar-dark" style="background-color: #4b4e4e">
       
          <div class="container"> 
            
              <a class="navbar-brand" href="#">
                <img src="./images/codoacodo.png" alt="logocodoacodo" width="100" height="60" style="vertical-align: middle">
                 Conf Bs As
              </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                      
                <span class="navbar-toggler-icon"></span>
                </button>
                
                <div class="collapse navbar-collapse flex-row-reverse collapse" id="navbarNav" style="text-align: right;" aria-hidden="true"></i>
                  
                  <ul class="navbar-nav" style="text-align: right;">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#">La Conferencia</a></li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Los Oradores</a></li>
                    <li class="nav-item">
                       <a class="nav-link" href="#">El Lugar y La Fecha</a></li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Conviértete en Orador</a></li>
                  <li class="nav-item">
                    <a class="nav-link" href="comprar-tickets.html">Comprar Tickets</a></li>
                </ul>
              </div>
            </div>
          </nav> 
        </header>
        
        <main>
            <br>
            <br>
            <div class="container" style="margin-top: 100px" >
            <div class="row-mb-3" style="display: flex; justify-content: space-evenly">
            
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                <div class="card-body text-dark" style="text-align: center;">
                  <h5 class="card-title">Estudiante</h5>
                  <p class="card-text">Tiene un descuento</p>
                  <p><strong>80 %</strong></p>
                  <h6>Presentar documentación</h6>
                </div>
              </div>
             
              <div class="card border-success mb-3" style="max-width: 18rem;">
                    <div class="card-body text-dark" style="text-align: center;">
                  <h5 class="card-title">Trainer</h5>
                  <p class="card-text">Tiene un descuento</p>
                  <p><strong>50 %</strong></p>
                  <h6>Presentar documentación</h6>
                </div>
              </div>
              
              <div class="card border-warning mb-3" style="max-width: 18rem;">
                <div class="card-body text-dark" style="text-align: center;">
                  <h5 class="card-title">Junior</h5>
                  <p class="card-text">Tiene un descuento</p>
                  <p><strong>15 %</strong></p>
                  <h6>Presentar documentación</h6>
                </div>
              </div>
            </div>
        
          
        <div style="text-align: center">
            <p>VENTA</p>
            <h1>Valor del ticket $ 200</h1>
        </div>
        <form class="container-fluid" action="Update.jsp">

          <div class="row mb-3">
            <div class="col">
              <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>" class="form-control" placeholder="Nombre" aria-label="Nombre" id="nombre" required>
              <span id="errorNombre" class="error"></span>
            </div>
            <div class="col">
              <input type="text" name="apellido" value="<%= request.getParameter("apellido") %>" class="form-control" placeholder="Apellido" aria-label="Apellido" id="apellido" required>
              <span id="errorApellido" class="error"></span>
            </div>
            
            <br>
          </div>
          <div class="row mb-3">
            <div class="col">
          <input class="form-control" name="mail" value="<%= request.getParameter("mail") %>" type="email"  placeholder="mail@example.com" id="mail" required>
              <span id="errorEmail" class="error"></span> 
          </div>
        </div>
          
        
          <div class="row mb-3">
          <div class="col-sm-6">
             <label for="cantidad">Cantidad de entradas</label>
             <input id="cantidad" name="cantidad" value="<%= request.getParameter("cantidad") %>" type="number" min=1 max=10 class="form-control" placeholder="" >
                    <span id="errorCantidad" class="error"></span>
                  </div>
              
                
               <div class="col-md-6"> 
                <label for="categoria">Categoría</label>
                <select class="form-select" name="categoria"  aria-label="Default select example" id="categoria">
                  <option selected=""><%= request.getParameter("categoria") %></option>
                  <option value="Sin Categoria">Sin Categoria</option>
                  <option value="Estudiante">Estudiante</option>
                  <option value="Trainee">Trainee</option>
                  <option value="Junior">Junior</option>
                </select>
               </div>
                
            </div>
        
                      
          
        <div class="row mb-3">
          <div class="col">
        <div class="alert alert-primary" role="alert">
          Total a pagar: $ <span id="total_a_pagar"></span>
        </div>
          </div>
        </div>
      
        <div class="row mb-3">
          
          <div class="d-grid gap-2 col-4 mx-auto">
            <button class="btn btn-success" type="button" id="btnDelete" onclick="location.href='delete.jsp'">Borrar</button>
          </div>
            <div class="d-grid gap-2 col-4 mx-auto">
            <button class="btn btn-success" type="submit" id="btnUpdate" >Modificar</button>
          </div>
          <div class="d-grid gap-2 col-4 mx-auto">
            <button class="btn btn-success" type="button" id="btnConfirmar" onclick="location.href='comprar-tickets.html'">Confirmar</button>
          </div>
    </div>

      </form>
    

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        </main>
        <footer>
 
            <nav class="navbar fixed-bottom navbar-expand-lg navbar-dark" style="background-color: #4b4e4e">
                <div class="container">
                  <ul class="navbar-nav" style="justify-content: space-between; width: 100%">
                    <li class="nav-item">
                      <a class="nav-link" href="#">Preguntas Frecuentes</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Contáctanos</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Prensa</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Conferencias</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Términos y Condiciones</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Privacidad</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Estudiantes</a>
                    </li>
                  </ul>
                </div>
              </nav>
          </footer>
       <script src="./js/script.js"></script> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">

    </script>
</body>


</html>

