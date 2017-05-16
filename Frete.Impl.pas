unit Frete.Impl;

interface

uses
  Frete.Intf;

type
  TCalculoFrete = class(TInterfacedObject, ICalculadoraFrete)
  private
    FPeso: Real;
    FValorFrete: Real;
  public
    function SetPeso(const Peso: Real): ICalculadoraFrete;
    function GetValorFrete: Real;
  end;

implementation

{ TCalculoFrete }

function TCalculoFrete.GetValorFrete: Real;
begin
  if (Self.FPeso <= 150) then begin
    Self.FValorFrete := 30;
  end else if (Self.FPeso <= 300) then begin
    Self.FValorFrete := 50;
  end else begin
    Self.FValorFrete := Self.FPeso * 0.15;
  end;
  Result := Self.FValorFrete;
end;

function TCalculoFrete.SetPeso(const Peso: Real): ICalculadoraFrete;
begin
  Result := Self;
  Self.FPeso := Peso;
end;

end.
