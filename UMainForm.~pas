unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UStack, UStackUtils;

type
  TMainForm = class(TForm)
    lbBolt1: TLabel;
    edBolt1: TEdit;
    lbBolt2: TLabel;
    edBolt2: TEdit;
    lbBolt3: TLabel;
    edBolt3: TEdit;
    btAct: TButton;
    btExit: TButton;
    btClear: TButton;
    procedure edBoltKeyPress(Sender: TObject; var Key: Char);
    procedure btActClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}


procedure TMainForm.edBoltKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9',' ', #127, #8]) then
    key:= #0;
end;

procedure TMainForm.btActClick(Sender: TObject);
var
  Bolt1Stack, Bolt2Stack, Bolt3Stack: TStack;
  num1, num2: integer;
begin
  if TryStrToStack(edBolt1.Text, Bolt1Stack) and
     TryStrToStack(edBolt2.Text, Bolt2Stack) then
    begin
      Init(Bolt3Stack);
      while not(IsEmpty(Bolt1Stack)) or not(IsEmpty(Bolt2Stack)) do
        begin
          if not IsEmpty(Bolt1Stack) then
            if IsEmpty(Bolt2Stack) then
              while not IsEmpty(Bolt1Stack) do
                Push(Bolt3Stack, Pop(Bolt1Stack))
            else if Seek(Bolt1Stack) < Seek(Bolt2Stack) then
              Push(Bolt3Stack, Pop(Bolt1Stack))
            else
              Push(Bolt3Stack, Pop(Bolt2Stack))
          else
            while not IsEmpty(Bolt2Stack) do
              Push(Bolt3Stack, Pop(Bolt2Stack))
        end;
      edBolt3.Text:= StackToStr(Bolt3Stack);
    end;
end;

procedure TMainForm.btClearClick(Sender: TObject);
begin
  edBolt1.Clear;
  edBolt2.Clear;
  edBolt3.Clear;
end;

procedure TMainForm.btExitClick(Sender: TObject);
begin
  Close;
end;

end.
