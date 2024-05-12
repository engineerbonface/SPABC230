
report 50100 "Commission Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;

    RDLCLayout = 'Reports/CustCommList.rdl';
    // RDLCLayout = 'Layouts/CustomerCommList.rdl';
    dataset
    {
        dataitem(CustCommission; "Customer Commission")
        {
            RequestFilterFields = no, "Customer No";
            column(No; No)
            {

            }
            column(CustNo; "Customer No")
            {

            }
            column(CustName; "Customer Name")
            {

            }
            column(CommissionPercentage; "Commission Percentage")
            {

            }
            column(commision_Amount; "Commision Amount")
            {

            }
            column(CompanyName; CompanyName)
            {

            }
            column(CompanyPic; CompanyInfo.Picture)
            {

            }
            column(ReportName; Customer_Report_Title)
            {

            }
        }
    }
    trigger OnPreReport()
    begin
        CompanyInfo.Get;
        CompanyInfo.CalcFields(Picture);
    end;


    var
        CompanyInfo: Record "Company Information";
        Customer_Report_Title: Label 'Customer Commossion Report';
}