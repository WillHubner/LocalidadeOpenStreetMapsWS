unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.JSON, REST.JSON,
  Vcl.OleCtrls, SHDocVw, MSHTML, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Vcl.ComCtrls, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, ClipBRD;

type
  TfPrincipal = class(TForm)
    Button1: TButton;
    edLat: TEdit;
    edLong: TEdit;
    IdHTTP1: TIdHTTP;
    pcRetornos: TPageControl;
    tsRetornoJSON: TTabSheet;
    memRetorno: TMemo;
    tsDados: TTabSheet;
    memLinhas: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

procedure TfPrincipal.Button1Click(Sender: TObject);
var
  MapsURL: String;
  ENUSLat, ENUSLong: String;

  RetornoJSON: TJSONValue;
begin
  ENUSLat := edLat.Text;
  ENUSLong := edLong.Text;

  MapsURL := 'https://nominatim.openstreetmap.org/reverse?lat='+ENUSLat+'&lon='+ENUSLong+'&format=json';

  memRetorno.Text := IdHTTP1.Get(MapsURL);

  RetornoJSON := TJSONObject.ParseJSONValue(memRetorno.Text);

  memRetorno.Text := TJson.Format(RetornoJSON);

  memLinhas.Lines.Add( TJSONObject(RetornoJSON).GetValue('display_name').Value );
  memLinhas.Lines.Add( '' );
  memLinhas.Lines.Add( 'Endereço: ' + TJSONObject(TJSONObject(RetornoJSON).GetValue('address')).GetValue('road').Value );
  memLinhas.Lines.Add( 'CIDADE: ' + TJSONObject(TJSONObject(RetornoJSON).GetValue('address')).GetValue('city').Value );
  memLinhas.Lines.Add( 'PAÍS: ' + TJSONObject(TJSONObject(RetornoJSON).GetValue('address')).GetValue('country').Value );
  memLinhas.Lines.Add( 'ESTADO: ' + TJSONObject(TJSONObject(RetornoJSON).GetValue('address')).GetValue('state').Value );
  memLinhas.Lines.Add( 'CEP: ' + TJSONObject(TJSONObject(RetornoJSON).GetValue('address')).GetValue('postcode').Value );
end;

end.
