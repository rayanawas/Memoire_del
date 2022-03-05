unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBTables, DB, ADODB,
  DBCtrls, Mask, acPNG;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Button1: TButton;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    Label4: TLabel;
    Button2: TButton;
    Edit2: TEdit;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ADOTable1: TADOTable;
    Image2: TImage;
    Image3: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=FormatDateTime('dd/mm/yyyy            H:mm:ss',Now)
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
ADOTable1.Locate('nom_ser',edit2.Text,[loPartialKey,loCaseInsensitive]);
ADOTable1.Filtered:=True;
end;


procedure TForm9.Button1Click(Sender: TObject);
begin
Form9.Close;
Edit2.Clear;
ADOTable1.Append;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
ADOTable1.Insert;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TForm9.Image2Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TForm9.Image3Click(Sender: TObject);
begin
ADOTable1.Insert;
end;

procedure TForm9.Image4Click(Sender: TObject);
begin
ADOTable1.Locate('nom_ser',edit2.Text,[loPartialKey]);
ADOTable1.Filtered:=True;
end;

end.
