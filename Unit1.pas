unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, sButton, sLabel, sEdit, sSkinManager, DB,
  DBTables, Mask, DBCtrls;

type
  TForm1 = class(TForm)
    sEdit1: TsEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sButton1: TsButton;
    sEdit2: TsEdit;
    sSkinManager1: TsSkinManager;
    sButton2: TsButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1mp: TIntegerField;
    Table1uname: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure Client1Click(Sender: TObject);
    procedure Fournisseure1Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm1.Apropos1Click(Sender: TObject);
begin
AboutBox.show;
end;

procedure TForm1.Client1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.Fournisseure1Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm1.sButton1Click(Sender: TObject);
begin

 if (sEdit2.Text =table1.fieldbyname('mp').asstring) and (sEdit1.Text=table1.fieldbyname('uname').asstring)  then
 begin
Form1.Hide;
Form6.show;
end
  else
begin
MessageDlg('Votre mot de passe ou le nom d utilisateur est incorrecte!',mtError,[mbOK],0);
sEdit1.clear;
sEdit1.setfocus;
sEdit2.clear;
sEdit2.setfocus;

end;



end;



procedure TForm1.sButton2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.checked then
 sEdit2.passwordChar:=#0
 else
 sEdit2.passwordChar:=#7
end;


end.
