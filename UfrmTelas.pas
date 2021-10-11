unit UfrmTelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TMenu = class(TForm)
    MainMenu1: TMainMenu;
    arquivo1: TMenuItem;
    usuario1: TMenuItem;
    opcoes1: TMenuItem;
    salvar1: TMenuItem;
    editar1: TMenuItem;
    excluir1: TMenuItem;
    Panel1: TPanel;
    buttonVendas: TButton;
    buttonClientes: TButton;
    buttonEstoque: TButton;
    Adicionar1: TMenuItem;
    EditarUsuarios1: TMenuItem;
    Parametros1: TMenuItem;
    Customizacao1: TMenuItem;
    Financeiro: TButton;
    Cadastro1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Formasdepagamento1: TMenuItem;
    button_sair: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure buttonClientesClick(Sender: TObject);
    procedure buttonVendasClick(Sender: TObject);
    procedure FinanceiroClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure button_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menu: TMenu;

implementation

{$R *.dfm}

uses UfrmCadastro_produtos;

procedure TMenu.FinanceiroClick(Sender: TObject);
var vlr_dinheiro : integer;
var msg_dinheiro, msg_acabou: string;

begin
  vlr_dinheiro := 10;
  msg_acabou := 'Seu dinheiro acabou';
 for vlr_dinheiro := 10 downto 0 do

  begin
    msg_dinheiro := 'Voce ainda tem ' + Inttostr(vlr_dinheiro) + ' reais';
    if vlr_dinheiro >0 then
    begin
    showmessage (msg_dinheiro);
    end
    else
    begin

    end;
  end;
  showmessage(msg_acabou);

end;

procedure TMenu.Produtos1Click(Sender: TObject);
begin
  formcadastro_produtos := Tformcadastro_produtos.Create(Nil);
  try
    formcadastro_produtos.Show;
  finally

  end;
end;

procedure TMenu.buttonClientesClick(Sender: TObject);
var msg_aviso1, msg_aviso2 : String;
var num_clientes : Integer;
begin
     msg_aviso1 := 'Nao existem clientes cadastrados';
     msg_aviso2 := 'Existem clientes cadastrados';
     num_clientes :=10;
     if num_clientes <= 0 then
      begin
        showmessage(msg_aviso1);
      end
      else
      begin
        showmessage(msg_aviso2);
      end;

end;

procedure TMenu.buttonVendasClick(Sender: TObject);
var vlr_vendas, vlr_media : double;
var msg_mediaboa, msg_mediarui : string;
begin
  vlr_media := 500.00;
  vlr_vendas := 500;
  msg_mediaboa := 'As vendas foram boas';
  msg_mediarui := 'As vendas foram ruins';
  if vlr_vendas >= vlr_media then
    begin
      showmessage(msg_mediaboa);
    end
    else
    begin
      showmessage(msg_mediarui);
    end;
end;

procedure TMenu.button_sairClick(Sender: TObject);
begin
  close;
end;

end.
