program C4DVendas;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {ViewPrincipal},
  Model.Conexao.DM in 'Model\Conexao\Model.Conexao.DM.pas' {ModelConexaoDM: TDataModule},
  Model.Cidades.DM in 'Model\Cidades\Model.Cidades.DM.pas' {ModelCidadesDM: TDataModule},
  View.Herancas.Buscar in 'View\Herancas\View.Herancas.Buscar.pas' {ViewHerancasBuscar},
  View.Cidades.Buscar in 'View\Cidades\View.Cidades.Buscar.pas' {ViewCidadesBuscar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TModelConexaoDM, ModelConexaoDM);
  Application.CreateForm(TModelCidadesDM, ModelCidadesDM);
  Application.CreateForm(TViewHerancasBuscar, ViewHerancasBuscar);
  Application.CreateForm(TViewCidadesBuscar, ViewCidadesBuscar);
  Application.Run;
end.
