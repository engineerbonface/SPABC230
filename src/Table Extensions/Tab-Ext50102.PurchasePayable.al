namespace SPABC.SPABC;

using Microsoft.Purchases.Setup;

tableextension 50102 "Purchase & Payable" extends "Purchases & Payables Setup"
{
    fields
    {
        field(50100; No; Code[20])
        {
            Caption = 'No';
            DataClassification = CustomerContent;
            TableRelation = "Purchases & Payables Setup".No;
        }
    }
}
