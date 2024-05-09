namespace SPABC.SPABC;

page 50100 "Customer Commission"
{
    ApplicationArea = All;
    Caption = 'Customer Commission';
    PageType = List;
    SourceTable = "Customer Commission";
    UsageCategory = Lists;
    CardPageId = 50101;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                }

                field("Customer No"; Rec."Customer No")
                {
                    ToolTip = 'Specifies the value of the Customer No field.';
                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }

                field("Commission Percentage"; Rec."Commission Percentage")
                {
                    ToolTip = 'Specifies the value of the Commission Percentage field.';
                }

                field("Commision Date"; Rec."Commision Date")
                {
                    ToolTip = 'Specifies the value of the Commision Date field.';
                }

                field("commision Amount"; Rec."commision Amount")
                {
                    ToolTip = 'Specifies the value of the commision Amount field.';
                }

                field("Total Amount"; Rec."Total Amount")
                {
                    // DataClassification = ToBeClassified;
                }
                field(Comments; Rec.Comments)
                {
                    ToolTip = 'Specifies the value of the Comments field.';
                }
            }
        }
    }
}
