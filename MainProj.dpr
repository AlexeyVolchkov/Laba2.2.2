program MainProj;

uses
  Forms,
  UMainForm in 'UMainForm.pas' {MainForm},
  UStack in 'UStack.pas',
  UStackUtils in 'UStackUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
