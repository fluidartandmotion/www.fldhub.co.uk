﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="App_Log_Error_503_Default" %>

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
        .jumbotron h1 {font-size: 200px;margin-bottom:0;margin-top: 0;line-height: 0.9;}
        .jumbotron .h1 {font-size: 68px;margin-bottom:0;margin-top: 0;}
        .jumbotron .h2 {font-size: 30px;margin-bottom:0;margin-top: 0;color:#757575;}
        .jumbotron p {font-size: 16px;}
        @media screen and (max-width:992px) {
        .jumbotron h1 {font-size: 140px;}
        .jumbotron .h1 {font-size: 43px;}
        .jumbotron .h2 {font-size: 25px;margin-bottom:50px;}
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
          <div class="h1">HTTP Error</div>
          <h1>503</h1>
          <div class="h2">Service unavailable, sorry!</div>
        </div>
        <div class="col-xs-12 col-md-8 ">
          <h4>The server is currently unavailable because it is:</h4>
            <ul>
              <li>overloaded or </li>
              <li>down for maintenance</li>
            </ul>
            <p>We hope to get our online services up and running again very soon.</p>
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