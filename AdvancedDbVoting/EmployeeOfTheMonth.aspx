<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="EmployeeOfTheMonth.aspx.vb" Inherits="AdvancedDbVoting.EmployeeOfTheMonth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="w-100"><i class="bi bi-award"></i>Top 3 Employees of the month</h2>
    <div class="pt-2">
        <label class="form-label text-primary">Select date</label>
        <asp:DropDownList CssClass="form-select mb-3" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="VOTE_DATE" DataValueField="VOTING_ID" AutoPostBack="True">
        </asp:DropDownList>
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="table table-striped" DataKeyNames="EMPLOYEE_ID">
        <Columns>
            <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" SortExpression="EMPLOYEE_ID" ReadOnly="True" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
            <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
            <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
            <asp:BoundField DataField="COUNT" HeaderText="COUNT" SortExpression="COUNT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 
*FROM   (SELECT  e.employee_id,e.first_name,e.last_name,e.date_of_birth,e.salary,e.phone_number,
COUNT(e.employee_id) as count FROM voting_record vr JOIN voting v ON v.voting_id = vr.voting_id 
JOIN employee e ON e.employee_id = vr.candidate_id 
where v.voting_id= :voting
GROUP BY employee_id,e.first_name,e.last_name,e.date_of_birth,e.salary,e.phone_number ORDER BY count desc)
WHERE ROWNUM &lt;= 3">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="voting" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;VOTING_ID&quot;, &quot;VOTING_MONTH&quot; || ' ' || &quot;VOTING_YEAR&quot; AS &quot;VOTE_DATE&quot; FROM &quot;VOTING&quot;"></asp:SqlDataSource>
</asp:Content>
