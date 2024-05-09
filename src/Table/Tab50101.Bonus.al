table 50101 Bonus
{
    Caption = 'Bonus';
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
            var
                myInt: Integer;
            begin
                CopyCustomerData();
            end;
        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
        }
        field(4; "Bonus %"; Decimal)
        {
            Caption = 'Bonus %';
        }
        field(5; "Bonus Amount"; Decimal)
        {
            Caption = 'Bonus Amount';
        }
        field(6; "Total Sales"; Decimal)
        {
            Caption = 'Total Sales';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    local procedure CopyCustomerData()
    var
        Cust: Record Customer;
    begin
        if Cust.get("Customer No") then begin
            "Customer Name" := Cust.Name;
            "Bonus %" := Cust."Commission Percentage";
            "Bonus Amount" := Cust."Total Commission";
            "Total Sales" := Cust."Total Sales";
        end;
    end;
}
