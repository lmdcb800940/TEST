<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default004_RowCol_02.aspx.cs" Inherits="T_BootStrap_Default004_RowCol_02" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%--需用拖曳方式--%>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>

    <link href="Content/themes/base/base.css" rel="stylesheet" />
    <link href="Content/themes/base/dialog.css" rel="stylesheet" />

    <title>HELLO</title>

   

    <style type="text/css">
        section#intro-header {
            background-image: url(http://localhost:65493/images/n-n-BtbjCFUvBXs-unsplash.jpg);
            background-size: cover;
        }


            section#intro-header .wrap-headline {
                position: relative;
                padding-top: 20%;
                padding-bottom: 20%;
                width: 1280px;
            }

            section#intro-header h1, section#intro-header h2 {
                color: #FFF;
            }

            section#intro-header h2 {
                font-size: 1.5rem;
            }

            section#intro-header hr {
                width: 10%;
            }
        
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <header>
            <div class="topheader">
                <%-- 橫列1 --%>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">NavBar</a>
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="#about">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#features">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pricing">Pricing</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="contact.html">聯絡我們</a>
                        </li>
                    </ul>
                </nav>
            </div>


            <section id="intro-header">
                <div class="container">
                    <%-- 橫列2 --%>
                    <div class="row">
                        <div class="wrap-headline">
                            <h1 class="text-center">公司名稱</h1>
                            <h2 class="text-center">宣傳標語</h2>
                            <hr>
                            <ul class="list-inline list-unstyled text-center">
                                <li class="list-inline-item">
                                    <a class="btn btn-dark btn-lg" href="#" role="button">登入</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn btn-primary btn-lg" href="#" role="button">註冊</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


            </section>
        </header>

    </form>
</body>
</html>
