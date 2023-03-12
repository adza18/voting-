<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Department.aspx.vb" Inherits="AdvancedDbVoting.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Department details  <i class="bi bi-building-gear"></i></h1>
    <a href="CreateDepartment.aspx" class="btn btn-primary mb-3 mt-3"><i class="bi bi-plus-circle-fill"></i> Add new department</a>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DEPARTMENT_LOCATION&quot;, &quot;DEPARTMENT_PHONE_NUMBER&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :DEPARTMENT_LOCATION, :DEPARTMENT_PHONE_NUMBER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DEPARTMENT_LOCATION&quot; = :DEPARTMENT_LOCATION, &quot;DEPARTMENT_PHONE_NUMBER&quot; = :DEPARTMENT_PHONE_NUMBER WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_LOCATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT_PHONE_NUMBER" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_LOCATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT_PHONE_NUMBER" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" CssClass="table table-striped">
        <Columns>
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
            <asp:BoundField DataField="DEPARTMENT_LOCATION" HeaderText="DEPARTMENT_LOCATION" SortExpression="DEPARTMENT_LOCATION" />
            <asp:BoundField DataField="DEPARTMENT_PHONE_NUMBER" HeaderText="DEPARTMENT_PHONE_NUMBER" SortExpression="DEPARTMENT_PHONE_NUMBER" />
            <asp:CommandField ShowEditButton="True" />

        </Columns>
    </asp:GridView>

</asp:Content>
