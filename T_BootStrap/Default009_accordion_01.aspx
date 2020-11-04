<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default009_accordion_01.aspx.cs" Inherits="T_BootStrap_Default009_accordion_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>

    <style type="text/css">
        .card-header a:before /*展開時*/{
            content: "-";
        }
         .card-header a.collapsed:before /*合起來時*/{
            content: "+";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            BootStrap
            <br />
            <br />
            摺疊內容：類似jQuery的收何面板，透過滑鼠點擊切換項目是否顯示<br />
            <br />
            參考書籍：響應式網頁設計驚嘆號
                <br />
            <br />
            <div class="accordion" id="accordion1">
                <div class="card">
                    <div class="card-header" role="tab" id="headingOne1">
                        <h5 class="mb-0"><a data-toggle="collapse" data-target="#colllapseOne1" href="#colllapseOne1" role="button" aria-expanded="true" aria-controls="colllapseOne1">Collapsible Group 1
                        </a></h5>
                    </div>
                    <div id="colllapseOne1" class="navbar-collapse show" role="tabpanel" aria-labelledby="headingOne1" data-parent="#accordion1">
                        <div class="card-body">Content for Accordion Panel 1</div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" role="tab" id="headingTwo1">
                        <h5 class="mb-0"><a class="collapsed" data-toggle="collapse" data-target="#colllapseTwo1" href="#colllapseTwo1" role="button" aria-expanded="false" aria-controls="colllapseTwo1">Collapsible Group 2
                        </a></h5>
                    </div>
                    <div id="colllapseTwo1" class="collapse" role="tabpanel" aria-labelledby="headingTwo1" data-parent="#accordion1">
                        <div class="card-body">Content for Accordion Panel 2</div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" role="tab" id="headingThree1">
                        <h5 class="mb-0"><a class="collapsed" data-toggle="collapse" href="#colllapseThree1" role="button" aria-expanded="false" aria-controls="colllapseThree1">Collapsible Group 3
                        </a></h5>
                    </div>
                    <div id="colllapseThree1" class="collapse" role="tabpanel" aria-labelledby="headingThree1" data-parent="#accordion1">
                        <div class="card-body">Content for Accordion Panel 3</div>
                    </div>
                </div>
            </div>

             <br />
            <nav class="navbar navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </nav>
            <div class="collapse" id="navbarToggleExternalContent">
                <div class="bg-dark p-4">
                    <h4 class="text-white">Collapsed content</h4>
                    <span class="text-muted">Toggleable via the navbar brand.</span>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
