program Example_Case;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_Case in 'uExample_Case.pas' {frmCase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCase, frmCase);
  Application.Run;
end.
