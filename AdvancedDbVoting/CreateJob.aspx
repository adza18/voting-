<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreateJob.aspx.vb" Inherits="AdvancedDbVoting.CreateJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;JOB&quot; WHERE &quot;JOB_ID&quot; = :JOB_ID" InsertCommand="INSERT INTO &quot;JOB&quot; (&quot;JOB_ID&quot;, &quot;TITLE&quot;, &quot;MINIMUM_SALARY&quot;, &quot;MAXIMUM_SALARY&quot;, &quot;EXPERIENCE_YEARS&quot;) VALUES (:JOB_ID, :TITLE, :MINIMUM_SALARY, :MAXIMUM_SALARY, :EXPERIENCE_YEARS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOB&quot;" UpdateCommand="UPDATE &quot;JOB&quot; SET &quot;TITLE&quot; = :TITLE, &quot;MINIMUM_SALARY&quot; = :MINIMUM_SALARY, &quot;MAXIMUM_SALARY&quot; = :MAXIMUM_SALARY, &quot;EXPERIENCE_YEARS&quot; = :EXPERIENCE_YEARS WHERE &quot;JOB_ID&quot; = :JOB_ID">
        <InsertParameters>
            <asp:Parameter Name="JOB_ID" Type="String" />
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="MINIMUM_SALARY" Type="Decimal" />
            <asp:Parameter Name="MAXIMUM_SALARY" Type="Decimal" />
            <asp:Parameter Name="EXPERIENCE_YEARS" Type="Decimal" />
        </InsertParameters>
    </asp:SqlDataSource>
    <h2 class="w-100">Create new job</h2>
    <div class="card p-3">
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="w-50 ">

            <InsertItemTemplate>
                <div class="row">
                    <div class="mt-2 col-6">
                        <label class="form-label">Job ID</label>

                        <asp:TextBox required="required" CssClass="form-control" ID="JOB_IDTextBox" runat="server" Text='<%# Bind("JOB_ID") %>' />
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="jobID" ControlToValidate="JOB_IDTextBox" ErrorMessage="Please enter a value!" />

                    </div>
                    <div class="mt-2 col-6">
                        <label class="form-label">Job Title</label>

                        <asp:TextBox required="required" CssClass="form-control" ID="TITLETextBox" runat="server" Text='<%# Bind("TITLE") %>' />
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="titleID" ControlToValidate="TITLETextBox" ErrorMessage="Please enter a value!" />

                    </div>
                    <div class="mt-2 col-6">
                        <label class="form-label">Minimum salary</label>

                        <asp:TextBox required="required" CssClass="form-control" ID="MINIMUM_SALARYTextBox" runat="server" Text='<%# Bind("MINIMUM_SALARY") %>' />
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="minsal" ControlToValidate="MINIMUM_SALARYTextBox" ErrorMessage="Please enter a value!" />


                    </div>
                    <div class="mt-2 col-6">
                        <label class="form-label">Maximum salary</label>

                        <asp:TextBox required="required" CssClass="form-control" ID="MAXIMUM_SALARYTextBox" runat="server" Text='<%# Bind("MAXIMUM_SALARY") %>' />
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="maxsal" ControlToValidate="MAXIMUM_SALARYTextBox" ErrorMessage="Please enter a value!" />

                    </div>
                    <div class="mt-2 col-6">
                        <label class="form-label">Experience in years</label>

                        <asp:TextBox required="required" CssClass="form-control" ID="EXPERIENCE_YEARSTextBox" runat="server" Text='<%# Bind("EXPERIENCE_YEARS") %>' />
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="ex" ControlToValidate="EXPERIENCE_YEARSTextBox" ErrorMessage="Please enter a value!" />

                    </div>
                    <div class="col-6 mt-4"></div>


                </div>
                <%--      <asp:LinkButton class="mt-4 btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton class="mt-2 col-6 btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Back to list" />--%>
                <asp:LinkButton class="mt-4 btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton href="Job.aspx" class="mt-4 btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Back to list" />
            </InsertItemTemplate>

        </asp:FormView>
    </div>
</asp:Content>
