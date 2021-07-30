unit Model.Components.Connection.FireDac;

interface
uses  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  FireDAC.FMXUI.Wait,
   FireDAC.Comp.UI;
  type
  TModelComponentsConnectionFiredac = class
    public

    class function Connection:TFDConnection;

  end;
implementation
    Var FConnection :TFDConnection;
{ TModelComponentsConnectionFiredac }

class function TModelComponentsConnectionFiredac.Connection: TFDConnection;
begin
  if not Assigned(FConnection) then
  begin
    FConnection := TFDConnection.Create(nil);
    FConnection.Connected       := False;
    FConnection.Params.DriverID := 'FB';
    FConnection.LoginPrompt     := False;
    FConnection.Params.Database := 'C:\Projetos\ERP\Banco\ERP.FDB';
    FConnection.Params.UserName := 'SYSDBA';
    FConnection.Params.Password := '';
    FConnection.Connected       := True;
  end;
  Result := FConnection;
end;
Initialization

Finalization;
  if Assigned(FConnection) then
    FConnection.Free;
end.



