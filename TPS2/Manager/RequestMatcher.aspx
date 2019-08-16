<%@ Page Title="Match Requests" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RequestMatcher.aspx.cs" Inherits="TPS2.Manager.RequestMatcher" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: #4682B4;
        }
        h4 {
            color: #ffffff;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;

        }
        h5 {
            color:maroon;
            font-style:italic;
             
        }
      
    </style>
    <h2><%: Title %></h2>
    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>
    <div>
        <h4>Unfilled Requests</h4>
        <asp:ListBox runat="server" ID="ActiveRequests" OnSelectedIndexChanged="EnableSubmit" AutoPostBack="True"/>
        <h5 ID="peopleCaption" runat="server" Visible="False">Qualified employees, please select three or more</h5>
        <asp:ListBox runat="server" ID="People" OnSelectedIndexChanged="EnableSubmit" AutoPostBack="True" SelectionMode="Multiple" Visible="False"/>
        <h5 runat="server" ID="NoQualified" Visible="False">Uh oh....  No qualified employees.</h5>
    </div>
    <div>
        <asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_OnClick" Enabled="False"/>
    </div>
</asp:Content>