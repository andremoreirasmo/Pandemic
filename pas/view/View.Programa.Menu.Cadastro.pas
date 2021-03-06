unit View.Programa.Menu.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFrmCadastro = class(TForm)
    PnlPrograma: TPanel;
    PnlPacientes: TPanel;
    Titulo: TLabel;
    Image1: TImage;
    PnlOrientašoes: TPanel;
    Label1: TLabel;
    Image2: TImage;
    PnlUsuarios: TPanel;
    Label2: TLabel;
    Image3: TImage;
    PnlSintomas: TPanel;
    Label3: TLabel;
    Image4: TImage;
    BtnPacientes: TSpeedButton;
    btnOrientacoes: TSpeedButton;
    BtnUsuarios: TSpeedButton;
    BtnSintomas: TSpeedButton;
    PnlPrimeiraFileira: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
