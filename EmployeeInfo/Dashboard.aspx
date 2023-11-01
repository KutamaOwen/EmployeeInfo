<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="EmployeeInfo.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Sidebar with Content Response</title>
    <link rel="stylesheet" href="Dashboard.css">
    <script src="https://kit.fontawesome.com/e6a45db737.js" crossorigin="anonymous"></script>


    <style>
        body{
            background-color: white;
        }
        .auto-style1 {
            width: 720px;
            margin-right: 5vw;
            background-color: white;
            height: 300px;
            margin-left: 21%;
            margin-top: 0%;
        }
         h1{
     margin-left: 21%;
     margin-top: 5%;
     font-size:30px;
 }
    </style>
</head>
<body>
    <form action="form1" runat="server" method="post">

        <div class="dashboard">
    <div class="side-nav">
   <header style="font-size:25px; margin: auto">LUB<span style="color: red">A</span>NZI</header>
   <ul>
       
       <li><i class="fa-solid fa-house"></i><asp:HyperLink ID="HyperLink1" runat="server" href="Dashboard.aspx" ForeColor="Black">Dashboard</asp:HyperLink></li>
       <li>
           <i class="fa-solid fa-pen-nib"></i><asp:HyperLink ID="HyperLink2" runat="server" href="createProject.aspx" ForeColor="Black">Create Project</asp:HyperLink></li>
       <li>
           <i class="fa-solid fa-users"></i><asp:HyperLink ID="HyperLink3" runat="server" href="CreateEmployee.aspx" ForeColor="Black">Create Employee</asp:HyperLink></li>
       <li>
           <i class="fa-regular fa-file"></i><asp:HyperLink ID="HyperLink4" runat="server" href="CaptureTimesheet.aspx" ForeColor="Black">Capture Timesheet</asp:HyperLink></li>
      <br />
       
           <center><asp:HyperLink ID="HyperLink5" runat="server" href="LoginPage.aspx" style=" " ForeColor="Black">Sign Out</asp:HyperLink></center>
   </ul>
       </div>
            <div class="home">
                <h3 style="padding: 30px; display: block; width: 100vw; padding-top:30px; background-color: #006666 font-family: 'Baskerville Old Face'; font-weight: 600"></h3>
                

            </div>
       </div>
         <div class="content">
        <h1>Dashboard</h1>
        <div class="auto-style1">

            <h4>PROJECT LIST:</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="625px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="237px" BorderColor="Black" BorderStyle="Ridge">
                <Columns>
                    <asp:BoundField DataField="Project_Name" HeaderText="Project Name" />
                    <asp:BoundField DataField="Employee" HeaderText="Employee" />
                    <asp:BoundField DataField="Start_Date" HeaderText="Start Date" />
                    <asp:BoundField DataField="End_Date" HeaderText="End Date" />
                    
                </Columns>
            </asp:GridView>
        </div>
             </div>
            </center>
        </form>
</body>
</html>
