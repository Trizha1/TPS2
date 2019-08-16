<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewRequests.aspx.cs" Inherits="TPS2.Customer.ViewRequests" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: #466368;
        }
        h4 {
            color: #ffffff;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;

        }
      
    </style>
    <h2><%: Title %></h2>
    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div>
        <asp:ListBox runat="server" ID="RequestDates" AutoPostBack="True" OnSelectedIndexChanged="RequestDates_OnSelectedIndexChanged"></asp:ListBox>
    </div>
    <div id="DetailsPanel" runat="server" Visible="False">
        <h4>Required Skills</h4>
        <asp:ListBox runat="server" ID="RequiredSkillListBox" SelectionMode="Multiple"/>
        <h4>Requested Skills</h4>
        <asp:ListBox runat="server" ID="RequestedSkillListBox" SelectionMode="Multiple"/>
        <h4>Education Level</h4>
        <asp:DropDownList runat="server" ID="EducationLevel"/>
        <h4>Required?</h4>
        <asp:CheckBox runat="server" ID="EducationRequired"/>
        <h4>Starting Salary</h4>
        <asp:TextBox runat="server" ID="StartingSalary"/>
        <h4>Address Line 1:</h4>
        <asp:TextBox runat="server" ID="Address1TextBox"></asp:TextBox>
        <h4>Address Line 2:</h4>
        <asp:TextBox runat="server" ID="Address2TextBox"></asp:TextBox>
        <h4>City:</h4>
        <asp:TextBox runat="server" ID="CityTextBox"></asp:TextBox>
        <h4>State:</h4>
        <asp:DropDownList runat="server" ID="StatesListBox"/>
        <h4>Zip:</h4>
        <asp:TextBox runat="server" ID="ZipTextBox"></asp:TextBox>
        <h4>Telecommute Available?:</h4>
        <asp:CheckBox runat="server" ID="TelecommuteCheckBox"/>
    </div>
</asp:Content>
