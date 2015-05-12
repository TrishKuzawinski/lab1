<!---------------------
* Lesson 2 - Lab 1    *
* Patricia Kuzawinski *
* 200250367           *
---------------------->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="lab1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Form</title>
</head>
<body>
    <form id="StudentForm" runat="server">
    <div>
    <!--Student Name Input-->
    <asp:Label ID="lblStudentName" runat="server" Text="Label">Student Name:</asp:Label><asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox><br />
    <!--Password Input-->
    <asp:Label ID="lblPassword" runat="server" Text="Label">Password:</asp:Label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
    <!--Full Address Text Area-->
    <asp:Label ID="lblFullAddress" runat="server" Text="Label">Full Address:</asp:Label><br />
    <asp:TextBox ID="txtFullAddress" runat="server" TextMode="MultiLine"></asp:TextBox><br />
    <!--Education Level Radio Buttons-->
    <asp:Label ID="lblEducationLevel" runat="server" Text="Label">Education Level:</asp:Label><br />
    <asp:RadioButtonList ID="btnlstEducationLevel" runat="server">
        <asp:ListItem Value="1" Text="High School"></asp:ListItem>
        <asp:ListItem Value="2" Text="College"></asp:ListItem>
        <asp:ListItem Value="3" Text="Graduate"></asp:ListItem>
        <asp:ListItem Value="4" Text="Other"></asp:ListItem>
    </asp:RadioButtonList>
    <!--Laptop Owner Check Box-->
    <asp:Label ID="lblLaptopOwner" runat="server" Text="Label">Do you own a laptop? (Check if true)</asp:Label><asp:CheckBox ID="chkLaptopOwner" runat="server" /><br />
    <!--Skills List Check Boxes-->
    <asp:Label ID="lblSkillsList" runat="server" Text="Label">Skills List:</asp:Label><br />
    <asp:CheckBoxList ID="chklstSkillsList" runat="server">   
        <asp:ListItem Value="1" Text="HTML"></asp:ListItem>
        <asp:ListItem Value="2" Text="PHP"></asp:ListItem>
        <asp:ListItem Value="3" Text="C#"></asp:ListItem>
        <asp:ListItem Value="4" Text="Java"></asp:ListItem>
    </asp:CheckBoxList>
    <!--Provinces Drop Down List-->
    <asp:Label ID="lblProvinces" runat="server" Text="Label">Provinces:</asp:Label>
    <asp:DropDownList ID="drplstProvinces" runat="server">
        <asp:ListItem Value="0" Text="--"></asp:ListItem>
        <asp:ListItem Value="1" Text="AB"></asp:ListItem>
        <asp:ListItem Value="2" Text="BC"></asp:ListItem>
        <asp:ListItem Value="3" Text="ON"></asp:ListItem>
        <asp:ListItem Value="4" Text="QC"></asp:ListItem>
    </asp:DropDownList><br />
    <!--Submit Radio Button-->
   <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br />
   <asp:Label ID="lblX" runat="server" Visible="false"></asp:Label> 
   <!--Student's Information Display-->
   Student Name: <asp:Label ID="lblStudentDisplay" runat="server"></asp:Label><br />
   Password: <asp:Label ID="lblPasswordDisplay" runat="server"></asp:Label><br />
   Full Address: <asp:Label ID="lblAddressDisplay" runat="server"></asp:Label><br />
   Education Level: <asp:Label ID="lblEducationDisplay" runat="server"></asp:Label><br />
   Do you own a laptop? <asp:Label ID="lblLaptopDisplay" runat="server"></asp:Label><br />
   Skills List: <asp:Label ID="lblSkillsDisplay" runat="server"></asp:Label><br />
   Provinces: <asp:Label ID="lblProvincesDisplay" runat="server"></asp:Label><br />
   </div>
   </form>
</body>
</html>
