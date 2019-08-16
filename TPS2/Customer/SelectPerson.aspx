<%@ Page Title="Select Candidate" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectPerson.aspx.cs" Inherits="TPS2.Customer.SelectPerson" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <style>
        body {
            background: #466368;
        }
        h4 {
            color: #ffffff;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;

        }
           h5 {
            color: black;
            font-style:italic;
             
        }
      
    </style>
    <h2><%: Title %></h2>
    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>
    <div ID="candidatesAvailable" runat="server">
        <h4>Your filled requests.  Please select which request you would like to view candidates for.</h4>
        <div>
            <asp:RadioButtonList runat="server" ID="FilledRequests" OnSelectedIndexChanged="FilledRequests_OnSelectedIndexChanged" AutoPostBack="True"/>
        </div>
    </div>
    <div ID="noCandidates" runat="server">
        <h5>You have no filled requests at this time.  If it has been more than 48 hours since you submitted your request, please contact us at 555-555-5555 or via email at supprt@tps.com</h5>
    </div>
    <div ID="SelectDiv" runat="server">
        <h4>Possible Candidates:</h4>
        <asp:ListBox runat="server" ID="CandidateList" OnSelectedIndexChanged="CandidateList_OnSelectedIndexChanged" AutoPostBack="True"/>
        <h4>Candidate skills:</h4>
        <asp:ListBox runat="server" ID="CandidateSkillList" SelectionMode="Multiple"/>
        <div>
            <asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_OnClick" Enabled="True"/>
        </div>
    </div>
</asp:Content>
