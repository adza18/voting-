<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreateDepartment.aspx.vb" Inherits="AdvancedDbVoting.CreateDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DEPARTMENT_LOCATION&quot;, &quot;DEPARTMENT_PHONE_NUMBER&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :DEPARTMENT_LOCATION, :DEPARTMENT_PHONE_NUMBER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DEPARTMENT_LOCATION&quot; = :DEPARTMENT_LOCATION, &quot;DEPARTMENT_PHONE_NUMBER&quot; = :DEPARTMENT_PHONE_NUMBER WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">

        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_LOCATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT_PHONE_NUMBER" Type="String" />
        </InsertParameters>

    </asp:SqlDataSource>
    <h2 class="w-100">Create new department</h2>
    <div class="card p-3">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="w-50 ">

            <InsertItemTemplate>
                <div class="mt-2">
                    <label class="form-label">Department ID</label>
                    <asp:TextBox required="required" class="form-control" ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />

                </div>
                <div class="mt-2">
                    <label class="form-label">Department Name</label>
                    <asp:TextBox required="required" class="form-control" ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />

                </div>
                <div class="mt-2">
                    <label class="form-label">Department Location</label>
                    <asp:TextBox required="required" class="form-control" ID="DEPARTMENT_LOCATIONTextBox" runat="server" Text='<%# Bind("DEPARTMENT_LOCATION") %>' />


                </div>
                <div class="mt-2">
                    <label class="form-label">Department Phone Number</label>
                    <asp:TextBox required="required" class="form-control" ID="DEPARTMENT_PHONE_NUMBERTextBox" runat="server" Text='<%# Bind("DEPARTMENT_PHONE_NUMBER") %>' />

                </div>
                <asp:LinkButton class="mt-4 btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton  href="Department.aspx" class="mt-4 btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Back to list" />
            </InsertItemTemplate>

        </asp:FormView>
    </div>
</asp:Content>
