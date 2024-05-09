namespace SPABC.SPABC;

codeunit 50100 "Commission Management"
{
    procedure CalculateCommission(Var CustomerCommission: Record "Customer Commission")
    var
        ishandled: Boolean;
    begin
        OnBeforeCalculateCommission(CustomerCommission, ishandled);
        if ishandled then
            message('Check')
        else
            CustomerCommission."commision Amount" := (CustomerCommission."Commission Percentage" / 100) * CustomerCommission."Total Amount";
    end;


    [IntegrationEvent(false, false)]
    procedure OnBeforeCalculateCommission(Var CustomerCommission: Record "Customer Commission"; Var ishandled: Boolean)
    begin
    end;
}

