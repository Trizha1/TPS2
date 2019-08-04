﻿<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeAllRequests.aspx.cs" Inherits="TPS2.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4><strong>All Requests</strong></h4>
                <p>
                </p>
                <dl class="dl-horizontal">
                    <asp:Panel ID="Panel1" runat="server" BackColor="#E5E5E5" Height="230px">
                        <asp:Label ID="Label1" runat="server" BackColor="#003366" ForeColor="White" Text="Request Awaiting Your Response" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </asp:Panel>
                </dl>
                <p>
                    </p>
                <asp:Panel ID="Panel2" runat="server" BackColor="#E5E5E5" Height="230px">
                    <asp:Label ID="Label2" runat="server" Text="Requests You've Accepted" BackColor="#003366" Font-Bold="True" ForeColor="White"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </asp:Panel>
                <p>
                    </p>
                <asp:Panel ID="Panel3" runat="server" BackColor="#E5E5E5" Height="230px">
                    <asp:Label ID="Label3" runat="server" Text="Requests Closed" BackColor="#003366" Font-Bold="True" ForeColor="White"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView3" runat="server">
                    </asp:GridView>
                </asp:Panel>
                <p>
                    </p>
                <p>
                    &nbsp;</p>
            </div>
        </div>
    </div>

</asp:Content>
