<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumno.aspx.cs" Inherits="prueba_colegio.Alumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Alumno</title>
    <link href="../../resource/css/estilos/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../resource/css/estilos/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../resource/css/estilos/css/datepicker3.css" rel="stylesheet" />
    <link href="../../resource/css/estilos/css/styles.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

</head>
<body>
        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
                <a class="navbar-brand" href="#"><span>COLE</span>GIO</a>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" href="../Index.aspx">
                            <em class="fa fa-sign-out "></em><span class="label label-info"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
        <div class="profile-sidebar">
            <div class="profile-userpic">
                <img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt=""/>
            </div>
            <div class="profile-usertitle">
                <div class="profile-usertitle-name">Usuario</div>
                <asp:Label ID="lblLogueado1" runat="server"></asp:Label> <asp:Label ID="lblNombreAlum" runat="server"></asp:Label>
            </div>
            <div class="clear"></div>
        </div>
        <div class="divider"></div>

        <ul class="nav menu">
            <li class="parent ">
                <a data-toggle="collapse" href="#sub-item-1">
                    <em class="fa fa-navicon">&nbsp;</em> Acciones <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-1">
                    <li target="principal">
                        <a class="" href="CrudAlumno.aspx" target="principal">
                            <span class="fa fa-arrow-right">&nbsp; Consultar Alumno</span> 
                        </a>
                    </li>
                    <li>
                        <a class="" href="RegistroMaterias.aspx" target="principal">
                            <span class="fa fa-arrow-right">&nbsp; Registrar Materias</span> 
                        </a>
                    </li>
                    <li>
                        <a class="" href="CrudMateria.aspx" target="principal">
                            <span class="fa fa-arrow-right">&nbsp; Consultar Materias</span> 
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <!--/.sidebar-->

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <iframe style="height: 100vh; width:100%;" src="CrudProfesores.aspx" frameborder="0" name="principal">
			
		</iframe>

    </div>
    <!--/.main-->

    <script src="../../resource/js/jquery-1.11.1.min.js"></script>
    <script src="../../resource/js/bootstrap.min.js"></script>
    <script src="../../resource/js/bootstrap-datepicker.js"></script>
    <script src="../../resource/js/custom.js"></script>


</body>
</html>
