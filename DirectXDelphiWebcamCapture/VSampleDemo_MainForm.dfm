object Form_Main: TForm_Main
  Left = 392
  Top = 223
  Caption = 'Web'
  ClientHeight = 561
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 377
    Top = 0
    Width = 10
    Height = 561
    OnMoved = Splitter1Moved
    ExplicitHeight = 562
  end
  object Panel_Left: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 561
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 562
    inline Frame_Video1: TFrame1
      Left = 1
      Top = 1
      Width = 375
      Height = 559
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 375
      ExplicitHeight = 560
      inherited Panel_Top: TPanel
        Width = 375
        ExplicitWidth = 375
        inherited Label_Cameras: TLabel
          Width = 55
          Height = 13
          ExplicitWidth = 55
          ExplicitHeight = 13
        end
        inherited Label1: TLabel
          Width = 105
          Height = 13
          Visible = False
          ExplicitWidth = 105
          ExplicitHeight = 13
        end
        inherited SpeedButton_RunVideo: TSpeedButton
          Left = 207
          Width = 63
          Height = 25
          Caption = #1057#1090#1072#1088#1090
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          ShowHint = False
          ExplicitLeft = 207
          ExplicitWidth = 63
          ExplicitHeight = 25
        end
        inherited SpeedButton_Stop: TSpeedButton
          Left = 276
          Width = 63
          Height = 25
          Caption = #1057#1090#1086#1087
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          ParentBiDiMode = False
          ShowHint = False
          ExplicitLeft = 276
          ExplicitWidth = 63
          ExplicitHeight = 25
        end
        inherited SpeedButton_VidSettings: TSpeedButton
          Left = 120
          ExplicitLeft = 120
        end
        inherited Label3: TLabel
          Width = 96
          Height = 13
          ExplicitWidth = 96
          ExplicitHeight = 13
        end
        inherited ComboBox_Cams: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
        inherited ComboBox_DisplayMode: TComboBox
          Height = 21
          Visible = False
          ExplicitHeight = 21
        end
        inherited ComboBox1: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
      end
      inherited Panel_Bottom: TPanel
        Width = 375
        Height = 455
        ExplicitWidth = 375
        ExplicitHeight = 455
        DesignSize = (
          375
          455)
        inherited Label_VideoSize: TLabel
          Width = 96
          Height = 13
          ExplicitWidth = 96
          ExplicitHeight = 13
        end
        inherited Label_fps: TLabel
          Left = 194
          Top = 13
          Width = 89
          Height = 13
          ExplicitLeft = 194
          ExplicitTop = 13
          ExplicitWidth = 89
          ExplicitHeight = 13
        end
        inherited PaintBox_Video: TPaintBox
          Width = 367
          Height = 499
          ExplicitWidth = 367
          ExplicitHeight = 499
        end
      end
    end
  end
  object Panel_Right: TPanel
    Left = 387
    Top = 0
    Width = 373
    Height = 561
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 377
    ExplicitHeight = 562
    inline Frame_Video2: TFrame1
      Left = 1
      Top = 1
      Width = 371
      Height = 559
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 375
      ExplicitHeight = 560
      inherited Panel_Top: TPanel
        Width = 371
        ExplicitWidth = 371
        inherited Label_Cameras: TLabel
          Width = 55
          Height = 13
          ExplicitWidth = 55
          ExplicitHeight = 13
        end
        inherited Label1: TLabel
          Width = 105
          Height = 13
          Visible = False
          ExplicitWidth = 105
          ExplicitHeight = 13
        end
        inherited SpeedButton_RunVideo: TSpeedButton
          Width = 63
          Caption = #1057#1090#1072#1088#1090
          ExplicitWidth = 63
        end
        inherited SpeedButton_Stop: TSpeedButton
          Left = 277
          Width = 63
          Caption = #1057#1090#1086#1087
          Font.Charset = RUSSIAN_CHARSET
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          ParentFont = False
          ExplicitLeft = 277
          ExplicitWidth = 63
        end
        inherited SpeedButton_VidSettings: TSpeedButton
          Left = 119
          ExplicitLeft = 119
        end
        inherited SpeedButton_VidSize: TSpeedButton
          Left = 5
          ExplicitLeft = 5
        end
        inherited Label3: TLabel
          Width = 96
          Height = 13
          ExplicitWidth = 96
          ExplicitHeight = 13
        end
        inherited ComboBox_Cams: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
        inherited ComboBox_DisplayMode: TComboBox
          Height = 21
          Visible = False
          ExplicitHeight = 21
        end
        inherited ComboBox1: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
      end
      inherited Panel_Bottom: TPanel
        Width = 371
        Height = 455
        ExplicitWidth = 371
        ExplicitHeight = 455
        DesignSize = (
          371
          455)
        inherited Label_VideoSize: TLabel
          Width = 96
          Height = 13
          ExplicitWidth = 96
          ExplicitHeight = 13
        end
        inherited Label_fps: TLabel
          Left = 200
          Top = 13
          Width = 89
          Height = 13
          ExplicitLeft = 200
          ExplicitTop = 13
          ExplicitWidth = 89
          ExplicitHeight = 13
        end
        inherited PaintBox_Video: TPaintBox
          Width = 371
          Height = 499
          ExplicitWidth = 374
          ExplicitHeight = 499
        end
      end
    end
  end
  object SaveScreenBut: TButton
    Left = 8
    Top = 43
    Width = 194
    Height = 39
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1074' '#1087#1072#1087#1082#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = SaveScreenButClick
  end
end
