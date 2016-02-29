program Example_String;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_String in 'uExample_String.pas' {frmString};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmString, frmString);
  Application.Run;
end.
