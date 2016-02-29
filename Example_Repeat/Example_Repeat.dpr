program Example_Repeat;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_Repeat in 'uExample_Repeat.pas' {frmRepeat};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmRepeat, frmRepeat);
  Application.Run;
end.
