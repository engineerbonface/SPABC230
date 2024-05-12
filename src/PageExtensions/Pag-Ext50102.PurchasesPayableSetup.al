namespace SPABC.SPABC;

using Microsoft.Purchases.Setup;

pageextension 50102 "Purchases & Payable Setup" extends "Purchases & Payables Setup"
{
    layout
    {
        addlast("Number series")
        {
            field(No; Rec.No)
            {
                //DataClassification = ToBeClassified;
            }
        }
    }
}