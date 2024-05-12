namespace SPABC.SPABC;

using Microsoft.Sales.Customer;

tableextension 50100 "Customer Ext" extends Customer
{
    fields
    {
        field(50100; "Commission Percentage"; Decimal)
        {
            Caption = 'Commission Percentage';
            DataClassification = ToBeClassified;
        }
        field(50101; "Total Commission"; Decimal)
        {
            Caption = 'Total Commission';
            DataClassification = ToBeClassified;
            Editable = false;
            //FieldClass = FlowField;
            //CalcFormula = sum("Customer Commission"."commision Amount" where("Customer No" = field("No.")));

        }
        field(50102; Comments; Text[100])
        {
            Caption = 'Comments';
            DataClassification = ToBeClassified;
        }
        field(50103; "Total Sales"; Decimal)
        {
            caption = 'Total Sales';
            DataClassification = ToBeClassified;
        }
    }

}
