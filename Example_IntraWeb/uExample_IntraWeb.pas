unit uExample_IntraWeb;

interface

uses
   Classes,
   IWAppForm,
   IWApplication,
   IWBaseContainerLayout,
   IWBaseControl,
   IWBaseHTMLControl,
   IWBaseLayoutComponent,
   IWColor,
   IWCompButton,
   IWCompEdit,
   IWCompLabel,
   IWCompMemo,
   IWContainer,
   IWContainerLayout,
   IWControl,
   IWHTML40Container,
   IWHTMLContainer,
   IWRegion,
   IWTemplateProcessorHTML,
   IWTypes,
   IWVCLBaseContainer,
   IWVCLBaseControl,
   IWVCLComponent,
   ServerController,
   SysUtils,
   Vcl.Controls,
   Vcl.Forms;

type
   TIWFrmIntraWeb = class(TIWAppForm)
      lblFirst: TIWLabel;
      edtFirst: TIWEdit;
      lblSecound: TIWLabel;
      edtSecound: TIWEdit;
      btnSum: TIWButton;
      lblResult: TIWLabel;
      edtResult: TIWEdit;
    IWRegionContent: TIWRegion;
        procedure btnSumClick(Sender: TObject);
      procedure IWAppFormCreate(Sender: TObject);
      procedure IWAppFormRender(Sender: TObject);
   public
   end;

implementation

{$R *.dfm}

procedure TIWFrmIntraWeb.btnSumClick(Sender: TObject);
var
   vFirst: Double;
   vSecound: Double;
   vResult: Double;
begin
   vFirst := StrToFloat(edtFirst.Text);
   vSecound := StrToFloat(edtSecound.Text);
   vResult := vFirst + vSecound;
   edtResult.Text := FloatToStr(vResult);
end;

procedure TIWFrmIntraWeb.IWAppFormCreate(Sender: TObject);
begin
   // StyleSheet.Filename := 'C:\TREINAMENTO\DelphiEssentials\APP\Example_03\Win32\Release\style.css';
   // StyleSheet.URL := 'style.css';
end;

procedure TIWFrmIntraWeb.IWAppFormRender(Sender: TObject);
begin
   StyleSheet.Filename := 'style.css';
end;

initialization

TIWFrmIntraWeb.SetAsMainForm;

end.
