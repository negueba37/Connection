unit Model.Components.Query.Interfaces;

interface
  uses Data.DB;
  type
  IModelComponentsQueryInterfaces = interface
    ['{4920C789-0953-4161-82DE-8498A42BB7F4}']
    function Active : Boolean;
    function Close : IModelComponentsQueryInterfaces;
    function DataSet : TDataSet;
    function ExecSQL : IModelComponentsQueryInterfaces;
    function Open : IModelComponentsQueryInterfaces;
    function ParamByName(aParam:string;aValue:Variant): IModelComponentsQueryInterfaces;
    function FiledByName(aField:string):Variant;
    function SQLAdd(aSQL:string) : IModelComponentsQueryInterfaces;
    function SQLClear : IModelComponentsQueryInterfaces;
  end;

  IModelComponentsQueryFactory = interface
  ['{4C4213D1-1256-4F1D-89FF-A2C1289129AE}']
  Function Query:IModelComponentsQueryInterfaces;
  end;
implementation

end.
