<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Address.aspx.vb" Inherits="AdvancedDbVoting.Address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Address details <i class="bi bi-geo-fill"></i></h1>
    <a href="CreateAddress.aspx" class="btn btn-primary mb-3 mt-3"><i class="bi bi-plus-circle-fill"></i> Create new address</a><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;ZIP_CODE&quot;, &quot;POSTAL_CODE&quot;, &quot;STREET&quot;, &quot;CITY&quot;, &quot;COUNTRY&quot;) VALUES (:ADDRESS_ID, :ZIP_CODE, :POSTAL_CODE, :STREET, :CITY, :COUNTRY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;ZIP_CODE&quot; = :ZIP_CODE, &quot;POSTAL_CODE&quot; = :POSTAL_CODE, &quot;STREET&quot; = :STREET, &quot;CITY&quot; = :CITY, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
        <DeleteParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
            <asp:Parameter Name="ZIP_CODE" Type="String" />
            <asp:Parameter Name="POSTAL_CODE" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="COUNTRY" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ZIP_CODE" Type="String" />
            <asp:Parameter Name="POSTAL_CODE" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="COUNTRY" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" CssClass="table table-striped">
        <Columns>
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="ZIP_CODE" HeaderText="ZIP_CODE" SortExpression="ZIP_CODE" />
            <asp:BoundField DataField="POSTAL_CODE" HeaderText="POSTAL_CODE" SortExpression="POSTAL_CODE" />
            <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>

</asp:Content>
