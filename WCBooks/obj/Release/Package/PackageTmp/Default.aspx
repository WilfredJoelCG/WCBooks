<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WCBooks.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>WCBooks</title>
    <link href="Content/css/jquery-ui.css" rel="stylesheet" />
    <script src="/Scripts/jquery-1.8.2.min.js"></script>
    <script src="/Scripts/jquery-ui.js"></script>
    <script>
        $(function () {
            $(".datepicker").datepicker();
        });
    </script>

    <script type="text/javascript">
        var dir = window.document.URL;
        var dir2 = encodeURIComponent(dir);
        var tit = window.document.title;
        var tit2 = encodeURIComponent(tit);
    </script>


    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />



    <!-- Bootstrap core CSS -->

    <link href="Content/assets/css/bootstrap.css" rel="stylesheet" />

    <!-- Custom styles for this template -->

    <link href="Content/assets/css/main.css" rel="stylesheet" />
    <script src="Content/assets/js/hover.zoom.js"></script>
    <script src="Content/assets/js/hover.zoom.conf.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     <!-- Static navbar -->
        <div class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">WCBooks</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right ">
                        <li><a href="/Login.aspx">Login</a></li>
                    </ul>

                </div>
                   <!--/.nav-collapse -->
            </div>

        </div>
        <div id="cuerpo">
          <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           

              <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
    


    <asp:DataList CellSpacing="5" CellPadding="5" ID="LibrosDataList" 
         RepeatColumns="3" RepeatDirection="Horizontal" 
        runat="server" OnSelectedIndexChanged="LibrosDataList_SelectedIndexChanged"  >
        <ItemTemplate>


            <table style="width: 100%;">
                <tr>
                    <td rowspan="4">
                        <img width="130" height="150" src="<%#Eval("Imagen") %>" /></td>
                    <td>Codigo:</td>
                    <td>
                        <asp:Label ID="CodigoLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "IdLibro") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Titulo:</td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Titulo") %></td>
                </tr>
                <tr>
                    <td>Autor/es:</td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Autor") %> </td>
                </tr>
                <tr>
                    <td>Edicion</td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Edicion") %> </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="PedirHyperLink" CssClass="addtothecart" CommandName="Select"
                            runat="server">Pedir</asp:LinkButton></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
        </ItemTemplate>
    </asp:DataList>

    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
        </div>
        <div id="footer">
            <div>
                <div class="row">
                    <div class="col-lg-4" >
                        <h4 >Ubicacion</h4>
                        <p>
                            Tenares,
                            <br />
                            Duarte, R.D.
                        </p>
                    </div>
                    <!-- /col-lg-4 -->

                    <div class="col-lg-4">
                        <h4>Compartir en:&nbsp;</h4>
                        <p>
                            <a href="javascript:window.location.href='https://plus.google.com/share?url='+encodeURIComponent(location);void0;">Google+</a><br />
                            <a href="javascript:window.location.href=('http://twitter.com/?status='+tit2+'%20'+dir+'')">Twitter</a><br />
                            <a href="javascript:window.location.href=('http://www.facebook.com/share.php?u='+dir2+'&t='+tit2+'')">Facebook</a>

                        </p>
                    </div>
                    <!-- /col-lg-4 -->

                    <div class="col-lg-4">
                        <h4>Acerca de</h4>
                        <p>Wilfred Castillo</p>
                    </div>
                    <!-- /col-lg-4 -->

                </div>

            </div>
        </div>
    </form>
</body>
</html>
