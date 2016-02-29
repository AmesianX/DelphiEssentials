unit uExample_If;

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
   TfrmIf = class(TForm)
      btnIf: TButton;
      mmIf: TMemo;
      procedure btnIfClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmIf: TfrmIf;

implementation

{$R *.fmx}

procedure TfrmIf.btnIfClick(Sender: TObject);
var
   myInt: Integer;
begin
   myInt := 0;

   if (myInt > 0) then
      mmIf.Lines.Add('myInt is bigger than 0');

   if not(myInt < 0) then
      mmIf.Lines.Add('myInt it is not less than 0');

   if (myInt >= 0) then
      mmIf.Lines.Add('myInt it is greater than or equal to 0');

   if (myInt <= 0) then
      mmIf.Lines.Add('myInt it is less than or equal to 0');

   if (myInt <> 0) then
      mmIf.Lines.Add('myInt it is other than 0');

   if (myInt = 0) then
      mmIf.Lines.Add('myInt it is equal to 0');
end;

end.
