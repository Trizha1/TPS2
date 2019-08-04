<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="TPS2.Account.Manage" %>

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
                <h4>Create Staffing Request</h4>
                <p>&nbsp;</p>
                <p>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Position Name *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
                <p>
                    <asp:TextBox ID="PositionNameTextbox" runat="server" OnTextChanged="TextBox1_TextChanged" Width="534px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
                <p>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Position Level *"></asp:Label>
                </p>
                <p>
                    <asp:DropDownList ID="PositionLevelList" runat="server" Height="16px" Width="542px">
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Location *"></asp:Label>
                </p>
                <p>
                    <asp:TextBox ID="LocationTextBox" runat="server" Width="535px"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Start Date *"></asp:Label>
                </p>
                <p>
                    <asp:TextBox ID="StartDateTextBox" runat="server" Width="531px"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Duration *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Duration Rate *"></asp:Label>
                </p>
                <p>
                    <asp:TextBox ID="DurationTextBox" runat="server" Width="209px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="DurationRateTextBox" runat="server" Width="239px"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Pay Amount *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Pay Rate *"></asp:Label>
&nbsp;&nbsp; </p>
                <p>
                    <asp:TextBox ID="PayAmountTextBox" runat="server" Width="182px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="PayRateTextBox" runat="server" Width="235px"></asp:TextBox>
                </p>
                <p>&nbsp;</p>
                <p>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Description *"></asp:Label>
                </p>
                <p>
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Height="66px" Width="536px"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Required Skills *"></asp:Label>
                </p>
                <p>
                    <asp:TextBox ID="RequiredSkillsTextBox" runat="server" Height="59px" Width="534px"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Additional Notes"></asp:Label>
                </p>
                <p>
                    <asp:TextBox ID="AdditionalNotesTextBox" runat="server" Height="66px" Width="531px"></asp:TextBox>
                </p>
                <p>&nbsp;</p>
            </div>
            <div>
                <dl>
                    <dt>
                        <asp:Button ID="ResetRequestButton" runat="server" Font-Bold="True" Text="Reset Request" Width="536px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="CreateRequestButton" runat="server" BackColor="#009933" BorderColor="#009933" Font-Bold="True" Text="Create Request" Width="622px" />
                </dl>
                
            </div>
        </div>
    </div>

</asp:Content>
