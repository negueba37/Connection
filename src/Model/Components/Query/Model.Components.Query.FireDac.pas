unit Model.Components.Query.FireDac;

interface
 uses Model.Components.Query.Interfaces,
  Model.Components.Connection.FireDac,
  Data.DB,
  FireDAC.Stan.Intf,
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
  FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI;
  type
  TModelComponentsQueryFireDac = class(TInterfacedObject,IModelComponentsQueryInterfaces)
    private
    FQuery:TFDQuery;
    public
    constructor Create;
    destructor Destroy;override;
    class function New: IModelComponentsQueryInterfaces;
    function Active : Boolean;
    function Close : IModelComponentsQueryInterfaces;
    function ExecSQL : IModelComponentsQueryInterfaces;
    function DataSet : TDataSet;
    function Open : IModelComponentsQueryInterfaces;
    function ParamByName(aParam:string;aValue:Variant): IModelComponentsQueryInterfaces;
    function FiledByName(aField:string):Variant;
    function SQLAdd(aSQL:string) : IModelComponentsQueryInterfaces;
    function SQLClear : IModelComponentsQueryInterfaces;
  end;
implementation



{ TModelComponentsQueryFireDac }

function TModelComponentsQueryFireDac.Active: Boolean;
begin
  Result := FQuery.Active;
end;

function TModelComponentsQueryFireDac.Close: IModelComponentsQueryInterfaces;
begin
  Result := Self;
  FQuery.Close;
end;

constructor TModelComponentsQueryFireDac.Create;
begin
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TModelComponentsConnectionFiredac.Connection;
end;

function TModelComponentsQueryFireDac.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TModelComponentsQueryFireDac.Destroy;
begin
  FQuery.Free;
  inherited;
end;

function TModelComponentsQueryFireDac.ExecSQL: IModelComponentsQueryInterfaces;
begin
  Result := Self;
  FQuery.ExecSQL;
end;

function TModelComponentsQueryFireDac.FiledByName(aField: string): Variant;
begin
  Result := FQuery.FieldByName(aField).Value;
end;

class function TModelComponentsQueryFireDac.New: IModelComponentsQueryInterfaces;
begin
  Result := Self.Create;
end;

function TModelComponentsQueryFireDac.Open: IModelComponentsQueryInterfaces;
begin
  Result := Self;
  FQuery.Open()
end;

function TModelComponentsQueryFireDac.ParamByName(aParam: string; aValue: Variant): IModelComponentsQueryInterfaces;
begin
  Result := Self;
  FQuery.ParamByName(aParam).Value := aValue;
end;

function TModelComponentsQueryFireDac.SQLAdd(aSQL: string): IModelComponentsQueryInterfaces;
begin
  Result := Self;
  FQuery.SQL.Add(aSQL);
end;

function TModelComponentsQueryFireDac.SQLClear: IModelComponentsQueryInterfaces;
begin
  Result := Self;
  FQuery.SQL.Clear;
end;

end.
