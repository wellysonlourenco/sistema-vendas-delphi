unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, ShellApi;

type
  TViewPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentaes1: TMenuItem;
    Financeiro1: TMenuItem;
    Fiscal1: TMenuItem;
    Empresas1: TMenuItem;
    Cidades1: TMenuItem;
    Pessoas1: TMenuItem;
    N1: TMenuItem;
    Subgruposdeprodutos1: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    Contasareceber1: TMenuItem;
    Configuraes1: TMenuItem;
    NFCe1: TMenuItem;
    pnLogoBack: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Label1: TLabel;
    procedure lbGithubClickClick(Sender: TObject);
    procedure lbGithubClickMouseEnter(Sender: TObject);
    procedure lbGithubClickMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.lbGithubClickClick(Sender: TObject);
begin
  ShellExecute(0, nil, PChar(TLabel(Sender).Caption), '', '', Sw_ShowNormal);
end;

procedure TViewPrincipal.lbGithubClickMouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clRed;
end;

procedure TViewPrincipal.lbGithubClickMouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clWindowText;
end;

end.
