table 50100 "Customer Commission"
{
    Caption = 'Customer Commission';
    DataClassification = CustomerContent;

    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
        }
        field(2; "Customer No"; Code[20])
        {
            Caption = 'Customer No';
            TableRelation = Customer."No.";
            trigger OnValidate()
            begin
                CopyCustomerdata()
            end;

        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            Editable = false;
        }
        field(4; "Commision Date"; Date)
        {
            Caption = 'Commision Date';
        }
        field(5; Comments; Text[100])
        {
            Caption = 'Comments';
        }
        field(6; "Commission Percentage"; Decimal)
        {
            Caption = 'Commission Percentage';
        }
        field(7; "commision Amount"; Decimal)
        {
            Caption = 'commision Amount';
        }
        field(8; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    local procedure CopyCustomerdata()
    var
        Customer: Record Customer;
    begin
        if customer.get("Customer No") then begin
            "Customer Name" := Customer.Name;
            Comments := Customer.Comments;
            "Commission Percentage" := Customer."Commission Percentage";
            "commision Amount" := customer."Total Commission";
        end
    end;
}