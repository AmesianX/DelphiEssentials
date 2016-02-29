unit uExample_String;

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
   TfrmString = class(TForm)
      btnString: TButton;
      mmString: TMemo;
      procedure btnStringClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmString: TfrmString;

implementation

{$R *.fmx}

procedure TfrmString.btnStringClick(Sender: TObject);
var
   s: string;
   ch1, ch2: Char;
begin
   s := 'Hello';

   ch1 := s[1];
   ch2 := s[2];

   mmString.Lines.Add('My String: ' + s + //
      ' | Char 1: ' + ch1 + //
      ' | Char 2: ' + ch2);

end;

end.
