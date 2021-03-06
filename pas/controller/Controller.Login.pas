unit Controller.Login;

interface

uses
  Vcl.Forms,
  View.Login,
  Classes,
  Vcl.Dialogs,
  Windows;

type
  IControllerLogin = interface
    function Autenticar: Boolean;
  end;

  TControllerLogin = class(TInterfacedObject, IControllerLogin)
  private
    oFrmLogin: TFrmLogin;

    procedure CloseClick(Sender: TObject);
    procedure LoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    function Ref: IControllerLogin;
    function Autenticar: Boolean;

    constructor Create;
  end;

implementation

uses
  System.SysUtils,
  Singleton.Usuario,
  Enum.Permissao.Usuario,
  DM.Principal,
  Data.DB;

{ TControllerLogin }

function TControllerLogin.Autenticar: Boolean;
begin
  oFrmLogin.ShowModal;
  Result := oSingletonUsuario.IdUsuario > 0;
end;

procedure TControllerLogin.CloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

constructor TControllerLogin.Create;
begin
  oFrmLogin := TFrmLogin.Create(nil);
  oFrmLogin.lblStatus.Visible := False;

  oFrmLogin.OnClose := FormClose;
  oFrmLogin.OnKeyDown := FormKeyDown;
  oFrmLogin.BtnFechar.OnClick := CloseClick;
  oFrmLogin.BtnCancelar.OnClick := CloseClick;
  oFrmLogin.BtnEntrar.OnClick := LoginClick;
  oFrmLogin.PnlImagem.OnMouseDown := oFrmLogin.TitleBarMouseDown;
  oFrmLogin.PnlPrincipal.OnMouseDown := oFrmLogin.TitleBarMouseDown;
end;

procedure TControllerLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TControllerLogin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    oFrmLogin.BtnEntrar.Click;
end;

procedure TControllerLogin.LoginClick(Sender: TObject);
begin
  if (oFrmLogin.EdtNomeUsuario.Text = EmptyStr) or (oFrmLogin.EdtSenha.Text = EmptyStr) then
  begin
    oFrmLogin.lblStatus.Caption := '*Preencha todos os campos.';
    oFrmLogin.lblStatus.Visible := True;
    Exit;
  end;

  DMPrincipal.FDQuery.SQL.Clear;

  try
    DMPrincipal.FDQuery.SQL.Text := 'SELECT id_usr,per_usr FROM users WHERE ema_usr = ' + QuotedStr(oFrmLogin.EdtNomeUsuario.Text) + 'AND pas_usr = ' + QuotedStr(oFrmLogin.EdtSenha.Text) + ';';
    DMPrincipal.FDQuery.Active := True;

    if (not(DMPrincipal.FDQuery.IsEmpty)) then
    begin
      oSingletonUsuario.IdUsuario := DMPrincipal.FDQuery.FieldByName('id_usr').AsInteger;
      oSingletonUsuario.PermissaoUsuario := TEnumPermissaoUsuario(DMPrincipal.FDQuery.FieldByName('per_usr').AsInteger);
      oFrmLogin.Close;
    end
    else
    begin
      oFrmLogin.lblStatus.Caption := '*Us�ario ou senha inv�lida.';
      oFrmLogin.lblStatus.Visible := True;
    end;
  finally
    DMPrincipal.FDQuery.Active := False;
  end;
end;

function TControllerLogin.Ref: IControllerLogin;
begin
  Result := Self;
end;

end.
