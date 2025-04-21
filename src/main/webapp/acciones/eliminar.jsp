
<%@page import="com.mycompany.sistema_de_bibliotecas.biblioteca.*"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../assets/js/color-modes.js"></script>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Sistema de Biblioteca</title>

        <meta name='viewport' content='width=device-width, initial-scale=1'>

        <!-- Boostrap 5.3 -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/blog/">



        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
        <!-- cdn jquery v 3.7.1 -->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


        <!-- cdn data tablas .net -->

        <link href="https://cdn.datatables.net/v/bs5/jszip-3.10.1/dt-2.1.8/b-3.1.2/b-colvis-3.1.2/b-html5-3.1.2/b-print-3.1.2/r-3.0.3/datatables.min.css" rel="stylesheet">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/v/bs5/jszip-3.10.1/dt-2.1.8/b-3.1.2/b-colvis-3.1.2/b-html5-3.1.2/b-print-3.1.2/r-3.0.3/datatables.min.js"></script>

        <!-- cdn sweetalert2 -->

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <!-- Archivos personalizados -->
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

        <link href="../css/interfas.css" rel="stylesheet">
        <link href="../css/diseño_interfas.css" rel="stylesheet">
        <link href="../css/diseño_interfas.rtl.css" rel="stylesheet">






    </head>
    <body>


        <!-- Bot Asistente -->
        <script src="https://cdn.botpress.cloud/webchat/v2.3/inject.js"></script>
        <script src="https://files.bpcontent.cloud/2025/04/09/21/20250409212341-B21H4SIX.js"></script>

        <div class="dropdown position-fixed bottom-0 start-0 mb-3 ms-3 bd-mode-toggle">

            <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
                    id="bd-theme"
                    type="button"
                    aria-expanded="false"
                    data-bs-toggle="dropdown"
                    aria-label="Toggle theme (auto)">
                <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
                <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
            </button>
            <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
                <li>
                    <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
                        <svg class="bi me-2 opacity-50" width="1em" height="1em"><use href="#sun-fill"></use></svg>
                        Light
                        <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
                    </button>
                </li>
                <li>
                    <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
                        <svg class="bi me-2 opacity-50" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
                        Dark
                        <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
                    </button>
                </li>
                <li>
                    <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
                        <svg class="bi me-2 opacity-50" width="1em" height="1em"><use href="#circle-half"></use></svg>
                        Auto
                        <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
                    </button>
                </li>
            </ul>
        </div>
        <!-- Custom styles for this template -->
        <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet"><!-- Custom styles for this template -->


        <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
    </symbol>
    <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
    </symbol>
    <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
    </symbol>
    <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
    </symbol>
    </svg>


    <div class="container">
        <header class="border-bottom lh-1 py-3">
            <div class="row flex-nowrap justify-content-between align-items-center">
                <div class="col-4 pt-1">
                    <img class="img_logo" src="https://tse2.mm.bing.net/th/id/OIG1.4QhTyRMQStAJ0tEoE3GB?pid=ImgGn" alt="logo"/>
                </div>
                <div class="col-4 text-center">
                    <a class="blog-header-logo text-body-emphasis text-decoration-none" href="#">BibioGestor</a>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-center">


                </div>
            </div>
        </header>




        <main class="container mt-3">
            <div class="row">
                <div class="col-md-2"></div>
                <div class=" col-md-8 p-md-3 mb-4 rounded text-body-emphasis ">

                    <div class="col-md-8">
                        <div class="centrar">
                            <h1 class="display-4 fst-italic">Eliminar Libro</h1>

                        </div>
                        <%
                            LibroAdministrador administrador = LibroAdministrador.getInstance();

                            int idLibro = 0;
                            try {
                                idLibro = Integer.parseInt(request.getParameter("id"));
                            } catch (NumberFormatException e) {
                                response.sendRedirect("listarLibros.jsp");
                                return;
                            }

                            Libro libro = administrador.getBuscarLibroPorId(idLibro);

                            if (libro == null) {
                                response.sendRedirect("listarLibros.jsp");
                                return;
                            }

                            if (request.getMethod().equals("POST")) {
                                boolean eliminar = administrador.eliminarLibro(idLibro);

                                if (eliminar) {
                                    response.sendRedirect("listarLibros.jsp");
                                } else {

                        %>
                        <div class="alert alert-danger">
                            <p>No se puede eliminar el Libro porque esta actualmente en prestamo.</p>
                            <div class="centrar">
                                <a href="listarLibros.jsp">Regresar</a>
                            </div>
                        </div>
                        <%                                        }
                            }
                        %>
                        <div class=" col-md-12 alert alert-danger  ">
                            <div class="centrar">
                                <h2><%= libro.getNombre()%></h2>    
                            </div>

                            <p class="lead my-3"><b>ID: </b><%= libro.getId()%> </p>
                            <p class="lead my-3"><b>Tipo de Libro: </b><%= libro.getTipoLibro()%> </p>
                            <p class="lead my-3"><b>Autor: </b><%= libro.getAutor()%> </p>
                            <p class="lead my-3"><b>Disponible: </b><%= libro.isDisponible() ? "Si esta Diponible" : "No esta Dsiponible"%> </p>
                            <%
                                if (libro.getTipoLibro().equals("Ficcion")) {
                                    LibroFiccion libroFiccion = (LibroFiccion) libro;
                            %>
                            <p class="lead my-3"><b>Genero: </b><%= libroFiccion.getGenero()%> </p>

                            <%
                            } else if (libro.getTipoLibro().equals("No Ficcion")) {
                                LibroNoFiccion libroNoFiccion = (LibroNoFiccion) libro;
                            %>
                            <p class="lead my-3"><b>Genero: </b><%= libroNoFiccion.getGenero()%> </p>
                            <%
                            } else if (libro.getTipoLibro().equals("Referencia")) {
                                LibroReferencia libroReferencia = (LibroReferencia) libro;
                            %>
                            <p class="lead my-3"><b>Genero: </b><%= libroReferencia.getGenero()%> </p>
                            <%
                                }
                            %>

                            <form method="post" action="eliminar.jsp?id=<%= libro.getId()%>">
                                <div class="form-group centrar">
                                    <button type="submit" class="btn btn-danger">Eliminar</button>
                                    <a href="listarLibros.jsp" class="btn btn-primary">Cancelar</a>
                              
                                </div>
                            </form>

                        </div>
                    </div>

                </div>
                <div class="col-md-2"></div>

            </div>


        </main>







    </body>
</html>
