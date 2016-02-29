program Example_Char;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_Char in 'uExample_Char.pas' {frmChar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmChar, frmChar);
  Application.Run;
end.
