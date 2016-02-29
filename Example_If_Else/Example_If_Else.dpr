program Example_If_Else;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_If_Else in 'uExample_If_Else.pas' {FrmIfElse};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmIfElse, frmIfElse);
  Application.Run;
end.
