unit uExample_Firemonkey;

interface

uses
   System.SysUtils,
   System.Types,
   System.UITypes,
   System.Classes,
   System.Variants,
   FMX.Types,
   FMX.Controls,
   FMX.Forms,
   FMX.Graphics,
   FMX.Dialogs,
   FMX.StdCtrls,
   FMX.Edit,
   FMX.Controls.Presentation;

type
   TfrmFiremonkey = class(TForm)
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
   frmFiremonkey: TfrmFiremonkey;

implementation

{$R *.fmx}

procedure TfrmFiremonkey.btnSumClick(Sender: TObject);
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
