<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="UserManagment1.popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Modal</title>
    <!-- Latest compiled and minified CSS -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>

      <!-- jQuery library -->
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

      <!-- Popper JS -->
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

      <!-- Latest compiled JavaScript -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
 <!--   <script type="text/javascript">
        $(document).ready(function () {
            setTimeout(function () {
                $("#mymodal").modal("show")
            }), 5000
        });
    </script>  -->
</head>
<body>
   <div class="container">
      <button type="button" class="btn-primary btn" data-toggle="modal" data-target="#mymodal">Open popup</button> 
       <div class="modal" id="mymodal">
           <div class="modal-dialog">
               <div class="container">
                   <div class="modal-header">
                       <h2>Registration From</h2>
                       <button class="close" type="button" data-dismiss="modal">&times</button>
          <span aria-hidden="true">&times;</span>
        
                   </div>
                   <div class="modal-body">
                       <form> 
                           <div class="container">
                               <input type="text" runat="server" id="txtUsername" name="txtUsername" placeholder="Enter User Name" />

                           </div>

                            
                           
                           <div class="form-group">
                               <input type="text" runat="server" id="txtUserPassword" class="form-control" name="" placeholder="Enter User Password" />
                           </div>
                         <div class="form-group form-check">
                             <input type="checkbox" runat="server" id="txtStatus" class="form-check-input" />
                             <label class="form-check-label" runat="server"  for="exampleCheck1">Status</label>
                           
                           </div>
                           <div class="form-group"> 
                               <label class="control-label" for="date" runat="server" id="txtExpireyDate">ExpiredDate</label>
                              <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
                           </div>                           

                           
                           <div class="form-group">
                               <input type="email" name="" runat="server" id="txtEmailID" class="form-control" placeholder="Enter your EmailID" />
                           </div>
                            <div class="form-group">
                               <input type="tel" name="" runat="server" id="txtMoblieNumber" class="form-control" placeholder="Enter Moblie Number" />
                           </div>
                          
                            <div class="form-group"> 
                               <label class="control-label" for="date">RegistrtionDate</label>
                              <input class="form-control" id="regdate" name="date" placeholder="MM/DD/YYY" type="text"/>
                           </div>                           

                           <div class="form-group">
                               <button type="submit" class="btn-primary btn" onclick="submit">Submit</button>
                           </div>
                       </form>
                   </div>
               </div>
           </div>
       </div>
     </div>
</body>
</html>
