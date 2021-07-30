unit Model.Components.Query;

interface

uses Model.Components.Query.Interfaces, Model.Components.Query.FireDac;

type
  TModelComponentsQuery = class(TInterfacedObject, IModelComponentsQueryFactory)
  private
  public
    constructor Create;
    destructor Destroy;override;
    class function New: IModelComponentsQueryFactory;
    Function Query: IModelComponentsQueryInterfaces;
  end;

implementation

{ TModelComponentsQuery }

constructor TModelComponentsQuery.Create;
begin

end;

destructor TModelComponentsQuery.Destroy;
begin

  inherited;
end;

class function TModelComponentsQuery.New: IModelComponentsQueryFactory;
begin
  Result := Self.Create;
end;

function TModelComponentsQuery.Query: IModelComponentsQueryInterfaces;
begin
  Result := TModelComponentsQueryFireDac.New;
end;

end.
