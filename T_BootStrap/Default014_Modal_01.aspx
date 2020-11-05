<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default014_Modal_01.aspx.cs" Inherits="T_BootStrap_Default014_Modal_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>

</head>
<body>
    BootStrap
            <br />
    <br />
    互動視窗：產生能與使用者互動的對話視窗<br />
    <br />
    參考書籍：響應式網頁設計驚嘆號
                <br />
    <br />

    <form id="form1" runat="server">
        <div>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Launch demo modal</button>

            <!--Modal-->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal tile</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Modal body text goes here.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <button type="button" class="btn btn-danger" data-toggle="popover" data-trigger="focus" title="popover title"
            data-content="And here's some amazing content. It's very engaging. Right?">
            Click to toggle popover</button>
        <br/><br/>
        <button type="button" class="btn btn-info" data-container="body" data-toggle="popover" data-trigger="focus" data-placement="top" title="popover title" 
            data-content="And here's some amazing content. It's very engaging. Right?">
            Click to toggle popover</button>
        <script>
            //$(function () {
            //    $('[data-toggle="popover"]').popover()
            //})
            $(function () {
                $('[data-toggle="popover"]').popover()
            })
            $('.popover-dismiss').popover ({
                trigger: 'focus'
            })
        </script>
        
        <br/>

    </form>
</body>
</html>
