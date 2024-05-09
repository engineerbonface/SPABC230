namespace SPABC.SPABC;

codeunit 50101 "Event and Subscriptions"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Commission Management", OnBeforeCalculateCommission, '', false, false)]
    local procedure OnBeforeCalculateCommission(Var CustomerCommission: Record "Customer Commission"; Var ishandled: Boolean)
    begin
        CustomerCommission."commision Amount" := ((CustomerCommission."Commission Percentage" / 100) * CustomerCommission."Total Amount") * 5;
        ishandled := true;
    end;
}
