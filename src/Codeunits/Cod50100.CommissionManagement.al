namespace SPABC.SPABC;

codeunit 50100 "Commission Management"
{
    procedure CalculateCommission(Var CustomerCommission: Record "Customer Commission")
    var
        myInt: Integer;
    begin
        CustomerCommission."commision Amount" := (CustomerCommission."Commission Percentage" / 100) * CustomerCommission."Total Amount";
    end;
}
