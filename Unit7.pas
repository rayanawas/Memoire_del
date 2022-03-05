unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Calendar, acPNG, Series, TeEngine,
  TeeProcs, Chart, DbChart, ComCtrls, TabNotBk, DB, ADODB, DBTables,
  DBCtrls, sButton;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Panel2: TPanel;
    DBChart1: TDBChart;
    DBChart2: TDBChart;
    DBChart3: TDBChart;
    Button4: TButton;
    Series4: TPieSeries;
    Query2: TQuery;
    Query3: TQuery;
    sButton2: TsButton;
    sButton3: TsButton;
    Series6: TPieSeries;
    Series7: TPieSeries;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    Query1: TQuery;
    sButton1: TsButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=FormatDateTime('dd/mm/yyyy            H:mm:ss',Now)
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
DBChart1.show;
DBChart2.hide;
DBChart3.hide;
end;


procedure TForm7.Button2Click(Sender: TObject);
begin
DBChart1.hide;
DBChart2.show;
DBChart3.hide;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
DBChart1.hide;
DBChart2.hide;
DBChart3.show;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
   Form7.Close;
end;

procedure TForm7.sButton1Click(Sender: TObject);
begin
DBChart1.hide;
DBChart2.hide;
DBChart3.show;
end;

procedure TForm7.sButton2Click(Sender: TObject);
begin
DBChart1.hide;
DBChart2.show;
DBChart3.hide;
end;

procedure TForm7.sButton3Click(Sender: TObject);
begin
DBChart1.show;
DBChart2.hide;
DBChart3.hide;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
 Query1.Close;
 Query1.Active:=true;
  Query2.Close;
 Query2.Active:=true;
  Query3.Close;
 Query3.Active:=true;
end;

end.
