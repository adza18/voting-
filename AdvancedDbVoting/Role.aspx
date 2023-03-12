<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Role.aspx.vb" Inherits="AdvancedDbVoting.Role" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Role details <i class="bi bi-bag-check-fill"></i></h1>
      <a href="CreateRole.aspx" class="btn btn-primary mb-3 mt-3"><i class="bi bi-plus-circle-fill"></i> Add new role</a>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;TITLE&quot;, &quot;JOB_ID&quot;) VALUES (:ROLE_ID, :TITLE, :JOB_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;TITLE&quot; = :TITLE, &quot;JOB_ID&quot; = :JOB_ID WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
        <DeleteParameters>
            <asp:Parameter Name="ROLE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ROLE_ID" Type="String" />
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="JOB_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="JOB_ID" Type="String" />
            <asp:Parameter Name="ROLE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1" CssClass="table table-striped" AllowPaging="True" PageSize="10">
        <Columns>
            <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" ReadOnly="True" SortExpression="ROLE_ID" />
            <asp:BoundField DataField="TITLE" HeaderText="TITLE" SortExpression="TITLE" />
            <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" SortExpression="JOB_ID" />

         

            <asp:TemplateField HeaderText="JOB_TITLE">
                <ItemTemplate>
                    <asp:DropDownList Enabled="false" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TITLE" DataValueField="JOB_ID">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

         

        </Columns>
    </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOB_ID&quot;, &quot;TITLE&quot; FROM &quot;JOB&quot;"></asp:SqlDataSource>
      </asp:Content>
