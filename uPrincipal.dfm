object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  ClientHeight = 349
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    489
    349)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 262
    Top = 8
    Width = 139
    Height = 22
    Caption = 'Consultar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edLat: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Digite a latitude...'
  end
  object edLong: TEdit
    Left = 135
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Digite a longitude...'
  end
  object pcRetornos: TPageControl
    Left = 8
    Top = 36
    Width = 473
    Height = 305
    ActivePage = tsRetornoJSON
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    ExplicitWidth = 666
    ExplicitHeight = 486
    object tsRetornoJSON: TTabSheet
      Caption = 'Retorno JSON'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object memRetorno: TMemo
        Left = 0
        Top = 0
        Width = 465
        Height = 277
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -385
        ExplicitTop = -321
        ExplicitWidth = 666
        ExplicitHeight = 483
      end
    end
    object tsDados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitWidth = 658
      ExplicitHeight = 455
      object memLinhas: TMemo
        Left = 0
        Top = 0
        Width = 465
        Height = 277
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 240
        ExplicitTop = 184
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 416
    Top = 96
  end
end
