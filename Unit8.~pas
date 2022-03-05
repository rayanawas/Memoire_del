unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, QuickRpt, Buttons, Grids, DBGrids, DBCtrls,
  acPNG, DB, ADODB, DBTables, frxClass, frxDBSet, Mask, ComCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    ADOConnection1: TADOConnection;
    DBNavigator1: TDBNavigator;
    Image2: TImage;
    Image3: TImage;
    frxDBDataset1: TfrxDBDataset;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    frxReport1: TfrxReport;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    frxDBDataset2: TfrxDBDataset;
    Table1: TTable;
    DataSource3: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    frxDBDataset3: TfrxDBDataset;
    Table2: TTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    frxDBDataset4: TfrxDBDataset;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit12;



{$R *.dfm}

procedure TForm8.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=FormatDateTime('dd/mm/yyyy            H:mm:ss',Now)
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
Form8.Close;
while not (Table1.Eof) do
 Table1.delete;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
frxReport1.ShowReport();

end;

procedure TForm8.Image2Click(Sender: TObject);
begin
ADOQuery1.Append;
ADOtable1.Append;
end;

procedure TForm8.Image3Click(Sender: TObject);
begin
ADOQuery1.Post;
end;

procedure TForm8.DateTimePicker1Change(Sender: TObject);
begin
DBEdit6.Text:=datetostr(DateTimePicker1.Date);
end;

procedure TForm8.Table1AfterPost(DataSet: TDataSet);
begin
table1.First;
while not(table1.Eof)do
begin
table2.SetKey;
Table2.FieldByName('nom_pro').AsVariant:= Table1.FieldByName('desingation').AsVariant;
if table2.GotoKey then
 begin
 table2.Edit;
 Table2.FieldByName('qte').AsInteger:=Table2.FieldByName('qte').AsInteger-Table1.FieldByName('qte reçu').AsInteger;
 table2.Post;
 end;
 table1.Next;
end;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
ADOQuery1.Close;
 ADOQuery1.Active:=true;
end;

end.
