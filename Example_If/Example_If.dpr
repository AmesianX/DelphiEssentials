program Example_If;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_If in 'uExample_If.pas' {frmIf};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmIf, frmIf);
  Application.Run;
end.
