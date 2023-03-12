<%@ Page Title="Employee" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.vb" Inherits="AdvancedDbVoting.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Employee details <i class="bi bi-people-fill"></i></h1>
    <a href="CreateEmployee.aspx" class="btn btn-primary mb-3 mt-3"><i class="bi bi-person-fill-add"></i> Create new employee</a><br />
    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1" CssClass="table  table-striped" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" ReadOnly="True" SortExpression="EMPLOYEE_ID" />
                <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />


            </Columns>
        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMPLOYEE_ID&quot;, &quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;SALARY&quot;, &quot;PHONE_NUMBER&quot;) VALUES (:EMPLOYEE_ID, :FIRST_NAME, :LAST_NAME, :DATE_OF_BIRTH, :SALARY, :PHONE_NUMBER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;SALARY&quot; = :SALARY, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
        </DeleteParameters>

        <UpdateParameters>
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="SALARY" Type="Decimal" />
            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
            <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    &nbsp;
    
</asp:Content>
