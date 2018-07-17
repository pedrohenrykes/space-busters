unit uSobre;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments01: TLabel;
    OKButton: TButton;
    Comments02: TLabel;
    Memo1: TMemo;
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrmSobre.FormCreate(Sender: TObject);
begin
  frmPrincipal.Enabled := false;
end;

procedure TfrmSobre.FormDestroy(Sender: TObject);
begin
  frmPrincipal.Enabled := true;
  frmPrincipal.SetFocus;
end;

procedure TfrmSobre.OKButtonClick(Sender: TObject);
begin
  Self.Destroy;
end;

end.
 
