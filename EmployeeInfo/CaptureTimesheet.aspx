<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CaptureTimesheet.aspx.cs" Inherits="EmployeeInfo.CaptureTimesheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Sidebar with Content Response</title>
    <link rel="stylesheet" href="CaptureTimesheet.css">
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
            margin-left: 0%;
            margin-top: 0%;
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
        
        <div>
            <h1>Capture Timesheet</h1>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Employee"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="Label3" runat="server" Text="Start Date"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label4" runat="server" Text="End Date"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                            <asp:DropDownList ID="ProjectNametxt" runat="server" Height="30px" Width="150px">
        <asp:ListItem>Empty</asp:ListItem>
    </asp:DropDownList>
</td>
<td class="auto-style16">
    <asp:DropDownList ID="Employeetxt" runat="server" Height="30px" Width="150px">
        <asp:ListItem>Empty</asp:ListItem>
    </asp:DropDownList>
</td>
<td class="auto-style18">
    <asp:DropDownList ID="Starttxt" runat="server" Height="30px" Width="150px">
        <asp:ListItem>Empty</asp:ListItem>
    </asp:DropDownList>
</td>
<td class="auto-style19">
    <asp:DropDownList ID="Endtxt" runat="server" Height="30px" Width="150px">
        <asp:ListItem>Empty</asp:ListItem>
    </asp:DropDownList>
</td>
                </tr>

                </table><br />

        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" Height="25px" Width="120px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" Height="25px" Width="120px" OnClick="Button2_Click" />
        
        <div>
        <asp:Label ID="Label5" runat="server"></asp:Label>
            </div>
    </form>
    </center>
</body>
</html>
