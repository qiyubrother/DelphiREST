unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Vcl.StdCtrls, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.Json;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    edtURL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    memLog: TMemo;
    btnDo: TButton;
    procedure btnDoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDoClick(Sender: TObject);
var
  jo, jo2: TJSONObject;
  jv: TJSONValue;
  ja: TJSONArray;
  jp: TJSONPair;
  i: Integer;
begin
  RESTClient1.BaseURL := edtURL.Text;
  RESTRequest1.Execute;
  memLog.Text := RESTResponse1.Content;

  jo := TJSONObject.Create;
  ja := jo.ParseJSONValue(RESTResponse1.Content) as TJSONArray;
  for jv in ja do
  begin
    jo2 := jv as TJSONObject;
    for i := 0 to jo2.Count - 1 do
    begin
      jp := jo2.Pairs[i];
      memLog.Lines.Add(jp.JsonString.ToString + ':' + jp.JsonValue.ToString);
    end;
  end;

end;

end.
