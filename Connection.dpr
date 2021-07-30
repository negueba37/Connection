program Connection;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Principal in 'src\View\View.Principal.pas' {frmPrincipal},
  Model.Components.Query.Interfaces in 'src\Model\Components\Query\Model.Components.Query.Interfaces.pas',
  Model.Components.Query.FireDac in 'src\Model\Components\Query\Model.Components.Query.FireDac.pas',
  Model.Components.Connection.FireDac in 'src\Model\Components\Connection\Model.Components.Connection.FireDac.pas',
  Model.Components.Query in 'src\Model\Components\Query\Model.Components.Query.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  ReportMemoryLeaksOnShutdown := True;
  Application.Run;
end.
