<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="VotingRecord.aspx.vb" Inherits="AdvancedDbVoting.VotingRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="w-100"><i class="bi bi-file-earmark-spreadsheet"></i>Voting Record</h2>
    <div class="pt-2">
        <label class="form-label">Select voter</label>
        <asp:DropDownList CssClass="form-select mb-4" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="EMPLOYEE_ID" AutoPostBack="True">
        </asp:DropDownList>
    </div>


    <h4 class="text-primary">Voter details</h4>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="EMPLOYEE_ID" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            EMPLOYEE_ID:
            <asp:Label ID="EMPLOYEE_IDLabel" runat="server" Text='<%# Eval("EMPLOYEE_ID") %>' />
            <br />
            FIRST_NAME:
            <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Eval("FIRST_NAME") %>' />
            <br />
            LAST_NAME:
            <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
            <br />
            DATE_OF_BIRTH:
            <asp:Label ID="DATE_OF_BIRTHLabel" runat="server" Text='<%# Eval("DATE_OF_BIRTH") %>' />
            <br />
            SALARY:
            <asp:Label ID="SALARYLabel" runat="server" Text='<%# Eval("SALARY") %>' />
            <br />
            EMAIL_ADDRESS:
            <asp:Label ID="EMAIL_ADDRESSLabel" runat="server" Text='<%# Eval("EMAIL_ADDRESS") %>' />
            <br />
            <br />

        </ItemTemplate>
    </asp:DataList>
    <h4 class="pt-4 text-primary">Voting details</h4>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CANDIDATE ID,EMAIL_ADDRESS" DataSourceID="SqlDataSource1" CssClass="table table-striped  pt-2">
        <Columns>
            <asp:BoundField DataField="CANDIDATE ID" HeaderText="CANDIDATE ID" ReadOnly="True" SortExpression="CANDIDATE ID" />
            <asp:BoundField DataField="CANDIDATE NAME" HeaderText="CANDIDATE NAME" SortExpression="CANDIDATE NAME" />
            <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
            <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
            <asp:BoundField DataField="VOTING_MONTH" HeaderText="VOTING_MONTH" SortExpression="VOTING_MONTH" />
            <asp:BoundField DataField="VOTING_YEAR" HeaderText="VOTING_YEAR" SortExpression="VOTING_YEAR" />
            <asp:BoundField DataField="EMAIL_ADDRESS" HeaderText="EMAIL_ADDRESS" ReadOnly="True" SortExpression="EMAIL_ADDRESS" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="Select e.employee_id as &quot;CANDIDATE ID&quot;, e.first_name || ' ' || e.last_name as &quot;CANDIDATE NAME&quot;, e.date_of_birth,e.salary, v.voting_month,v.voting_year, ad.email_address  from employee e JOIN voting_record vr ON e.employee_id = vr.candidate_id  JOIN voting v on v.voting_id = vr.voting_id JOIN email_address ad ON e.employee_id = ad.employee_id WHERE vr.voter_id = :employee
">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT e.employee_id, e.first_name, e.last_name,e.date_of_birth,e.salary,ad.email_address FROM employee e JOIN email_address ad ON e.employee_id = ad.employee_id WHERE e.employee_id = :employee">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT employee_id ,&quot;FIRST_NAME&quot; || ' '|| &quot;LAST_NAME&quot; AS &quot;NAME&quot; FROM EMPLOYEE"></asp:SqlDataSource>
</asp:Content>
