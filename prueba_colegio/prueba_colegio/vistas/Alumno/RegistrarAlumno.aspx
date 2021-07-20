<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarAlumno.aspx.cs" Inherits="prueba_colegio.RegistrarAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>REGISTRAR ALUMNO</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="../../resource/css/estilos.css" rel="stylesheet" />
    <link href="../../resource/css/main.css" rel="stylesheet" />
</head>
<body>
    <div id="page-wrapper">

        <!-- Header -->
        <header id="header">
            <h1><a href="../../Index.aspx">Regresar</a></h1>
        </header>

        <!-- Main -->
        <article id="main">
            <section class="wrapper style5">
                <div class="inner">
                    <section>

                        <form id="form1" runat="server">
                            <div>
                                <h3 class="d-flex  justify-content-center">REGISTRAR ALUMNO</h3>
                                <asp:Label ID="lblLogueado" runat="server"></asp:Label>

                            </div>
                            <div>
                                <div>
                                    <asp:Label ID="lblCodiAlumno" runat="server" Text="Código del Alumno: "></asp:Label>
                                    <asp:TextBox ID="txtCodiAlumno" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>

                                </div>
                                <div>
                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre: "></asp:Label>
                                    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblApellido" runat="server" Text="Apellido: "></asp:Label>
                                    <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblCorreo" runat="server" Text="Correo: "></asp:Label>
                                    <asp:TextBox ID="txtCorreo" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblClave" runat="server" Text="Clave: "></asp:Label>
                                    <asp:TextBox ID="txtClave" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="text-center">
                                <asp:Button ID="btnRegistrar" CssClass="btn btn-primary" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
                            </div>
                        </form>
                    </section>
                </div>
            </section>
        </article>
        <!-- Footer -->
        <footer id="footer">
            <ul class="icons">
                <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
                <li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
            </ul>
        </footer>
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="../../resource/js/jquery.min.js"></script>
    <script src="../../resource/js/jquery.scrollex.min.js"></script>
    <script src="../../resource/js/jquery.scrolly.min.js"></script>
    <script src="../../resource/js/skel.min.js"></script>
    <script src="../../resource/js/util.js"></script>
    <script src="../../resource/js/main.js"></script>
</body>
</html>
