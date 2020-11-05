<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default013_ListGroup_01.aspx.cs" Inherits="T_BootStrap_Default013_ListGroup_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
    BootStrap
            <br />
    <br />
    列表群組：以響應式方式顯示一系列內容的組件，並以條列清單式顯示內容<br />
    <br />
    參考書籍：響應式網頁設計驚嘆號
                <br />
    <br />
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-sm-6">
                <div class="list-group">
                    <a href="#" class="list-group-item active">
                        <h5 class="mb-1">Active List Group Item Heading</h5>
                        <p class="mb-1">List Group Item Text</p>
                    </a>
                     <a href="#" class="list-group-item list-group-item-success">
                        <h5 class="mb-1">Second List Group Item Heading</h5>
                        <p class="mb-1">List Group Item Text</p>
                    </a>
                     <a href="#" class="list-group-item disabled">
                        <h5 class="mb-1">Disabled List Group Item Heading</h5>
                        <p class="mb-1">Disabled Group Item Text</p>
                    </a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
