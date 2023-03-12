<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Job.aspx.vb" Inherits="AdvancedDbVoting.Job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Job Details <i class="bi bi-laptop"></i></h1>
      <a href="CreateJob.aspx" class="btn btn-primary mb-3 mt-3"><i class="bi bi-plus-circle-fill"></i> Add new job</a>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;JOB&quot; WHERE &quot;JOB_ID&quot; = :JOB_ID" InsertCommand="INSERT INTO &quot;JOB&quot; (&quot;JOB_ID&quot;, &quot;TITLE&quot;, &quot;MINIMUM_SALARY&quot;, &quot;MAXIMUM_SALARY&quot;, &quot;EXPERIENCE_YEARS&quot;) VALUES (:JOB_ID, :TITLE, :MINIMUM_SALARY, :MAXIMUM_SALARY, :EXPERIENCE_YEARS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOB&quot;" UpdateCommand="UPDATE &quot;JOB&quot; SET &quot;TITLE&quot; = :TITLE, &quot;MINIMUM_SALARY&quot; = :MINIMUM_SALARY, &quot;MAXIMUM_SALARY&quot; = :MAXIMUM_SALARY, &quot;EXPERIENCE_YEARS&quot; = :EXPERIENCE_YEARS WHERE &quot;JOB_ID&quot; = :JOB_ID">
        
        <InsertParameters>
            <asp:Parameter Name="JOB_ID" Type="String" />
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="MINIMUM_SALARY" Type="Decimal" />
            <asp:Parameter Name="MAXIMUM_SALARY" Type="Decimal" />
            <asp:Parameter Name="EXPERIENCE_YEARS" Type="Decimal" />
        </InsertParameters>
     
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-striped" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" SortExpression="JOB_ID" />
            <asp:BoundField DataField="TITLE" HeaderText="TITLE" SortExpression="TITLE" />
            <asp:BoundField DataField="MINIMUM_SALARY" HeaderText="MINIMUM_SALARY" SortExpression="MINIMUM_SALARY" />
            <asp:BoundField DataField="MAXIMUM_SALARY" HeaderText="MAXIMUM_SALARY" SortExpression="MAXIMUM_SALARY" />
            <asp:BoundField DataField="EXPERIENCE_YEARS" HeaderText="EXPERIENCE_YEARS" SortExpression="EXPERIENCE_YEARS" />
            <asp:CommandField  ShowEditButton="True" />


        </Columns>
    </asp:GridView>
</asp:Content>
