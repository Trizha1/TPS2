<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeAllRequests.aspx.cs" Inherits="TPS2.Account.Manage" %>

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
            <div class="form-horizontal" style="font-weight: 700">
                <h4>Request </h4>
                <p>
                    <strong>Request Status Details</strong></p>
                <p>
                    <span style="font-weight: normal">
                    <em>Fill Pending: This request is awaiting for your response.</em></span></p>
                <p>
                    </p>
                <p>
                    Your Information</p>
                <p>
                    <span style="font-weight: normal">If you accept this offer, your information below will be sent to the client. If your information is not correct, please update it in your Account Settings.</span><asp:Panel ID="Panel7" runat="server" BackColor="#E5E5E5" Height="108px">
                    <br />
                    Email:<br /> Phone Number:
                </asp:Panel>
                <p>
                    &nbsp;</p>
                <p>
                    Job Details</p>
                <p>
                    </p>
                <asp:Panel ID="Panel6" runat="server" BackColor="#E5E5E5" Height="230px">
                    <br />
                </asp:Panel>
                <p>
                    &nbsp;</p>
                Actions<br />
                <asp:Panel ID="Panel8" runat="server" BackColor="#E5E5E5" Height="77px" style="margin-bottom: 0px">
                    <asp:Button ID="Button1" runat="server" BackColor="#006600" Font-Bold="True" ForeColor="White" Text="Accept" Width="471px" />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" BackColor="#CC3300" Font-Bold="True" ForeColor="White" Text="Decline" Width="473px" />
                </asp:Panel>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
            </div>
        </div>
    </div>

</asp:Content>
