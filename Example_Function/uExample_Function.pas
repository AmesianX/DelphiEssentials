unit uExample_Function;

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
   FMX.StdCtrls,
   System.StrUtils;

type
   TfrmFunction = class(TForm)
      btnFunction: TButton;
      mmFunction: TMemo;
      procedure btnFunctionClick(Sender: TObject);
   private
      function Add(A, B: Double): Double;
      function AddStr(A, B: Double): string;
      function Subtract(Value1, Value2: integer): Double;
      function Divide(ValueA, ValueB: Real): Double;
      function LineCount(MyMemo: TMemo): integer;
      procedure MemoClear;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmFunction: TfrmFunction;

implementation

{$R *.fmx}

function TfrmFunction.LineCount(MyMemo: TMemo): integer;
begin
   Result := MyMemo.Lines.Count;
end;

procedure TfrmFunction.MemoClear;
begin
   mmFunction.Lines.Clear;
end;

function TfrmFunction.Divide(ValueA, ValueB: Real): Double;
begin
   Result := ValueA / ValueB;
end;

function TfrmFunction.Add(A, B: Double): Double;
begin
   Result := A + B;
end;

function TfrmFunction.AddStr(A, B: Double): string;
begin
   Result := FloatToStr(A + B);
end;

function TfrmFunction.Subtract(Value1, Value2: integer): Double;
begin
   Result := Value1 - Value2;
end;

procedure TfrmFunction.btnFunctionClick(Sender: TObject);
var
   param1, param2: Double;
   paramA, paramB: integer;

   resultAdd, resultSubtract, resultDivide: Double;

   resultAddStr: string;
   resultLineCount: integer;
begin
   MemoClear;

   param1 := 10.76;
   param2 := 5.59;

   resultAdd := Add(param1, param2);

   resultAddStr := AddStr(param1, param2);

   resultDivide := Divide(param1, param2);

   paramA := 10;
   paramB := 5;

   resultSubtract := Subtract(paramA, paramB);

   mmFunction.Lines.Add('result of Add: ' + resultAdd.ToString);
   mmFunction.Lines.Add('result of Add (String): ' + resultAddStr);
   mmFunction.Lines.Add('result of Subtract: ' + resultSubtract.ToString);
   mmFunction.Lines.Add('result of Divide: ' + resultDivide.ToString);

   resultLineCount := LineCount(mmFunction);

   mmFunction.Lines.Add('result of line count: ' + resultLineCount.ToString);
end;

end.
