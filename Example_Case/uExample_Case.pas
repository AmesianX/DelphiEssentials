unit uExample_Case;

interface

uses
   FMX.Controls,
   FMX.Controls.Presentation,
   FMX.Dialogs,
   FMX.Forms,
   FMX.Graphics,
   FMX.Memo,
   FMX.ScrollBox,
   FMX.StdCtrls,
   FMX.Types,
   System.Classes,
   System.SysUtils,
   System.Types,
   System.UITypes,
   System.Variants;

type
   TfrmCase = class(TForm)
      btnCase: TButton;
      mmCase: TMemo;
      procedure btnCaseClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmCase: TfrmCase;

implementation

{$R *.fmx}

procedure TfrmCase.btnCaseClick(Sender: TObject);
var
   i: integer;
begin
   i := 100;

   case i of
      1 .. 5:
         mmCase.Lines.Add('Down');
      6 .. 9:
         mmCase.Lines.Add('Up');
      0, 10 .. 99:
         mmCase.Lines.Add('Not range');
   else
      mmCase.Lines.Add('No Limit');
   end;
end;

end.
