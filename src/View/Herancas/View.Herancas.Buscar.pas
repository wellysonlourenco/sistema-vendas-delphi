unit View.Herancas.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TViewHerancasBuscar = class(TForm)
    pnTopo: TPanel;
    pnRodape: TPanel;
    Label1: TLabel;
    edtBuscar: TEdit;
    rdGroupFiltros: TRadioGroup;
    btnCadastrar: TBitBtn;
    btnUtilizar: TBitBtn;
    btnFechar: TBitBtn;
    pnGrid: TPanel;
    DBGrid1: TDBGrid;
    pnTotal: TPanel;
    lbTotal: TLabel;
    DataSource1: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnUtilizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscarChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rdGroupFiltrosClick(Sender: TObject);
  private

  protected
    procedure BuscarDados; virtual;
    
  public
    { Public declarations }
  end;

var
  ViewHerancasBuscar: TViewHerancasBuscar;

implementation

{$R *.dfm}

//  modal result
//  mrNone     = 0;
//  mrOk       = 1;
//  mrCancel   = 2;
//  mrAbort    = 3;
//  mrRetry    = 4;
//  mrIgnore   = 5;
//  mrYes      = 6;
//  mrNo       = 7;

procedure TViewHerancasBuscar.btnFecharClick(Sender: TObject);
begin
  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TViewHerancasBuscar.btnUtilizarClick(Sender: TObject);
begin

  if (DataSource1.DataSet.IsEmpty) then
    raise Exception.Create('Selecione um registro');

  Self.Close;
  Self.ModalResult := mrOK;
end;

procedure TViewHerancasBuscar.edtBuscarChange(Sender: TObject);
begin
  Self.BuscarDados;
end;


procedure TViewHerancasBuscar.BuscarDados;
begin
  lbTotal.Caption :=  'Registros localizados: 000000';

  if(DataSource1.DataSet.IsEmpty) then
    Exit ;

  lbTotal.Caption :=  'Registros localizados:' + FormatFloat('000000', DataSource1.DataSet.RecordCount); 
end;

procedure TViewHerancasBuscar.DBGrid1DblClick(Sender: TObject);
begin
  btnUtilizar.Click;
end;

procedure TViewHerancasBuscar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 // retorna a linha que está no momento. Odd=> Se o numero for impar
  if(not Odd(DataSource1.DataSet.RecNo)) then
    DBGrid1.Canvas.Brush.Color := $00DDDDDD;    

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State );
end;

procedure TViewHerancasBuscar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then //enter
    btnUtilizar.Click;
end;

procedure TViewHerancasBuscar.edtBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case (Key) of
    VK_UP: DataSource1.DataSet.Prior;
    VK_DOWN: DataSource1.DataSet.Next;
  end;
end;

procedure TViewHerancasBuscar.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (not DataSource1.DataSet.IsEmpty) then
    btnUtilizar.Click;               
end;

procedure TViewHerancasBuscar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case (Key) of
    VK_F4:  //alt + f4
    begin
      if(ssAlt in Shift) then
        Key := 0;
    end;

    VK_ESCAPE: btnFechar.Click;  // ESC

  end;
end;

procedure TViewHerancasBuscar.FormShow(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  edtBuscar.SetFocus;
end;

procedure TViewHerancasBuscar.rdGroupFiltrosClick(Sender: TObject);
begin
    edtBuscar.SetFocus;
end;

end.
