unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TfrmPrincipal = class(TForm)
    edtBancoDeDados: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnTestar: TButton;
    edtServidor: TEdit;
    Label4: TLabel;
    conexao: TADOConnection;
    procedure btnTestarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnTestarClick(Sender: TObject);
const
  stringConexao = 'Provider=SQLOLEDB.1;Password=%s;Persist Security Info=True;User ID=%s;Initial Catalog=%s;Data Source=%s';
var
  servidor: String;
begin

  if LowerCase(edtServidor.Text) = 'localhost' then
    servidor := '.'
  else
    servidor := edtServidor.Text;

  conexao.ConnectionString := format(stringConexao,
                                [
                                  edtSenha.Text,
                                  edtUsuario.Text,
                                  edtBancoDeDados.Text,
                                  servidor
                                ]);

  try
    conexao.Connected := True;
    Application.MessageBox('Conexão efetuada com sucesso!', 'Teste de conexão', MB_OK + MB_ICONINFORMATION);
    conexao.Connected := False;
  except
    on e: Exception do
      Application.MessageBox(PChar('Falha na conexão!' + #10 + #13 + e.Message), 'Teste de conexão', MB_OK + MB_ICONERROR);
  end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  edtSenha.SetFocus;
end;

end.
