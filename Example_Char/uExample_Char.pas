unit uExample_Char;

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
   FMX.ScrollBox,
   FMX.Memo,
   FMX.Controls.Presentation,
   FMX.StdCtrls;

type
   TfrmChar = class(TForm)
      btnChar: TButton;
      mmChar: TMemo;
      procedure btnCharClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmChar: TfrmChar;

implementation

{$R *.fmx}

procedure TfrmChar.btnCharClick(Sender: TObject);
var
   i: integer;
begin
   mmChar.Lines.Clear;

   for i := 32 to 283 do
      mmChar.Lines.Add('#' + FormatFloat('000', i) + ': [ ' + Chr(i) + ' ]');
end;

end.
