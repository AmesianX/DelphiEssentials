unit uExample_Repeat;

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
   TfrmRepeat = class(TForm)
      btnRepeat: TButton;
      mmRepeat: TMemo;
      procedure btnRepeatClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmRepeat: TfrmRepeat;

implementation

{$R *.fmx}

procedure TfrmRepeat.btnRepeatClick(Sender: TObject);
var
   i: integer;
begin
   i := 0;

   repeat
      mmRepeat.Lines.Add(i.ToString);
      Inc(i);
   until (i = 10);
end;

end.
