<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagment.aspx.cs" Inherits="UserManagment1.UserManagment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form runat="server">
        <h1>
            <center>
                Welcome User
            </center>
        </h1>

        <div class="container">
            <div>
                <!-- Trigger the modal with a button -->
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#User" onclick="SaveChange">User Regitration</button>
                <br />
            </div>
            <br />

            <!-- Modal -->
            <div class="modal fade" id="User" role="dialog" runat="server">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">User Registration</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="username">User Name:</label>
                                <input type="text" class="form-control" runat="server" id="UserName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="UserName" Display="Dynamic" ForeColor="Red">Enter a User Name</asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="upassword">User Password:</label>
                                <input type="password" class="form-control" runat="server" id="UPassword" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="UPassword" Display="Dynamic" ForeColor="Red">Enter a User Password</asp:RequiredFieldValidator>

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
                                <label class="control-label">ExpiredDate</label>
                                <input type="date" id="txtExpiredDate" name="date" runat="server" placeholder="MM/DD/YYY" />
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="moblie">Moblie Number</label>
                                <input type="tel" id="MoblieNo" runat="server" name="phone" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="MoblieNo" Display="Dynamic" ForeColor="Red">Enter 10 digit  Moblie No</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter 10 Digit Moblie Number" ControlToValidate="MoblieNo" ValidationExpression="\d{5}" Display="Dynamic" EnableClientScript="False" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button Text="Save" runat="server" CssClass="btn btn-primary" ID="btnSaveSenderId" OnClick="BtnSaveSenderId_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="UserID"
            OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowUpdating="OnRowUpdating" EmptyDataText="No records has been added." OnRowDeleting="OnRowDeleting" Width="1272px" margin="20px"  CssClass="table table-striped">
            <AlternatingRowStyle BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:TemplateField HeaderText="User ID" ItemStyle-Width="150" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lbid" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="btxid" runat="server" Text='<%# Eval("UserID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Users Name" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUserName" runat="server" Text='<%# Eval("UserName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserName" runat="server" ErrorMessage="Enter a User Name"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="User Password" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblUserPassword" runat="server" Text='<%# Eval("UserPassword") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUserPassword" runat="server" Text='<%# Eval("UserPassword") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtUserPassword" ForeColor="Red" runat="server" ErrorMessage="Enter a PassWotf Name"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:CheckBox ID="txtStatus" runat="server" Text='<%# Eval("Status") %>'></asp:CheckBox>
                    </EditItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expire Date" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblExpireDate" runat="server" Text='<%# Eval("ExpireDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtExpireDate" runat="server" Text='<%# Eval("ExpireDate", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
                    </EditItemTemplate>

                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Moblie Number" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblMoblieNumber" runat="server" Text='<%# Eval("MoblieNumber") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtMoblieNumber" runat="server" Text='<%# Eval("MoblieNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email ID" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblEmailID" runat="server" Text='<%# Eval("EmailID") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmailID" runat="server" Text='<%# Eval("EmailID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Registration Date" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblRegistrationDate" runat="server" Text='<%# Eval("RegistrationDate") %>'></asp:Label>
                    </ItemTemplate>
                    <%--<EditItemTemplate>
                        <asp:Calendar ID="txtRegistrationDate" runat="server" Text='<%# ("RegistrationDate") %>'></asp:Calendar>
                    </EditItemTemplate>--%>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?');"></asp:Button>
                    </ItemTemplate>
                    <ItemStyle BorderColor="Black" Width="150px" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
