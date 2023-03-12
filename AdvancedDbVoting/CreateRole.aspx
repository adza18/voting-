<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreateRole.aspx.vb" Inherits="AdvancedDbVoting.CreateRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <h2 class="w-100">Create new role</h2>
    <div class="card p-3">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="w-50 " Height="101px" Width="837px">

            <InsertItemTemplate>
                <label class="form-label">Role ID</label>
                <asp:TextBox class="form-control" ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="roleID" ControlToValidate="ROLE_IDTextBox" ErrorMessage="Please enter a value!" /></br>
            <label class="form-label">Role Title</label>

                <asp:TextBox class="form-control" ID="TITLETextBox" runat="server" Text='<%# Bind("TITLE") %>' />
                <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="titleID" ControlToValidate="TITLETextBox" ErrorMessage="Please enter a value!" /></br>
            <label class="form-label">Job</label>

                <asp:DropDownList class="form-select" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TITLE" DataValueField="JOB_ID" SelectedValue='<%# Bind("JOB_ID") %>'>
                </asp:DropDownList>
                <asp:LinkButton ID="InsertButton" runat="server" class="mt-4 btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton href="Role.aspx" ID="InsertCancelButton" class="mt-4 btn btn-danger" runat="server" CausesValidation="False" CommandName="Back to list" Text="Back to list" />
            </InsertItemTemplate>

        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOB_ID&quot;, &quot;TITLE&quot; FROM &quot;JOB&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;TITLE&quot;, &quot;JOB_ID&quot;) VALUES (:ROLE_ID, :TITLE, :JOB_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;TITLE&quot; = :TITLE, &quot;JOB_ID&quot; = :JOB_ID WHERE &quot;ROLE_ID&quot; = :ROLE_ID">

            <InsertParameters>
                <asp:Parameter Name="ROLE_ID" Type="String" />
                <asp:Parameter Name="TITLE" Type="String" />
                <asp:Parameter Name="JOB_ID" Type="String" />
            </InsertParameters>

        </asp:SqlDataSource>


    </div>

</asp:Content>
