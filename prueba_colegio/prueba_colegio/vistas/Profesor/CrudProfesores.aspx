<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudProfesores.aspx.cs" Inherits="prueba_colegio.CrudProfesores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LISTA PROFESOR</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="../../resource/css/estilos.css" rel="stylesheet" />
    <link href="../../resource/css/main.css" rel="stylesheet" />
</head>
<body>
    <!-- Main -->
    <section class="wrapper style5">
        <div class="inner">
            <section>
                <form id="form1" runat="server">
                    <div>
                        <asp:Panel ID="pnlConsulta" runat="server" Height="406px" Width="1200px">
                            <asp:Label ID="Label1" runat="server" class=" d-flex justify-content-center" Text="Lista Profesores"></asp:Label>
                            <br />
                            <asp:GridView ID="gdvTablaProfesor" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gdvTablaProfesor_RowCommand" Width="16px" Height="287px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="IdentiProfe" HeaderText="Identificación Profe" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                                    <asp:BoundField DataField="Edad" HeaderText="Edad" />
                                    <asp:BoundField DataField="Direccion" HeaderText="Dirección" />
                                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                                    <asp:BoundField DataField="Correo" HeaderText="Correo" />
                                    <asp:TemplateField HeaderText="Acciones">
                                        <ItemTemplate>
                                            <asp:ImageButton Width="20px" ID="imgActualizar" runat="server" ImageUrl="~/resource/img/editar.png" CommandName="Actualizar" />
                                            <asp:ImageButton ID="imgEliminar" runat="server" ImageUrl="~/resource/img/eliminar.png" CommandName="Eliminar" Width="20px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </asp:Panel>
                        <asp:Panel ID="pnlActualizar" runat="server" Wrap="False" Visible="False">
                            <asp:Label ID="Label2" runat="server" class="d-flex  justify-content-center" Text="Actualizar datos Profesor"></asp:Label>
                            <div>
                                <div>
                                    <asp:TextBox ID="txtIdentiProfe" CssClass="form-control" runat="server" TextMode="Number" Visible="false" Enabled="False"></asp:TextBox>
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
                                    <asp:Label ID="lblEdad" runat="server" Text="Edad: "></asp:Label>
                                    <asp:TextBox ID="txtEdad" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblDireccion" runat="server" Text="Dirección: "></asp:Label>
                                    <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblTelefono" runat="server" Text="Teléfono: "></asp:Label>
                                    <asp:TextBox ID="txtTelefono" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblCorreo" runat="server" Text="Correo: "></asp:Label>
                                    <asp:TextBox ID="txtCorreo" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="text-center">
                                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </form>
            </section>
        </div>
    </section>
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
