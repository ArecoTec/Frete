unit Frete.Reg;

interface

uses
  // Spring
  Spring.Container,
  // Frete
  Frete.Intf, Frete.Impl, Frete.View.Impl;

procedure RegistrarTipos;

implementation

procedure RegistrarTipos;
begin
  GlobalContainer.RegisterType<TCalculoFrete>
    .Implements<ICalculadoraFrete>('Frete')
    .AsSingleton;

  GlobalContainer.RegisterType<TFreteview>
    .InjectMethod('SetCalculadoraFrete');

  GlobalContainer.Build;
end;

end.
