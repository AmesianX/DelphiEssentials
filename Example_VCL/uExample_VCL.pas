unit uExample_VCL;

interface

uses
   Winapi.Windows,
   Winapi.Messages,
   System.SysUtils,
   System.Variants,
   System.Classes,
   Vcl.Graphics,
   Vcl.Controls,
   Vcl.Forms,
   Vcl.Dialogs,
   Vcl.StdCtrls;

type
   TfrmVCL = class(TForm)
      lblFirst: TLabel;
      edtFirst: TEdit;
      lblSecound: TLabel;
      edtSecound: TEdit;
      btnSum: TButton;
      lblResult: TLabel;
      edtResult: TEdit;
      procedure btnSumClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmVCL: TfrmVCL;

implementation

{$R *.dfm}

procedure TfrmVCL.btnSumClick(Sender: TObject);
var
   vFirst: Double;
   vSecound: Double;
   vResult: Double;
begin
   vFirst := StrToFloat(edtFirst.Text);
   vSecound := StrToFloat(edtSecound.Text);
   vResult := vFirst + vSecound;
   edtResult.Text := FloatToStr(vResult);
end;

end.
