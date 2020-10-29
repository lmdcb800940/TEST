<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default001_Layout_Grid02.aspx.cs" Inherits="Default001_Layout_Grid02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="Content/bootstrap.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <style type="text/css">
        /*水平置中 & 垂直置中*/
        .flex {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 600px;
            height: 900px;
            /*background-color: #eee;*/
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <!--以CSS_flex套用版面垂直置中&水平置中-->
        <div class="container text-center flex">
            <div class="row-fixed row-cols-1 border border-warning rounded" style="width: 400px; padding-top: 50px">
                
                <!--logo-->
                <div class="col-fixed" style="height: 120px;">
                    <img class="img-fluid" src="images/login_logo.png" />
                </div>


                <!--巢狀Grid -->
                <div class="col">

                    <!--一般使用者 & 管理者 區塊-->
                    <div class="row">
                        <div class="col text-right" style="padding-top: 25px">
                            <asp:Button ID="Button1" class="btn btn-warning" Width="120px" runat="server" Text="一般使用者" Font-Names="微軟正黑體" Font-Bold="True" ForeColor="#666666" />
                        </div>
                        <div class="col text-left" style="padding-top: 25px">
                            <asp:Button ID="Button2" class="btn btn-warning" Width="120px" runat="server" Text="管理者" Font-Names="微軟正黑體" Font-Bold="True" ForeColor="#666666" OnClick="Button2_Click" />
                        </div>
                    </div>

                    <!--帳號輸入區塊-->
                    <div class="row">
                        <div class="col-fixed text-right" style="width: 130px">
                            <p class="py-md-2">
                                <asp:Label ID="Label1" runat="server" Text="帳號：" Font-Names="微軟正黑體" ForeColor="#FF9900" Font-Bold="True" Visible="False"></asp:Label>
                            </p>
                            </p>
                        </div>
                        <div class="col text-left " style="padding-left: 5px;">
                            <p class="py-md-2">
                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" BorderColor="#FF9900" BorderStyle="Solid" Visible="False"></asp:TextBox>
                            </p>
                        </div>
                        <div class="col-fixed" style="width: 50px"></div>
                    </div>

                    <!--密碼輸入區塊-->
                    <div class="row">
                        <div class="col-fixed text-right" style="width: 130px">
                            <p class="py-md-2">
                                <asp:Label ID="Label2" runat="server" Text="密碼：" Font-Names="微軟正黑體" ForeColor="#FF9900" Font-Bold="True" Visible="False"></asp:Label>
                            </p>
                        </div>
                        <div class="col text-left" style="padding-left: 5px;">
                            <p class="py-md-2">
                                <asp:TextBox ID="TextBox2" class="form-control" runat="server" BorderColor="#FF9900" BorderStyle="Solid" Visible="False"></asp:TextBox>
                            </p>
                        </div>
                        <div class="col-fixed" style="width: 50px"></div>
                    </div>



                    <!--登入 & 取消 區塊-->
                    <div class="row">
                        <div class="col text-right" style="padding-top: 25px; padding-bottom: 60px">
                            <asp:Button ID="Button3" class="btn btn-warning" Width="120px" runat="server" Text="登入" Font-Names="微軟正黑體" Font-Bold="True" ForeColor="#666666" Visible="False" />
                        </div>
                        <div class="col text-left" style="padding-top: 25px; padding-bottom: 60px">
                            <asp:Button ID="Button4" class="btn btn-warning" Width="120px" runat="server" Text="取消" Font-Names="微軟正黑體" Font-Bold="True" ForeColor="#666666" OnClick="Button4_Click" Visible="False" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
