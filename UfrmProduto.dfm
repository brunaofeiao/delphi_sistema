object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 40
    Top = 56
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
      object Editar1: TMenuItem
        Caption = 'Editar'
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
