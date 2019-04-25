unit mainDM;

interface

uses
  System.SysUtils, System.Classes, IdHTTPWebBrokerBridge, Web.HTTPApp;

type
  TdmMain = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FServer: TidHTTPWebBrokerBridge;
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := 8888;
    FServer.Active := True;
  end;
end;

end.
