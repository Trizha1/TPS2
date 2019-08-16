<%@ Page Title="New Employee Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewRequestForm.aspx.cs" Inherits="TPS2.Customer.NewRequestForm" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: #466368;
        }
        h4 {
            color: #ffffff;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;

        }
        h5 {
            color: black;
            font-style:italic;
             
        }

    </style>
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>
    <div>
        <h4>Required Skills</h4>
        <h5>Select as many as you like using the CTRL key to select multiple</h5>
        <asp:ListBox runat="server" ID="RequiredSkillListBox" SelectionMode="Multiple"/>
        <h4>Requested Skills</h4>
        <h5>Select as many as you like using the CTRL key to select multiple</h5>
        <asp:ListBox runat="server" ID="RequestedSkillListBox" SelectionMode="Multiple"/>
        <h4>Education Level</h4>
        <asp:DropDownList runat="server" ID="EducationLevel"/>
        <h4>Required?</h4>
        <asp:CheckBox runat="server" ID="EducationRequired"/>
        <h4>Starting Salary</h4>
        <asp:TextBox runat="server" ID="StartingSalary" type="number"/>
        <h4>Address Line 1:</h4>
        <asp:TextBox runat="server" ID="Address1TextBox"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Address1TextBox" CssClass="text-danger" ErrorMessage="The Address field is required."/>
        <h4>Address Line 2:</h4>
        <asp:TextBox runat="server" ID="Address2TextBox"></asp:TextBox>
        <h4>City:</h4>
        <asp:TextBox runat="server" ID="CityTextBox"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="CityTextBox" CssClass="text-danger" ErrorMessage="The City field is required."/>
        <h4>State:</h4>
        <asp:DropDownList runat="server" ID="StatesListBox"/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="StatesListBox" CssClass="text-danger" ErrorMessage="The State field is required."/>
        <h4>Zip:</h4>
        <asp:TextBox runat="server" ID="ZipTextBox" type="number"></asp:TextBox>
        <%--dt>Telecommute Available?:</dt>            <asp:CheckBox runat="server" ID="TelecommuteCheckBox"/>--%>
        <asp:Button runat="server" ID="SubmitBtn" Text="Submit" OnClick="SubmitBtn_Click"/>
    </div>
</asp:Content>
