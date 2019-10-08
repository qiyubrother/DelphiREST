object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 19
    Height = 13
    Caption = 'URL'
  end
  object Label2: TLabel
    Left = 8
    Top = 51
    Width = 39
    Height = 13
    Caption = 'Content'
  end
  object edtURL: TEdit
    Left = 8
    Top = 24
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object memLog: TMemo
    Left = 8
    Top = 70
    Width = 337
    Height = 221
    TabOrder = 1
  end
  object btnDo: TButton
    Left = 351
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Do'
    TabOrder = 2
    OnClick = btnDoClick
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 568
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 568
    Top = 80
  end
  object RESTResponse1: TRESTResponse
    Left = 568
    Top = 152
  end
end
