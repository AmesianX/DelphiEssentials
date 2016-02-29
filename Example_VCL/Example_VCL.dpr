program Example_VCL;

uses
  Vcl.Forms,
  uExample_VCL in 'uExample_VCL.pas' {frmVCL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCL, frmVCL);
  Application.Run;
end.
