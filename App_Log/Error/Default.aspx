<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="App_Log_Error_Default" %>

<!doctype html>
<html lang="en" data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
<head runat="server">
<title runat="server"></title>
  <!-- Required assets -->
 <meta http-equiv="Content-Language" content="en-gb" />
<meta name="language" content="en" />
<meta name="robots" content="noindex, nofollow" />
<sitectrl:HtmlMeta id="PageMetaContent" runat="server" /><%= vbCrLf%>
      <sitectrl:HtmlHead id="PageHeadContent" runat="server" /><%= vbCrLf%>
      <style>
        .jumbotron {font-family: "Dosis",sans-serif;}
        .jumbotron h1 {font-size: 150px;margin-bottom:0;margin-top: 0;line-height: 0.9;}
        .jumbotron p {font-size: 16px;}
        @media screen and (max-width:992px) {
        .jumbotron h1 {font-size: 140px;}
        .jumbotron h4 {font-size: 20px;margin-bottom:20px;}
        .jumbotron h4, .jumbotron ul, .jumbotron p {text-align:center;}
        .jumbotron ul {list-style:none;margin:0;padding:0;}
        .jumbotron ul li {margin-bottom:15px;}
        }
      </style>
</head>
<body>
  <form id="error404" runat="server">
  <ajaxToolkit:ToolkitScriptManager runat="server" ID="ScriptManager1" ></ajaxToolkit:ToolkitScriptManager>
  <div class="jumbotron verticalCenter">
    <div class="container panel panel-default">
      <div class="panel-body">
        <div class="col-xs-12 col-md-4 textAlignCenter">
          <h1>HTTP Error</h1>
        </div>
        <div class="col-xs-12 col-md-8 ">
        <h4>The reason for this page being displayed may be because:</h4>
            <ul>
              <li>The Web server is configured to not list the contents of this directory or</li>
              <li>the page cannot be found</li>
            </ul>
            <p>Once again, very sorry for your unfortunate redirection to this page.</p>
            <h4>Have you tried:</h4>
            <ul>
              <li>Visiting the <a href="/"><u><asp:literal ID="litCompany" runat="server"></asp:literal> home page</u></a></li>
            </ul>
        </div>
      </div>
    </div>
  </div>
  </form>
</body>
</html>