program Example_Firemonkey;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_Firemonkey in 'uExample_Firemonkey.pas' {frmFiremonkey};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFiremonkey, frmFiremonkey);
  Application.Run;
end.
