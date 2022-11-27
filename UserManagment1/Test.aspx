<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="UserManagment1.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Bootstrap Example</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">

    </script>
</head>

<body>

    <form id="frm" runat="server">

        <div class="container">
            <h2>Modal Popup</h2>
            <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#User" onclick="SaveChange" >Open Popup</button>

            <!-- Modal -->
            <div class="modal fade" id="User" role="dialog" runat="server">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" >&times;</button>
                            <h4 class="modal-title">Modal Header</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="username">User Name:</label>
                                <input type="text" class="form-control" runat="server" id="txtUserName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUserName" Display="Dynamic" ForeColor="Red">Enter a User Name</asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="upassword">User Password:</label>
                                <input type="password" class="form-control" runat="server" id="txtUserPassword" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUserPassword" Display="Dynamic" ForeColor="Red">Enter a User Password</asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="email">Email ID:</label>
                                <input type="email" class="form-control" runat="server" id="txtemail" name="email" />
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="check">Status:</label>
                                <input type="checkbox" class="form-control" runat="server" id="chstatus" name="status" />
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="control-label" >ExpiredDate</label>
                                <input type="date" id="txtExpiredDate" name="date"  runat="server" placeholder="MM/DD/YYY" />
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="moblie" >Moblie Number</label>
                                <input type="tel" id="MoblieNo" runat="server" name="phone"  />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="MoblieNo" Display="Dynamic" ForeColor="Red">Enter 10 digit  Moblie No</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter 10 Digit Moblie Number" ControlToValidate="MoblieNo" ValidationExpression="\d{5}" Display="Dynamic" EnableClientScript="False" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button Text="Save" runat="server" CssClass="btn btn-primary" ID="btnSaveSenderId" OnClick="btnSaveSenderId_Click"/>
                            
                        </div>
                       <%-- <form id="btnsub" method="get"> 
                        
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" onclick="On_Click_Insert" data-dismiss="User" runat="server" value="Submit Button ">Submit</button>
                         </div>
                        </form>--%>
                    </div>
               
                </div>
            </div>

        </div>

    </form>
        
</body>

</html>
