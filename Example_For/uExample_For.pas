unit uExample_For;

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
   TfrmFor = class(TForm)
      btnFor: TButton;
      mmFor: TMemo;
      procedure btnForClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmFor: TfrmFor;

implementation

{$R *.fmx}

procedure TfrmFor.btnForClick(Sender: TObject);
var
   i: integer;
begin
   for i := 0 to 10 do
      mmFor.Lines.Add(i.ToString);
end;

end.
