unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sEdit, sButton, Menus, ExtCtrls, acPNG,
  ToolWin, ComCtrls, sToolBar;

type
  TForm6 = class(TForm)
    sButton2: TsButton;
    sButton1: TsButton;
    sButton5: TsButton;
    Timer1: TTimer;
    Button2: TButton;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button1: TButton;
    Button6: TButton;
    MainMenu1: TMainMenu;
    B1: TMenuItem;
    N3: TMenuItem;
    i1: TMenuItem;
    Button3: TButton;
    B2: TMenuItem;
    E1: TMenuItem;
    I2: TMenuItem;
    C1: TMenuItem;
    F1: TMenuItem;
    p1: TMenuItem;
    F2: TMenuItem;
    S1: TMenuItem;
    N1: TMenuItem;
    q1: TMenuItem;
    a1: TMenuItem;
    R1: TMenuItem;
    M1: TMenuItem;
    A2: TMenuItem;
    R2: TMenuItem;
    M2: TMenuItem;
    A3: TMenuItem;
    R3: TMenuItem;
    M3: TMenuItem;
    M4: TMenuItem;
    m5: TMenuItem;
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure M4Click(Sender: TObject);
    procedure R4Click(Sender: TObject);
    procedure M5Click(Sender: TObject);
    procedure R5Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure q1Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure M3Click(Sender: TObject);
    procedure i1Click(Sender: TObject);
    procedure I2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure a1Click(Sender: TObject);
    procedure A3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit3, Unit2, Unit4, Unit7, Unit5, Unit8, Unit9, Unit10,
  Unit11;

{$R *.dfm}

procedure TForm6.sButton2Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment quittes',mtconfirmation,[mbyes,mbno],0)= mryes then
Application.Terminate;

end;

procedure TForm6.sButton3Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm6.sButton4Click(Sender: TObject);
begin
Form3.show;

end;

procedure TForm6.sButton5Click(Sender: TObject);
begin
AboutBox.show;
end;

procedure TForm6.sButton1Click(Sender: TObject);
begin
Form7.show;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
Label3.Caption:=FormatDateTime('dd/mm/yyyy        H:mm:ss',Now)
end;


procedure TForm6.Button4Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form10.show;
end;

procedure TForm6.M1Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm6.R1Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm6.R2Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm6.M2Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm6.N3Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm6.E1Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm6.E3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm6.M4Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm6.R4Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm6.M5Click(Sender: TObject);
begin
Form11.show;
end;

procedure TForm6.R5Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm6.About1Click(Sender: TObject);
begin
AboutBox.show;
end;


procedure TForm6.q1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm6.A2Click(Sender: TObject);
begin
 Form5.show;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
Form9.show;
end;

procedure TForm6.R3Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm6.M3Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm6.i1Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm6.I2Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm6.C1Click(Sender: TObject);
begin
Form7.show;
end;

procedure TForm6.a1Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm6.A3Click(Sender: TObject);
begin
Form9.Show;
end;

end.
