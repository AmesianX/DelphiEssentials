program Example_Function;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_Function in 'uExample_Function.pas' {frmFunction};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFunction, frmFunction);
  Application.Run;
end.
