object Form_Main: TForm_Main
  Left = 392
  Top = 223
  Caption = 'VSampleDemo 3.0   [www.grizzlymotion.com]'
  ClientHeight = 562
  ClientWidth = 764
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
    Height = 562
    OnMoved = Splitter1Moved
    ExplicitHeight = 544
  end
  object Panel_Left: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 562
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 542
    inline Frame_Video1: TFrame1
      Left = 1
      Top = 1
      Width = 375
      Height = 560
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 375
      ExplicitHeight = 540
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
        Height = 456
        ExplicitWidth = 375
        ExplicitHeight = 435
        DesignSize = (
          375
          456)
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
          Width = 367
          Height = 500
          ExplicitWidth = 367
          ExplicitHeight = 499
        end
      end
    end
  end
  object Panel_Right: TPanel
    Left = 384
    Top = 0
    Width = 380
    Height = 562
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 542
    inline Frame_Video2: TFrame1
      Left = 1
      Top = 1
      Width = 378
      Height = 560
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 378
      ExplicitHeight = 540
      inherited Panel_Top: TPanel
        Width = 378
        ExplicitWidth = 374
        DesignSize = (
          378
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
          Width = 253
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
        Width = 378
        Height = 456
        ExplicitWidth = 374
        ExplicitHeight = 435
        DesignSize = (
          378
          456)
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
          Width = 378
          Height = 500
          ExplicitWidth = 374
          ExplicitHeight = 499
        end
      end
    end
  end
end