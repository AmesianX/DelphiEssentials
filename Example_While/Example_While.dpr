program Example_While;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_While in 'uExample_While.pas' {frmWhile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmWhile, frmWhile);
  Application.Run;
end.
