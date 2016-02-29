unit uExample_While;

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
   TfrmWhile = class(TForm)
      btnWhile: TButton;
      mmWhile: TMemo;
      procedure btnWhileClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmWhile: TfrmWhile;

implementation

{$R *.fmx}

procedure TfrmWhile.btnWhileClick(Sender: TObject);
var
   i: Integer;
begin
   i := 0;

   while not(i > 10) do
   begin
      mmWhile.Lines.Add(i.ToString);
      Inc(i);
   end;
end;

end.
