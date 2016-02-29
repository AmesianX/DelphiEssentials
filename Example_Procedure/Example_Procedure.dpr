program Example_Procedure;

uses
  System.StartUpCopy,
  FMX.Forms,
  uExample_Procedure in 'uExample_Procedure.pas' {frmProcedure};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmProcedure, frmProcedure);
  Application.Run;
end.
