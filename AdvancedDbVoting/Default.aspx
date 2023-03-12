<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="AdvancedDbVoting._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="text-primary"><i class="bi bi-check2-square"></i>Online Voting System</h3>
    <div class="row justify-content-between mt-3">
        <div class="col-2 p-3 text-center" style="background-color: #ACCBFF; border-radius: 5px">
            <h3><i class="bi bi-people-fill"></i></h3>
            <h6><a href="Employee.aspx">Employee</a></h6>



        </div>
        <div class="col-2 p-3  text-center " style="background-color: #92BBFF; border-radius: 5px">
            <h3><i class="bi bi-building"></i></h3>
            <h6><a href="Department.aspx">Department</a></h6>
        </div>
        <div class="col-2 p-3  text-center" style="background-color: #78AAFF; border-radius: 5px">
            <h3><i class="bi bi-laptop"></i></h3>
            <h6><a href="Job.aspx">Job</a></h6>
        </div>
        <div class="col-2 p-3  text-center" style="background-color: #649eff; border-radius: 5px">
            <h3><i class="bi bi-pin-map-fill"></i></h3>
            <h6><a href="Address.aspx">Address</a></h6>
        </div>
        <div class="col-2 p-3  text-center" style="background-color: #4188ff; border-radius: 5px">
            <h3><i class="bi bi-briefcase-fill"></i></h3>
            <h6><a href="Role.aspx">Roles</a></h6>
        </div>



    </div>
    <div class="row justify-content-between mt-4">
        <div class="col-2 p-3 text-center" style="background-color: #ACCBFF; border-radius: 5px">
            <h3><i class="bi bi-file-earmark-spreadsheet"></i></h3>
            <h6><a href="VotingRecord.aspx">Voting Record</a></h6>



        </div>
        <div class="col-2 p-3  text-center " style="background-color: #92BBFF; border-radius: 5px">
            <h3><i class="bi bi-clock-history"></i></h3>
            <h6><a href="JobHistory.aspx">Job History</a></h6>
        </div>
        <div class="col-2 p-3  text-center" style="background-color: #78AAFF; border-radius: 5px">
            <h3><i class="bi bi-award-fill"></i></h3>
            <h6><a href="EmployeeOfTheMonth.aspx">Employee of the month</a></h6>
        </div>
        <div class="col-2 p-3  text-center">
        </div>
        <div class="col-2 p-3  text-center">
        </div>



    </div>


    <div class="row pt-5 mt-5 pb-5 justify-content-around mb-5" style="background-color: aliceblue; border: 1px solid #649EFF">
        <div class="col-4">
            <h6>Employees by department</h6>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="250px" Width="200px">


                <Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Pie" Name="Series1" XValueMember="DEPARTMENT_NAME" YValueMembers="COUNT(JH.EMPLOYEE_ID)">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>
        <div class="col-4">
            <h6>Highest voted employees of February</h6>
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="250px" Width="200px">
                <Series>
                    <asp:Series ChartType="Bar" Name="Series1" XValueMember="CANDIDATE_ID" YValueMembers="COUNT">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="Select d.department_name, count(jh.employee_id) FROM job_history jh JOIN department d ON
d.department_id = jh.department_id GROUP BY d.department_name"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand=" SELECT candidate_id, COUNT(candidate_id) as count FROM voting_record vr JOIN voting v ON v.voting_id = vr.voting_id where v.voting_month = 'february' and v.voting_year='2023' GROUP BY candidate_id order by count desc"></asp:SqlDataSource>

    </div>

    <%--<div class="row mt-3 pb-5">
        <h6>Forms</h6>

        <div class="col-sm-6 mb-3 mb-sm-0">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Simple forms</h5>
                    <ul>
                        <li><a href="Employee.aspx">Employee</a></li>
                        <li><a href="Department.aspx">Department</a></li>
                        <li><a href="Job.aspx">Job</a></li>
                        <li><a href="Address.aspx">Address</a></li>
                        <li><a href="Role.aspx">Roles</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Complex forms</h5>
                    <ul>
                        <li><a href="VotingRecord.aspx">Voting record</a></li>
                        <li><a href="EmployeeOfTheMonth.aspx">Employee of the month</a></li>
                        <li><a href="JobHistory.aspx">Job History
                        </a></li>


                    </ul>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
