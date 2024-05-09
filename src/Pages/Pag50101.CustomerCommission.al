namespace SPABC.SPABC;

page 50101 "Customer Commission "
{
    ApplicationArea = All;
    Caption = 'Customer Commission ';
    PageType = Card;
    SourceTable = "Customer Commission";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

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

                field(Comments; Rec.Comments)
                {
                    ToolTip = 'Specifies the value of the Comments field.';
                }

                field("commision Amount"; Rec."commision Amount")
                {
                    ToolTip = 'Specifies the value of the commision Amount field.';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    // DataClassification = ToBeClassified;
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(CalculateCommission)
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = process;
                PromotedIsBig = true;
                Image = Calculate;

                trigger OnAction()
                var
                    commissionmgt: Codeunit "Commission Management";
                begin
                    commissionmgt.CalculateCommission(Rec);
                end;
            }
        }
    }
}

