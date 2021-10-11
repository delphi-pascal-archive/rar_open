object MainForm: TMainForm
  Left = 239
  Top = 123
  Width = 335
  Height = 312
  Caption = 'RarOpen v1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object StatusList: TListBox
    Left = 0
    Top = 30
    Width = 327
    Height = 191
    Style = lbOwnerDrawFixed
    Align = alClient
    BevelKind = bkSoft
    BorderStyle = bsNone
    ItemHeight = 13
    TabOrder = 0
    OnDrawItem = StatusListDrawItem
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 245
    Width = 327
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 50
      end>
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 327
    Height = 30
    AutoSize = True
    BorderWidth = 1
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    Images = ButtonImages
    TabOrder = 2
    object OpenBtn: TToolButton
      Left = 0
      Top = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' RAR '#1072#1088#1093#1080#1074
      ImageIndex = 0
      OnClick = OpenBtnClick
    end
    object SaveLogBtn: TToolButton
      Left = 23
      Top = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
      Enabled = False
      ImageIndex = 1
      OnClick = SaveLogBtnClick
    end
    object ToolButton5: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object StartCrackBtn: TToolButton
      Left = 54
      Top = 0
      Hint = #1053#1072#1095#1072#1090#1100' '#1087#1086#1080#1089#1082' '#1087#1072#1088#1086#1083#1103
      Enabled = False
      ImageIndex = 5
      OnClick = StartCrackBtnClick
    end
    object StopBtn: TToolButton
      Left = 77
      Top = 0
      Hint = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1086#1080#1089#1082' '#1087#1072#1088#1086#1083#1103
      Enabled = False
      ImageIndex = 6
      OnClick = StopBtnClick
    end
    object ToolButton1: TToolButton
      Left = 100
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object AboutBtn: TToolButton
      Left = 108
      Top = 0
      Hint = #1054' '#1055#1088#1086#1075#1088#1072#1084#1084#1077
      ImageIndex = 4
      OnClick = AboutBtnClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 221
    Width = 327
    Height = 24
    Align = alBottom
    AutoSize = True
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 3
    object ProgressBar1: TGauge
      Left = 1
      Top = 1
      Width = 325
      Height = 22
      Align = alBottom
      BorderStyle = bsNone
      Progress = 0
    end
  end
  object MainMenu: TMainMenu
    Images = ButtonImages
    Left = 8
    Top = 40
    object File1: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      object OpenRar1: TMenuItem
        Caption = '&'#1054#1090#1082#1088#1099#1090#1100' '#1072#1088#1093#1080#1074'...'
        ImageIndex = 0
        OnClick = OpenBtnClick
      end
      object SaveResult1: TMenuItem
        Caption = #1057#1086#1093#1088'&'#1072#1085#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
        Enabled = False
        ImageIndex = 1
        OnClick = SaveLogBtnClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = #1042'&'#1099#1093#1086#1076
        ImageIndex = 3
        OnClick = Exit1Click
      end
    end
    object Atack1: TMenuItem
      Caption = #1040#1088#1093#1080#1074
      object Start: TMenuItem
        Caption = #1053'&'#1072#1095#1072#1090#1100' '#1087#1086#1080#1089#1082' '#1087#1072#1088#1086#1083#1103
        Enabled = False
        ImageIndex = 5
        OnClick = StartCrackBtnClick
      end
      object Stop1: TMenuItem
        Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090'&'#1100' '#1087#1086#1080#1089#1082' '#1087#1072#1088#1086#1083#1103
        Enabled = False
        ImageIndex = 6
        OnClick = StopBtnClick
      end
    end
    object N3: TMenuItem
      Caption = '&?'
      object About1: TMenuItem
        Caption = #1054' '#1055#1088#1086#1075#1088#1072#1084#1084#1077
        ImageIndex = 4
        OnClick = AboutBtnClick
      end
    end
  end
  object ButtonImages: TImageList
    Left = 72
    Top = 40
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000694731006947310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000069473100F2ECE900F2ECE90069473100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000069473100F2ECE9009830000098300000F2ECE900694731000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000069473100F2ECE90098300000F6865000F57C430098300000F2ECE9006947
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006947
      3100F2ECE90098300000C4937500C4937500C4937500C493750098300000F2EC
      E900694731000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000FF0000008000000000000000000000000000000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000069473100F2EE
      EA0098300000F79B6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA6644009830
      0000F2ECE9006947310000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000FF000000FF00000080000000000000008000000080000000
      FF000000FF000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000069473100F2ECE9009830
      0000F9B18700F9AC8100F79B6C00FFFFFF00FFFFFF00AA664400F6865000F57C
      430098300000F2ECE90069473100000000000000000000000000000000000000
      0000000000000080000000FF0000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008000000080000000FF000000FF0000008000000080000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000098300000F9F6F400C8600000FBC3
      9F00FABA9300F9B18700F9AC8100FFFFFF00FFFFFF00AA664400F68D5900F686
      5000F57C430098300000F2ECE900694731000000000000000000000000000000
      0000000000000080000000FF000000FF00000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008000000080000000FF000000FF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000098300000FEFEFE00C8600000FBC3
      9F00FBC39F00FABA9300F9B18700FFFFFF00FFFFFF00AA664400F7926000F68D
      5900F686500098300000F2ECE900694731000000000000000000000000000000
      0000000000000080000000FF000000FF000000FF000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000080000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000098300000FDFAF800C860
      0000FBC39F00FBC39F00FFFFFF00FFFFFF00FFFFFF00AA664400F79B6C00F792
      600098300000F2ECE90069473100000000000000000000000000000000000000
      0000000000000080000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008000000080000000FF000000FF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000098300000FEFE
      FE00C8600000FBC39F00FBC39F00C4937500C4937500F9AC8100F79B6C009830
      0000F2ECE9006947310000000000000000000000000000000000000000000000
      0000000000000080000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008000000080000000FF000000FF0000008000000080000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009830
      0000FFFFFF00C8600000FBC39F00FFFFFF00FFFFFF00AA66440098300000F2EC
      E900694731000000000000000000000000000000000000000000000000000000
      0000000000000080000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000FF000000FF00000080000000000000008000000080000000
      FF000000FF000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000098300000FEFEFE00C8600000FFFFFF00FFFFFF0098300000F2ECE9006947
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000FF0000008000000000000000000000000000000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098300000FDFAF800C8600000C8600000F2EDEA00694731000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000FEFEFE00F9F6F40069473100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000983000009830000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D422F006D42
      2F006D422F006D422F006D422F006D422F006D422F006D422F006D422F006D42
      2F006D422F006D422F006D422F006D422F000000000000000000000000000000
      0000000000000000000000000000E0A98B009144130091441300914413009144
      1300914413009144130091441300914413000000000000000000000000000000
      0000000000009A605D0068303000683030006830300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE726F00D1979200CB8E
      8A00715A4800C0B2AB00C4BCB800CAC1BC00CAC1BC00CAC1BC00CAC1BC008C76
      67009443400094434000944340006D422F000000000000000000000000000000
      0000000000000000000000000000E0A98B00F7E6DA00F5E0D100F3DAC800F1D3
      BE00EFCDB500EDC7AC00EDC7AC00914413000000000000000000906060006830
      300068303000A3565100A95B5500A45B54006830300068303000683030006830
      3000683030006830300068303000683030008592990000609000006090000060
      9000006090000060900000609000006090000060900000609000006090000060
      90000000000000000000000000000000000000000000CE726F00D79F9B00D197
      9200715A48002E1F18005F504600FFFFFF00FFFFFF00FFFFFF00F0E4DE008C76
      67009747440094434000944340006D422F000000000000000000000000000000
      0000000000000000000000000000E0A98B00F9EDE500F7E6DA00F5E0D100F3DA
      C800F2D6C300F0D0BA00EECAB000914413000000000090606000A2545000BB65
      5F00BA645E00B6625D00B2605A00A65C550068303000F0919000F0919000F091
      9000F0919000F0919000F091900068303000859299008592990026A1D1000691
      CD000691CD000691CD000691CD000691CD000691CD000691CD000691CD000060
      90000000000000000000000000000000000000000000CE726F00DDA8A300D79F
      9B00715A48000000000036241B00FFFFFF00F7F1EE00F0E4DE00E1CABD008C76
      67009E504D0097474400944340006D422F000000000000000000000000000000
      0000000000000000000000000000E0A98B00FCF5F000D3835700D3835700D383
      5700D3835700D3835700F0D0BA00914413000000000090606000C5696500C368
      6300BF666100BB645F00B7625D00A85D560068303000004B0000004B0000004B
      0000004E0100285C1700F091900068303000859299008592990078BFD10061DA
      F7005AD5F50054D1F3004CCBF00044C7EE003DC2ED0037BEEB0030B9E9000691
      CD000060900000000000000000000000000000000000CE726F00E3B0AB00DDA8
      A300715A4800715A4800715A4800715A4800715A4800715A4800715A4800715A
      4800A45956009E504D00974744006D422F000000000000000000000000000000
      0000000000000000000000000000E0A98B00FFFFFF00FDF8F500FAF1EA00F8EA
      DF00F6E3D500F4DDCC00F2D6C300914413000000000090606000C96B6700C76A
      6600C1686300B4615C00B05E5900A95D56006830300000510200004B0000004B
      000005650D002C6C2100F0919000683030008592990064DBF800859299006ED4
      ED0063DAF7005DD7F60055D1F3004DCDF10046C8EF003FC4ED0037BFEB0029B5
      E7000060900000000000000000000000000000000000CE726F00EDBDB800E7B5
      B000E0ACA700DAA49F00D49B9700CB8E8A00C5868200BF7E7900B9757100B26B
      6800AB625F00A45956009E504D006D422F00CEB8AA007A5A46007A5A46007A5A
      46007A5A46007A5A46007A5A4600E0A98B00FFFFFF00D3835700D3835700D383
      5700D3835700D3835700F4DDCC00914413000000000090606000CC6D6900CB6C
      6800C4706D00DFB4B2009C5F5C00A059530068303000025A060000510200045F
      0A000C801E002F772800F091900068303000859299007CE8F8008592990074C2
      D50067DDF90065DCF8005DD6F60055D1F3004ECDF10046C8EF003FC4ED0037BF
      EB000691CD0000609000000000000000000000000000CE726F00F0C1BC00EDBD
      B800E7B5B000E0ACA700DAA49F00D49B9700CE938E00C88A8600C2827E00BC79
      7500B26B6800AB625F00A45956006D422F00CEB8AA00EFE7E300EBE1DC00E7DB
      D500E3D5CD00DFCFC600DBC9BF00E0A98B00FFFFFF00FFFFFF00FFFFFF00FDF8
      F500FAF1EA00F8EADF00F6E3D500914413000000000090606000D06F6B00CE6D
      6A00DFB4B200FDF1F100DFB4B200A35A54006830300004640C00125B07002871
      1400118B260034722400F0919000683030008592990086EEF80064DBF8008592
      99006FD4ED0067DDF90064DBF8005DD6F60055D1F3004DCDF10046C8EF003FC4
      ED0030B6E50000609000000000000000000000000000CE726F00F0C1BC00F0C1
      BC00C8635C00C8635C00C8635C00C8635C00C8635C00C8635C00C8635C00C863
      5C00C8635C00B5706C00AE6763006D422F00CEB8AA00F4EEEB00EFE7E300EBE1
      DC00E7DBD500E5D8D100E1D2CA00E0A98B00FFFFFF00D3835700D3835700FFFF
      FF00E0A98B00AB542800AB542800AB5428000000000090606000D5726E00D370
      6C00D0736E00DFB4B200C5716D00AF615B006830300011690F008C812400D3A4
      410035741600D3A44100F0919000683030008592990090F4F80086EEF8008592
      990073C4D80067DCF80067DDF90065DCF8005ED7F60056D2F4004ECDF10047C9
      EF003AC1EB000691CD00006090000000000000000000CE726F00F0C1BC00C863
      5C00FAF5F300F6EEEA00F2E7E200EEE2DA00EBDCD300E7D6CB00E4D0C400E1CA
      BD00E1CABD00C8635C00B5706C006D422F00CEB8AA00F9F5F300DFA98300DFA9
      8300DFA98300DFA98300DFA98300E0A98B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E0A98B00F3EBE600AB542800000000000000000090606000DA747100D773
      6F00D3716C00D06F6B00CC6D6900B3635D006830300070802900F8C08000F8C0
      8000F8C08000F8C08000F0919000683030008592990094F5F80090F4F80064DB
      F800859299008592990085929900859299008592990085929900859299008592
      99008592990085929900859299000000000000000000CE726F00F0C1BC00C863
      5C00FFFFFF00FCF8F700F8F1EE00F4EAE600F0E4DE00ECDFD600E9D9CF00E6D3
      C800E2CDC000C8635C00BC7975006D422F00CEB8AA00FFFFFF00FBF8F700F6F1
      EF00F1EAE700EDE4DF00E9DED800E0A98B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E8A98B00C56A310000000000000000000000000090606000DD767400DB75
      7200D8736F00D4716D00D06F6B00B4645D0068303000F8C08000F8C08000F8C0
      8000F8C08000F8C08000F0919000683030008592990094F5F80094F5F80090F4
      F80064DBF80064DBF80064DBF80064DBF80064DBF80064DBF80064DBF80064DB
      F8008592990000000000000000000000000000000000CE726F00F0C1BC00C863
      5C00FFFFFF00FFFFFF00FCF8F700F8F1EE00F4EAE600F0E4DE00ECDFD600E9D9
      CF00E6D3C800C8635C00C2827E006D422F00CEB8AA00FFFFFF00DFA98300DFA9
      8300DFA98300DFA98300DFA98300E0A98B00E0A98B00E0A98B00E0A98B00E0A9
      8B00E0A98B000000000000000000000000000000000090606000E3787600DF76
      7400DC757200D8736F00D4716D00B7655E0068303000F8C08000F8C08000F8C0
      8000B1B1A20029A5F800F0919000683030008592990094F5F80094F5F80094F5
      F80090F4F80064DBF80085929900859299008592990085929900859299008592
      99009830000098300000983000009830000000000000CE726F00F0C1BC00C863
      5C00FFFFFF00FFFFFF00FFFFFF00FCF8F700F8F1EE00F4EAE600F0E4DE00ECDF
      D600E9D9CF00C8635C00C88A86006D422F00CEB8AA00FFFFFF00FFFFFF00FFFF
      FF00FBF8F700F6F1EF00F1EAE700EDE4DF006947310000000000000000000000
      0000000000000000000000000000000000000000000090606000E67A7900E479
      7700E0777500DD767300D9747100B966600068303000F8C08000F8C08000B1B1
      A20022B8F70029A5F800F0919000683030008592990094F5F80094F5F80094F5
      F80094F5F8008592990000000000000000000000000000000000000000000000
      00000000000098300000E4A582009830000000000000CE726F00F0C1BC00C863
      5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF8F700F8F1EE00F4EAE600F0E4
      DE00ECDFD600C8635C00D19792006D422F00CEB8AA00FFFFFF00DFA98300DFA9
      8300FFFFFF00CEB8AA0069473100694731006947310000000000000000000000
      0000000000000000000000000000000000000000000090606000E0787600E479
      7800E4797700E0777500DD757300BB67610068303000F8C08000B1B1A2001CC4
      F8001CC4F80022B8F700F0919000683030000000000085929900859299008592
      9900859299000000000000000000000000000000000000000000000000000000
      000000000000BE713C00983000009830000000000000CE726F00F0C1BC00C863
      5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF8F700F8F1EE00F4EA
      E600F0E4DE00C8635C00000000006D422F00CEB8AA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEB8AA00F3EBE600694731000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B07068009060
      6000C76D6A00C76D6A00D4727000B96661006830300090606000906060009060
      6000906060009060600090606000906060000000000000000000000000000000
      0000000000000000000000000000000000000000000098300000BE713C000000
      0000BE713C0098300000000000009830000000000000CE726F00F0C1BC00C863
      5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF8F700F8F1
      EE00F4EAE600C8635C00C88A86006D422F00CEB8AA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEB8AA0069473100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B070680090606000C76D6A00C76D6A006830300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000983000009830
      00009830000000000000000000000000000000000000CE726F00CE726F00CE72
      6F00CE726F00CE726F00CE726F00CE726F00CE726F00CE726F00CE726F00CE72
      6F00CE726F00CE726F00CE726F00CE726F00CEB8AA00CEB8AA00CEB8AA00CEB8
      AA00CEB8AA00CEB8AA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0706800906060009060600000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FFFFFFFFF0000FC3FF7FFFFFF0000
      F81FF3FFFFFF0000F00FF1FFFBEF0000E007F0FFF1C70000C003F07FE0830000
      8001F03FF00700000000F01FF80F00000000F00FFC1F00008001F01FF80F0000
      C003F03FF0070000E007F07FE0830000F00FF0FFF1C70000F81FF1FFFBEF0000
      FC3FF3FFFFFF0000FE7FF7FFFFFF0000FFFFC000FE00F87FFFFF8000FE00C000
      000F8000FE008000000F8000FE00800000078000FE0080000007800000008000
      0003800000008000000380000000800000018000000180000001800000038000
      000780000007800000008000007F800003F88000007F800087F8800000FFC000
      FF92800001FFF07FFFC7800003FFFC7F00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.rar'
    Filter = 'RAR '#1040#1088#1093#1080#1074'|*.rar'
    Left = 104
    Top = 40
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.txt'
    Left = 40
    Top = 40
  end
  object XPManifest1: TXPManifest
    Left = 136
    Top = 40
  end
end