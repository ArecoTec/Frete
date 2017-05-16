program FreteApp;

uses
  FastMM4,
  Spring.Container,
  Spring.Services,
  Vcl.Forms,
  Frete.Impl in 'Frete.Impl.pas',
  Frete.Intf in 'Frete.Intf.pas',
  Frete.Reg in 'Frete.Reg.pas',
  Frete.View.Impl in 'Frete.View.Impl.pas' {FreteView};

{$R *.res}

var
  lFreteView: TFreteView;
begin
  // Registra Interfaces e tipos para o Spring
  RegistrarTipos;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
  // Spring
  lFreteView := ServiceLocator.GetService<TFreteView>;
  lFreteView.ShowModal;
end.
