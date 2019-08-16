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
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>External Logins:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Manage]" runat="server" />

                    </dd>
                </dl>
            </div>
            <div>
                <h4>First Name:</h4>
                <asp:TextBox runat="server" ID="FirstNameTextBox" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstNameTextBox" CssClass="text-danger" ErrorMessage="The First Name field is required."/>
                <h4>Last Name:</h4>
                <asp:TextBox runat="server" ID="LastNameTextBox" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastNameTextBox" CssClass="text-danger" ErrorMessage="The Last Name field is required."/>
                <h4>Phone Number:</h4>
                <asp:TextBox runat="server" ID="PhoneTextBox" ></asp:TextBox>
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
                <asp:TextBox runat="server" ID="ZipTextBox" type="number" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ZipTextBox" CssClass="text-danger" ErrorMessage="The Zip field is required."/>
                <h4>Willing to Relocate?:</h4>
                <asp:CheckBox runat="server" ID="RelocateCheckBox"/>
                <h4>Availability Date</h4>
                <asp:Calendar runat="server" ID="AvailabilityDateCalendar"></asp:Calendar>
                <h4>Skills</h4>
                <p>Select as many as you like using the CTRL key to select multiple</p>
                <asp:ListBox runat="server" ID="SkillListBox" SelectionMode="Multiple" height="200"/>
                <h4>Upload Resume</h4>
                <asp:FileUpload runat="server" ID="resumeUpload" AllowMultiple="False"/>
                <asp:TextBox runat="server" ID="ResumeName" Visible="False" ReadOnly="True"></asp:TextBox>
                <h4>Upload Picture</h4>
                <asp:FileUpload runat="server" ID="pictureUpload" AllowMultiple="False"/>
                <asp:TextBox runat="server" ID="PictureName" Visible="False" ReadOnly="True"></asp:TextBox>
                <asp:Button runat="server" ID="SubmitBtn" Text="Submit" OnClick="SubmitBtn_Click"/>
            </div>
        </div>
    </div>

</asp:Content>
