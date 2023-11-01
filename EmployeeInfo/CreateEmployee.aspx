<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEmployee.aspx.cs" Inherits="EmployeeInfo.CreateEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
                <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Sidebar with Content Response</title>
    <link rel="stylesheet" href="CreateEmployee.css">
    <script src="https://kit.fontawesome.com/e6a45db737.js" crossorigin="anonymous"></script>


    <style>
        body{
            background-color: white;
        }
        .auto-style8 {
    border-style: groove;
    border-color: inherit;
    border-width: medium;
    padding: 50px;
    padding-top: 20px;
    margin-top: 2px;
    margin-left: 0%;
    background-color: white;
    width: 397px;
    height: 169px;
    display: block;
}
        h1{
            margin-left: 0%;
            margin-top: 0%;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">

         <div class="side-nav">
<header style="font-size:25px; margin: auto">LUB<span style="color: red">A</span>NZI</header>
<ul>
    
    <li><i class="fa-solid fa-house"></i><asp:HyperLink ID="HyperLink1" runat="server" href="Dashboard.aspx" ForeColor="Black">Dashboard</asp:HyperLink></li>
    <li>
        <i class="fa-solid fa-pen-nib"></i><asp:HyperLink ID="HyperLink2" runat="server" href="CreateProject.aspx" ForeColor="Black">Create Project</asp:HyperLink></li>
    <li>
        <i class="fa-solid fa-users"></i><asp:HyperLink ID="HyperLink3" runat="server" href="CreateEmployee.aspx" ForeColor="Black">Create Employee</asp:HyperLink></li>
    <li>
        <i class="fa-regular fa-file"></i><asp:HyperLink ID="HyperLink4" runat="server" href="CaptureTimesheet.aspx" ForeColor="Black">Capture Timesheet</asp:HyperLink></li>
   <br />
    
     <center><asp:HyperLink ID="HyperLink5" runat="server" href="LoginPage.aspx" style=" " ForeColor="Black">Sign Out</asp:HyperLink></center>
</ul>
    </div>
        
    <div class="content">
            <h1>Create Employee </h1>

    <div class="auto-style8">

        

        <table class="auto-style18">
            
            <tr>
                <td>
                    <asp:Label ID="lblEmployee" runat="server" Text="Employee:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="Employeetxt" runat="server" ForeColor="black" Height="25px" Width="250px" required></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="Rolestxt" runat="server" Height="25px" Width="250px" required>
                        <asp:ListItem>Select your Role</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>Network Engineer</asp:ListItem>
                        <asp:ListItem>Tester</asp:ListItem>
                        <asp:ListItem>Quality Assurance</asp:ListItem>
                        <asp:ListItem>Business Analyst</asp:ListItem>
                        <asp:ListItem>RPA</asp:ListItem>
                        <asp:ListItem>AI</asp:ListItem>
                        <asp:ListItem>IR</asp:ListItem>
                        <asp:ListItem>Support System</asp:ListItem>
                        <asp:ListItem>Human Resources</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save" Width="100px" OnClick="Button1_Click" Height="25px" />
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Height="25px" Width="100px" OnClick="Button2_Click" />
                    
                </td>
            </tr>
            </table>

    </div>
</form>
    </center>
</body>
</html>
