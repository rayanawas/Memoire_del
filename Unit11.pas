unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sButton, sEdit, DB, DBTables;

type
  TForm11 = class(TForm)
    sEdit1: TsEdit;
    sButton1: TsButton;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    DataSource1: TDataSource;
    Table1: TTable;
    sButton2: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.sButton1Click(Sender: TObject);
begin
If sEdit1.Text = table1.fieldbyname('mp').asstring then
If sEdit2.text = sEdit3.text then
Begin
Table1.edit;
Table1.fieldbyname('mp').asstring:=sEdit2.text;
Table1.post;
Showmessage(' la modification du mot de passe est effectuée ')
End
Else Showmessage(' la confirmation du mot de passe est incorrecte ')
Else Showmessage(' l''ancien mot de passe est incorrecte ') ;


end;

procedure TForm11.sButton2Click(Sender: TObject);
begin
Form11.Close;
end;

end.
