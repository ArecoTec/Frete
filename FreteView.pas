unit FreteView;

interface

uses
  // VCL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Frete
  Frete.Intf;

type
  TFreteView = class(TForm)
    btnCalcularFrete: TButton;
    edtPesoCarga: TEdit;
    edtValorFrete: TEdit;
    lblPesoCarg: TLabel;
    lblValorFrete: TLabel;
    procedure btnCalcularFreteClick(Sender: TObject);
  strict private
    FFrete: ICalculadoraFrete;
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetCalculadoraFrete(const Frete: ICalculadoraFrete);
  end;

implementation

{$R *.dfm}

procedure TFreteView.btnCalcularFreteClick(Sender: TObject);
begin
  Self.edtValorFrete.Text := FormatFloat('0.00', Self.FFrete
    .SetPeso(StrToFloat(Self.edtPesoCarga.Text))
    .GetValorFrete
  );
end;

constructor TFreteView.Create(AOwner: TComponent);
begin
  inherited Create(Application);
end;

procedure TFreteView.SetCalculadoraFrete(const Frete: ICalculadoraFrete);
begin
  Self.FFrete := Frete;
end;

end.
