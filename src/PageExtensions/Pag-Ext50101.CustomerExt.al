namespace SPABC.SPABC;

using Microsoft.Sales.Customer;

pageextension 50101 "Customer Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Commission Percentage"; Rec."Commission Percentage")
            {
                //DataClassification = ToBeClassified;
            }
            field("Total Commission"; Rec."Total Commission")
            {
                //DataClassification = ToBeClassified;
            }
            field(Comments; Rec.Comments)
            {
                // = true;
            }
            field("Total Sales"; Rec."Total Sales")
            {
                //DataClassification = ToBeClassified;
            }
        }
    }
}
