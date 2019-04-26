program AndroidWebBroker;

uses
  System.StartUpCopy,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FMX.Forms,
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule},
  mainDM in 'mainDM.pas' {dmMain: TDataModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
