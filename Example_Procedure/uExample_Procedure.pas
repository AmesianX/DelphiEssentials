unit uExample_Procedure;

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
   TfrmProcedure = class(TForm)
      btnProcedure: TButton;
      mmProcedure: TMemo;
      procedure btnProcedureClick(Sender: TObject);
   private
      procedure NewProc(I: Integer; var B: Boolean);
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmProcedure: TfrmProcedure;

implementation

{$R *.fmx}

procedure TfrmProcedure.NewProc(I: Integer; var B: Boolean);
begin
   if (I mod 2 = 0) then
      B := True
   else
      B := False;
end;

procedure TfrmProcedure.btnProcedureClick(Sender: TObject);
var
   myInt: Integer;
   myBool: Boolean;
begin
   myInt := 3;

   NewProc(myInt, myBool);

   if myBool then
      mmProcedure.Lines.Add('Pair')
   else
      mmProcedure.Lines.Add('Odd');
end;

end.
