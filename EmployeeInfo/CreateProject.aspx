<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateProject.aspx.cs" Inherits="EmployeeInfo.CreateProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
            <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Sidebar with Content Response</title>
    <link rel="stylesheet" href="CreateProject.css">
    <script src="https://kit.fontawesome.com/e6a45db737.js" crossorigin="anonymous"></script>


    <style>
        body{
            background-color: white;
        }
        .auto-style1 {
            width: 680px;
            margin-right: 5vw;
            background-color: white;
            height: 174px;

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
        <h1>Create Project</h1>
        
        <table class="container">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Project Name: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Projecttxt" runat="server" Height="25px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblStartDate" runat="server" Text="Start Date"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEndDate" runat="server" Text="End Date"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDuration" runat="server" Text="Duration:"></asp:Label>
                </td>
                <td class="date">
                    <asp:TextBox ID="Starttxt" runat="server" TextMode="Date" Height="25px" Width="100px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Endtxt" runat="server" TextMode="Date" Height="25px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblClientName" runat="server" Text="Client Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Clienttxt" runat="server" Height="25px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save" Height="25px" Width="100px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Height="25px" Width="100px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="View " Height="25px" Width="100px" OnClick="Button3_Click"/>
                    
                </td>
            </tr>
            <asp:Label ID="Label2" runat="server" Text="" ForeColor="red"></asp:Label>
            

        </table>
                
</form>
    </center>
</body>
</html>
