unit View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  Model.Components.Query, Model.Components.Query.Interfaces;


type
  TfrmPrincipal = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
   FQuery2,FQuery:IModelComponentsQueryInterfaces;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  FQuery
  .Close
  .SQLClear
  .SQLAdd('SELECT * from CAD_CLIENTES')
  .Open;

  FQuery.DataSet.First;
  Memo1.Lines.Clear;
  while not FQuery.DataSet.Eof do
  begin
    Memo1.Lines.Add(FQuery.DataSet.FieldByName('NOME').AsString);
    FQuery.DataSet.Next;
  end;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
   FQuery2
  .Close
  .SQLClear
  .SQLAdd('SELECT * from CAD_CLIENTES_CONTATOS')
  .Open;

  FQuery2.DataSet.First;
  Memo1.Lines.Clear;
  while not FQuery2.DataSet.Eof do
  begin
    Memo1.Lines.Add(FQuery2.DataSet.FieldByName('DS_CONTATO').AsString);
    FQuery2.DataSet.Next;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FQuery := TModelComponentsQuery.New.Query;
  FQuery2 := TModelComponentsQuery.New.Query;
end;

end.
