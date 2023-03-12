<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="JobHistory.aspx.vb" Inherits="AdvancedDbVoting.JobHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="w-100">Add Job history date</h2>
    <h2 class="w-100"><i class="bi bi-file-earmark-spreadsheet"></i>Job history</h2>
    <div class="pt-2">
        <label class="form-label">Select employee</label>

        <asp:DropDownList  class="form-select" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="EMPLOYEE_ID">
        </asp:DropDownList>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT jh.job_history_id, jh.start_date,jh.end_date, d.department_name, r.title AS role, j.title AS job from job_history jh JOIN
department d ON jh.department_id = d.department_id JOIN role r ON jh.role_id = r.role_id JOIN job j ON r.job_id = j.job_id where jh.employee_id = :employee AND end_date IS NOT NULL">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h4 class="text-primary pt-4">Employee job history details</h4>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="EMPLOYEE_ID" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            <div class="row">
                <div class="col-6 d-flex">
                    <label class="pe-2 fw-bold">Employee ID</label>

                    <asp:Label ID="EMPLOYEE_IDLabel" runat="server" Text='<%# Eval("EMPLOYEE_ID") %>' />

                </div>
                <div class="col-6 d-flex">
                    <label class="pe-2 fw-bold">First name</label>

                    <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Eval("FIRST_NAME") %>' />

                </div>
                <div class="col-6 d-flex">
                    <label class="pe-2 fw-bold">Last name</label>

                    <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />

                </div>
                <div class="col-6 d-flex">
                    <label class="pe-2 fw-bold">Date of birth</label>

                    <asp:Label ID="DATE_OF_BIRTHLabel" runat="server" Text='<%# Eval("DATE_OF_BIRTH") %>' />

                </div>
                <div class="col-6 d-flex">
                    <label class="pe-2 fw-bold">Salary</label>

                    <asp:Label ID="SALARYLabel" runat="server" Text='<%# Eval("SALARY") %>' />

                </div>
                <div class="col-6 d-flex">
                    <label class="pe-2 fw-bold">Email address</label>

                    <asp:Label ID="EMAIL_ADDRESSLabel" runat="server" Text='<%# Eval("EMAIL_ADDRESS") %>' />

                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4">
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT e.employee_id, e.first_name, e.last_name,e.date_of_birth,e.salary,ad.email_address FROM employee e JOIN email_address ad ON e.employee_id = ad.employee_id WHERE e.employee_id = :employee">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT employee_id ,&quot;FIRST_NAME&quot; || ' '|| &quot;LAST_NAME&quot; AS &quot;NAME&quot; FROM EMPLOYEE"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="JOB_HISTORY_ID" DataSourceID="SqlDataSource1" CssClass=" mt-5 table table-striped">
        <Columns>
            <asp:BoundField DataField="JOB_HISTORY_ID" HeaderText="JOB_HISTORY_ID" ReadOnly="True" SortExpression="JOB_HISTORY_ID" />
            <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
            <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
            <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" />
            <asp:BoundField DataField="JOB" HeaderText="JOB" SortExpression="JOB" />
        </Columns>
    </asp:GridView>
    <p>
    </p>
</asp:Content>
