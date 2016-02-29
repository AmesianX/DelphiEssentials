program Example_IntraWeb;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  uExample_IntraWeb in 'uExample_IntraWeb.pas' {IWFrmIntraWeb: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
