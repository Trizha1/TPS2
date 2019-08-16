<%@ Page Title="New Employee Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewRequestForm.aspx.cs" Inherits="TPS2.Customer.NewRequestForm" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>
    <div>
        <h4>Required Skills</h4>
        <p>Select as many as you like using the CTRL key to select multiple</p>
        <asp:ListBox runat="server" ID="RequiredSkillListBox" SelectionMode="Multiple"/>
        <h4>Requested Skills</h4>
        <p>Select as many as you like using the CTRL key to select multiple</p>
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
