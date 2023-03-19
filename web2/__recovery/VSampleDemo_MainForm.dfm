object Form_Main: TForm_Main
  Left = 392
  Top = 223
  Caption = 'WebCumming'
  ClientHeight = 625
  ClientWidth = 839
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
    Width = 7
    Height = 625
    OnMoved = Splitter1Moved
    ExplicitHeight = 544
  end
  object Panel_Left: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 625
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 626
    inline Frame_Video1: TFrame1
      Left = 1
      Top = 1
      Width = 375
      Height = 623
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 375
      ExplicitHeight = 624
      inherited Panel_Top: TPanel
        Width = 375
        ExplicitWidth = 375
        DesignSize = (
          375
          104)
        inherited Label_Cameras: TLabel
          Width = 52
          Height = 13
          ExplicitWidth = 52
          ExplicitHeight = 13
        end
        inherited Label1: TLabel
          Width = 63
          Height = 13
          ExplicitWidth = 63
          ExplicitHeight = 13
        end
        inherited SpeedButton_RunVideo: TSpeedButton
          OnClick = Frame_Video1SpeedButton_RunVideoClick
        end
        inherited Label3: TLabel
          Width = 51
          Height = 13
          ExplicitWidth = 51
          ExplicitHeight = 13
        end
        inherited Label4: TLabel
          Width = 44
          Height = 13
          ExplicitWidth = 44
          ExplicitHeight = 13
        end
        inherited ComboBox_Cams: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
        inherited ComboBox_DisplayMode: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
        inherited ComboBox1: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
      end
      inherited Panel_Bottom: TPanel
        Width = 375
        Height = 519
        ExplicitWidth = 375
        ExplicitHeight = 519
        DesignSize = (
          375
          519)
        inherited Label_VideoSize: TLabel
          Width = 50
          Height = 13
          ExplicitWidth = 50
          ExplicitHeight = 13
        end
        inherited Label_fps: TLabel
          Width = 90
          Height = 13
          ExplicitWidth = 90
          ExplicitHeight = 13
        end
        inherited Label2: TLabel
          Width = 49
          Height = 13
          ExplicitWidth = 49
          ExplicitHeight = 13
        end
        inherited PaintBox_Video: TPaintBox
          Top = 31
          Width = 337
          Height = 331
          ExplicitTop = 31
          ExplicitWidth = 337
          ExplicitHeight = 332
        end
      end
    end
  end
  object Panel_Right: TPanel
    Left = 384
    Top = 0
    Width = 455
    Height = 625
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 459
    ExplicitHeight = 626
    inline Frame_Video2: TFrame1
      Left = 1
      Top = 1
      Width = 453
      Height = 623
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 457
      ExplicitHeight = 624
      inherited Panel_Top: TPanel
        Width = 453
        ExplicitWidth = 453
        DesignSize = (
          453
          104)
        inherited Label_Cameras: TLabel
          Width = 52
          Height = 13
          ExplicitWidth = 52
          ExplicitHeight = 13
        end
        inherited Label1: TLabel
          Width = 63
          Height = 13
          ExplicitWidth = 63
          ExplicitHeight = 13
        end
        inherited Label3: TLabel
          Width = 51
          Height = 13
          ExplicitWidth = 51
          ExplicitHeight = 13
        end
        inherited Label4: TLabel
          Width = 44
          Height = 13
          ExplicitWidth = 44
          ExplicitHeight = 13
        end
        inherited Bevel1: TBevel
          Width = 328
          ExplicitWidth = 332
        end
        inherited ComboBox_Cams: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
        inherited ComboBox_DisplayMode: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
        inherited ComboBox1: TComboBox
          Height = 21
          ExplicitHeight = 21
        end
      end
      inherited Panel_Bottom: TPanel
        Width = 453
        Height = 519
        ExplicitWidth = 453
        ExplicitHeight = 519
        DesignSize = (
          453
          519)
        inherited Label_VideoSize: TLabel
          Width = 50
          Height = 13
          ExplicitWidth = 50
          ExplicitHeight = 13
        end
        inherited Label_fps: TLabel
          Width = 90
          Height = 13
          ExplicitWidth = 90
          ExplicitHeight = 13
        end
        inherited Label2: TLabel
          Width = 49
          Height = 13
          ExplicitWidth = 49
          ExplicitHeight = 13
        end
        inherited PaintBox_Video: TPaintBox
          Top = 31
          Width = 336
          Height = 331
          ExplicitTop = 31
          ExplicitWidth = 340
          ExplicitHeight = 332
        end
      end
    end
  end
end
