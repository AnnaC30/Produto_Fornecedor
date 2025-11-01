unit ProdutoFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFornecedor = class
  private
    FNome: string;
    FCNPJ: string;
    FEmail: string;
  public
    property Nome: string read FNome write FNome;
    property CNPJ: string read FCNPJ write FCNPJ;
    property Email: string read FEmail write FEmail;
  end;

  TProduto = class
  private
    FDescricao: string;
    FPreco: Double;
    FFornecedor: TFornecedor;
  public
    property Descricao: string read FDescricao write FDescricao;
    property Preco: Double read FPreco write FPreco;
    property Fornecedor: TFornecedor read FFornecedor write FFornecedor;
  end;

  TForm1 = class(TForm)
    grpProduto: TGroupBox;
    lblDescricao: TLabel;
    edtDescricao: TEdit;
    lblPreco: TLabel;
    edtPreco: TEdit;
    grpFornecedor: TGroupBox;
    lblNome: TLabel;
    edtNomeFornecedor: TEdit;
    lblCNPJ: TLabel;
    edtCNPJ: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    btnArmazenar: TButton;
    btnExibir: TButton;
    procedure btnArmazenarClick(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
  private
    Produto: TProduto;
    Fornecedor: TFornecedor;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnArmazenarClick(Sender: TObject);
begin
  Fornecedor := TFornecedor.Create;
  Produto := TProduto.Create;

  Fornecedor.Nome := edtNomeFornecedor.Text;
  Fornecedor.CNPJ := edtCNPJ.Text;
  Fornecedor.Email := edtEmail.Text;

  Produto.Descricao := edtDescricao.Text;
  Produto.Preco := StrToFloatDef(edtPreco.Text, 0);
  Produto.Fornecedor := Fornecedor;

  ShowMessage('Dados armazenados com sucesso!');
end;

procedure TForm1.btnExibirClick(Sender: TObject);
var
  Mensagem: string;
begin
  if (Produto = nil) or (Fornecedor = nil) then
  begin
    ShowMessage('Nenhum dado armazenado ainda!');
    Exit;
  end;

  Mensagem := '--- Produto ---' + sLineBreak +
              'Descrição: ' + Produto.Descricao + sLineBreak +
              'Preço: R$ ' + FloatToStr(Produto.Preco) + sLineBreak + sLineBreak +
              '--- Fornecedor ---' + sLineBreak +
              'Nome: ' + Produto.Fornecedor.Nome + sLineBreak +
              'CNPJ: ' + Produto.Fornecedor.CNPJ + sLineBreak +
              'Email: ' + Produto.Fornecedor.Email;

  ShowMessage(Mensagem);
end;

end.

