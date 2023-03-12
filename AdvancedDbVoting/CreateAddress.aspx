<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreateAddress.aspx.vb" Inherits="AdvancedDbVoting.CreateAddress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="w-100">Create new address</h2>
    <div class="card p-3">



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;ZIP_CODE&quot;, &quot;POSTAL_CODE&quot;, &quot;STREET&quot;, &quot;CITY&quot;, &quot;COUNTRY&quot;) VALUES (:ADDRESS_ID, :ZIP_CODE, :POSTAL_CODE, :STREET, :CITY, :COUNTRY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;ZIP_CODE&quot; = :ZIP_CODE, &quot;POSTAL_CODE&quot; = :POSTAL_CODE, &quot;STREET&quot; = :STREET, &quot;CITY&quot; = :CITY, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">

            <InsertParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
                <asp:Parameter Name="ZIP_CODE" Type="String" />
                <asp:Parameter Name="POSTAL_CODE" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="COUNTRY" Type="String" />
            </InsertParameters>

        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="w-50 ">

            <InsertItemTemplate>
                <div class="row">
                    <div class="col-6 mt-2">
                        <label class="form-label">Address ID</label>
                        <asp:TextBox required="required" class="form-control" ID="ADDRESS_IDTextBox" runat="server" Text='<%# Bind("ADDRESS_ID") %>' />

                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">ZIP Code</label>
                        <asp:TextBox required="required" type="number" class="form-control" ID="ZIP_CODETextBox" runat="server" Text='<%# Bind("ZIP_CODE") %>' />

                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">Postal Code</label>
                        <asp:TextBox required="required" type="number" class="form-control" ID="POSTAL_CODETextBox" runat="server" Text='<%# Bind("POSTAL_CODE") %>' />

                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">Street</label>
                        <asp:TextBox required="required" class="form-control" ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />

                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">City</label>
                        <asp:TextBox required="required" class="form-control" ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />

                    </div>
                    <div class="col-6 mt-2">
                        <label class="form-label">Country</label>
                        <asp:TextBox required="required" class="form-control" ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />

                    </div>
                    <%--    <div class="col-6 mt-3">
                        <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Create" />
                    </div>
                    <div class="mt-3">

                    <asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Back to list" />
                    </div>--%>
                </div>
                <asp:LinkButton ID="InsertButton" runat="server" class="mt-4 btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton href="Address.aspx" ID="InsertCancelButton" class="mt-4 btn btn-danger" runat="server" CausesValidation="False" CommandName="Back to list" Text="Back to list" />
            </InsertItemTemplate>

        </asp:FormView>



    </div>
</asp:Content>
