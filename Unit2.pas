unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, QuickRpt, acPNG, DBCtrls, ADODB, DB,
  DBTables, Grids, DBGrids, frxClass, sPanel, frxDBSet, Mask, sBevel,
  sMaskEdit, sCustomComboEdit, sTooledit, ComCtrls, Buttons;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    frxReport1: TfrxReport;
    DBNavigator1: TDBNavigator;
    Image2: TImage;
    Image3: TImage;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    ADOQuery1: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    DBComboBox1: TDBComboBox;
    ADOTable1: TADOTable;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Table1: TTable;
    DBLookupComboBox2: TDBLookupComboBox;
    Table1Nprod: TIntegerField;
    Table1nom_pro: TStringField;
    Table1qte: TIntegerField;
    Table1prix: TIntegerField;
    Table1famille: TStringField;
    Table2: TTable;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    Table2nom_prod: TStringField;
    Table2unite: TStringField;
    Table2qte: TIntegerField;
    Table2prix: TIntegerField;
    DBEdit2: TDBEdit;
    Table2total: TCurrencyField;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Edit1: TEdit;
    DBEdit3: TDBEdit;
    Table2Rtotale: TCurrencyField;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Table2CalcFields(DataSet: TDataSet);
    procedure DBEdit5Change(Sender: TObject);
    procedure Table2AfterPost(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit12, Math;

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin
Label8.Caption:=FormatDateTime('dd/mm/yyyy            H:mm:ss',Now)
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;

while not ( Table2.Eof) do
 table2.delete;
end;

procedure TForm2.Button1Click(Sender: TObject);
var s,i:Integer;
begin
for i:=1 to Table2.RecordCount DO
 begin
 Table2.RecNo:=i;
 s:=s + Table2.FieldValues['total'];
 end;
 Edit1.Text:=inttostr(s);

frxReport1.ShowReport();

end;

procedure TForm2.Image2Click(Sender: TObject);
begin
ADOQuery1.Append;
ADOTable2.Append;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
ADOQuery1.Post;
end;



procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
DBEdit7.Text:=datetostr(DateTimePicker1.Date);
end;

procedure TForm2.Table2CalcFields(DataSet: TDataSet);
begin
 Table2.FieldByName('total').AsInteger:= Table2.FieldByName('qte').AsInteger*Table1.FieldByName('prix').AsInteger;
end;

procedure TForm2.DBEdit5Change(Sender: TObject);
begin
DBEdit6.Text:=DBEdit5.Text;
end;

procedure TForm2.Table2AfterPost(DataSet: TDataSet);
begin
table2.First;
while not(table2.Eof)do
begin
table1.SetKey;
Table1.FieldByName('nom_pro').AsVariant:= Table2.FieldByName('nom_prod').AsVariant;
if table1.GotoKey then
 begin
 table1.Edit;
 Table1.FieldByName('qte').AsInteger:= Table2.FieldByName('qte').AsInteger+Table1.FieldByName('qte').AsInteger;
 table1.Post;
 end;
 table2.Next;
end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
Edit1.text:=DBEdit3.Text;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
ADOtable2.Close;
 ADOtable2.Active:=true;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
var chaine1,chaine:string;
p,nombre,q,DEC:integer;
N,n1:real;
procedure decimale(var p3:integer);
begin
if p3=10 then chaine:=chaine+ ' Dix';
if p3=11 then chaine:=chaine+ ' Onze';
if p3=12 then chaine:=chaine+ ' Douze';
if p3=13 then chaine:=chaine+ ' Treize';
if p3=14 then chaine:=chaine+ ' Quatorze';
if p3=15 then chaine:=chaine+ ' Quinze';
if p3=16 then chaine:=chaine+ ' Seize';
if p3=17 then chaine:=chaine+ ' Dix Sept';
if p3=18 then chaine:=chaine+ ' Dix Huit';
if p3=19 then chaine:=chaine+ ' Dix Neuf';
end;
procedure chiffre(var p2:integer);
begin
if p2=1 then chaine:=chaine+ ' Un';
if p2=2 then chaine:=chaine+ ' Deux';
if p2=3 then chaine:=chaine+ ' Trois';
if p2=4 then chaine:=chaine+ ' Quatre';
if p2=5 then chaine:=chaine+ ' Cinq';
if p2=6 then chaine:=chaine+ ' Six';
if p2=7 then chaine:=chaine+ ' Sept';
if p2=8 then chaine:=chaine+ ' Huit';
if p2=9 then chaine:=chaine+ ' Neuf';
end;
procedure mille(var p1:integer);
var c:integer;
begin
c:=p1 div 100;
if c=1 then chaine:=chaine+ ' Cent';
if c=2 then chaine:=chaine+ ' Deux Cent';
if c=3 then chaine:=chaine+ ' Trois Cent';
if c=4 then chaine:=chaine+ ' Quatre Cent';
if c=5 then chaine:=chaine+ ' Cinq Cent';
if c=6 then chaine:=chaine+ ' Six Cent';
if c=7 then chaine:=chaine+ ' Sept Cent';
if c=8 then chaine:=chaine+ ' Huit Cent';
if c=9 then chaine:=chaine+ ' Neuf Cent';
p1:=p1-c*100; c:=p1 div 10;
if c=2 then begin
chaine:=chaine+ ' Vingt';
p1:=p1-c*10; chiffre(p1); end;
if c=3 then begin
chaine:=chaine+ ' Trente';
p1:=p1-c*10; chiffre(p1);end;
if c=4 then begin
chaine:=chaine+ ' Quarante';
p1:=p1-c*10; chiffre(p1);end;
if c=5 then begin
chaine:=chaine+ ' Cinquante';
p1:=p1-c*10; chiffre(p1);end;
if c=6 then begin
chaine:=chaine+ ' Soixante';
p1:=p1-c*10; chiffre(p1);end;
if c=8 then begin
chaine:=chaine+ ' Quatre Vingt';
p1:=p1-c*10; chiffre(p1);end;
if c=0 then chiffre(p1);
if c=1 then decimale(p1);
if c=7 then
begin
chaine:=chaine+ ' Soixante';
p1:=p-60; decimale(p1);end;
if c=9 then
begin
chaine:=chaine+ ' Quatre Vingt';
p1:=p1-80; decimale(p1);
end; end;
{Programme principal}
var abc:real;
begin
chaine:=' ';
n:=Table2.fieldbyname('Rtotale').asfloat;
nombre:=trunc(n);
abc:=int(n*100);
dec:=trunc(abc) mod 100;
if nombre>=1000000000 then
begin
p:=nombre div 1000000000;
nombre:=nombre-p*1000000000;
if p<>0 then
begin
mille(p); chaine:=chaine+ ' Milliard';
end; end;
{milliards}
if nombre>=1000000 then
begin
p:=nombre div 1000000;
nombre:=nombre-p*1000000;
if p<>0 then
begin
mille(p); chaine:=chaine+ ' Million';
end; end;
{milliers}
if nombre>=1000 then
begin
p:=nombre div 1000;
nombre:=nombre-p*1000;
if p<>1 then
begin
mille(p); chaine:=chaine+ ' Mille';
end else
chaine:=chaine+ 'mille';
end;
{simple}
if (0<=nombre) and (nombre<1000) then
begin
p:=nombre; mille(p);
end;
chaine:=chaine+ ' dinars' +' et';
begin q:=dec; mille(q);
IF q=0 THEN
chaine:=chaine+ ' Zero CTS'
Else
chaine:=chaine+ ' CTS'
end;
{chaine:=chaine+ ' dinars' +' et'+chaine1+' CTS';}
label9.caption:=chaine;


end;

end.
