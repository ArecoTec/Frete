unit Frete.Intf;

interface

type
  ICalculadoraFrete = interface
  ['{F02CD303-7CA2-4750-A8E6-0701109CA3C9}']
    function SetPeso(const Peso: Real): ICalculadoraFrete;
    function GetValorFrete: Real;
  end;

implementation

end.
