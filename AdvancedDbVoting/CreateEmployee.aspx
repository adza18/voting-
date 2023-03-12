<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreateEmployee.aspx.vb" Inherits="AdvancedDbVoting.CreateEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMPLOYEE_ID&quot;, &quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;SALARY&quot;, &quot;PHONE_NUMBER&quot;) VALUES (:EMPLOYEE_ID, :FIRST_NAME, :LAST_NAME, :DATE_OF_BIRTH, :SALARY, :PHONE_NUMBER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;SALARY&quot; = :SALARY, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID">
        <InsertParameters>
            <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="SALARY" Type="Decimal" />
            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <h2 class="w-100">Create new employee</h2>
    <div class="card p-3">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="w-50 ">
            <InsertItemTemplate>
                <div class="row">
                    <div class="col-6 mt-2">
                        <label class="form-label">Employee ID</label>
                        <asp:TextBox required="required" class="form-control" ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">First name</label>


                        <asp:TextBox required="required" class="form-control" ID="FIRST_NAMETextBox" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">Last name</label>


                        <asp:TextBox required="required" class="form-control" ID="LAST_NAMETextBox" runat="server" Text='<%# Bind("LAST_NAME") %>' />
                    </div>
                    <div class="col-6  mt-2">
                        <label class="form-label">Date of birth</label>

                        <asp:TextBox required="required" class="form-control" type="datetime-local" ID="DATE_OF_BIRTHTextBox" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">Salary</label>

                        <asp:TextBox required="required" class="form-control" type="number" ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">Phone number</label>

                        <asp:TextBox required="required" class="form-control" ID="PHONE_NUMBERTextBox" runat="server" Text='<%# Bind("PHONE_NUMBER") %>' />
                    </div>
                 <%--   <div class="col-6 mt-3">
                        <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Create" />
                    </div>
                    <div class="mt-3">

                    <asp:LinkButton ID="InsertCancelButton"  href="Employee.aspx" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Back to list" />
                    </div>--%>

                </div>
                  <asp:LinkButton ID="InsertButton" runat="server" class="mt-4 btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton  href="Employee.aspx" ID="InsertCancelButton" class="mt-4 btn btn-danger" runat="server" CausesValidation="False" CommandName="Back to list" Text="Back to list" />
            </InsertItemTemplate>

        </asp:FormView>
    </div>
</asp:Content>
