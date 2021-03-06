unit View.Cadastro.Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Cadastro.Base, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmCadastroPaciente = class(TFrmCadastroBase)
    Label2: TLabel;
    EdtNome: TEdit;
    Label4: TLabel;
    EdtTelefone: TEdit;
    Label5: TLabel;
    CmbSexo: TComboBox;
    Label6: TLabel;
    DtpData: TDateTimePicker;
    Label7: TLabel;
    EdtAltura: TEdit;
    Label8: TLabel;
    EdtPeso: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    EdtEndereco: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    PnlSintomas: TPanel;
    PnlScrollSintomas: TPanel;
    Label13: TLabel;
    EdtEmail: TEdit;
    Label14: TLabel;
    EdtSenha: TEdit;
    EdtCPF: TEdit;
    Label15: TLabel;
    CmbEstado: TComboBox;
    CmbCidade: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
