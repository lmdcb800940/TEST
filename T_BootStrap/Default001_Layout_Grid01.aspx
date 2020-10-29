<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default001_Layout_Grid01.aspx.cs" Inherits="TEST_Default001_Layout_Grid01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <!-- NuGet套件 加入Bootstrap-->
    <!--1. 將Content/bootstrap.css拉進原始碼畫面
        2. 將Scripts/jquery-3.0.0.js拉進原始碼畫面
        3. 將Scripts/bootstrap.js拉進原始碼畫面-->
    <!--BootStrap-->
    <link href="../Content/bootstrap.css" rel="stylesheet" />

    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.js"></script>

    <!--CSS-->
    <style type="text/css">
        /* Background*/
        .bg {
            /* The image used */
            background-image: url("../images/b.png");
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
        }
        /*水平置中 & 垂直置中*/
        .flex {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 600px;
            height: 900px;
            background-color: #eee;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <!--以CSS_flex套用版面垂直置中&水平置中-->
        <div class="container text-center flex">
            <div class="row row-cols-1">

                <div class="col  center">
                    <!--上圖-->
                    <img class="img-fluid" src="../images/up.png" />
                </div>

                <div class="col">
                    <!--logo-->
                    <img class="img-fluid" src="../images/logo.png" />
                </div>

                <!--以CSS_bg套用背景圖-->
                <div class="col bg">
                    <p class="py-md-1 text-center">
                        帳號：
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </p>
                    <p class="py-md-1 text-center">
                        密碼：
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </p>
                    <p class="py-md-1 text-center">

                        <asp:Button ID="Button1" runat="server" Text="Button" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </p>
                </div>

                <div class="col">
                    <!--下圖-->
                    <img class="img-fluid" src="../images/bottom.png" />
                </div>

            </div>
        </div>
    </form>
</body>
</html>
