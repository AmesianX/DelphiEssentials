unit uExample_If_Else;

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
   TFrmIfElse = class(TForm)
      btnIfElse: TButton;
      mmIfElse: TMemo;
      procedure btnIfElseClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmIfElse: TFrmIfElse;

implementation

{$R *.fmx}

procedure TFrmIfElse.btnIfElseClick(Sender: TObject);
var
   i, j, k: Double;
begin
   i := 2;
   j := 8;

   if (i > j) then
      k := i / j
   else if (i < j) then
      k := i + j;

   mmIfElse.Lines.Add('Result: ' + k.ToString);
end;

end.
