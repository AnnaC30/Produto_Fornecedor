program Atividade_Fornecedor;

uses
  Vcl.Forms,
  ProdutoFornecedor in 'ProdutoFornecedor.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
