namespace SPABC.SPABC;

report 50100 "Customer Commission Report"
{
    ApplicationArea = All;
    Caption = 'Customer Commission Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(CustomerCommission; "Customer Commission")
        {
            column(No; No)
            {
            }
            column(CustomerNo; "Customer No")
            {
            }
            column(CustomerName; "Customer Name")
            {
            }
            column(CommissionPercentage; "Commission Percentage")
            {
            }
            column(TotalAmount; "Total Amount")
            {
            }
            column(commisionAmount; "commision Amount")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {

                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
