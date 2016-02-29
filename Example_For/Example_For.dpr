program Example_For;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_For in 'uExample_For.pas' {frmFor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFor, frmFor);
  Application.Run;
end.
