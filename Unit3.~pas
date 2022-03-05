unit Unit3;

interface

uses
  Windows, DB, ADODB, ExtCtrls, Forms, Controls, StdCtrls, Grids, DBGrids, acPNG,
  Classes, Dialogs, DBCtrls, SysUtils, Messages,  Variants, Graphics,
  DBTables, Mask;
type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Timer1: TTimer;
    Label7: TLabel;
    Image1: TImage;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    DBNavigator1: TDBNavigator;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Timer1Timer(Sender: TObject);
begin
Label8.Caption:=FormatDateTime('dd/mm/yyyy            H:mm:ss',Now)
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form3.Close;
Edit6.Clear;
ADOTable1.Append;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
ADOTable1.Locate('nom_pro',edit6.Text,[loPartialKey,loCaseInsensitive]);
ADOTable1.Filtered:=True;


end;

procedure TForm3.Button1Click(Sender: TObject);
begin
ADOTable1.Insert;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
ADOTable1.Insert;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
ADOTable1.Locate('nom_pro',edit6.Text,[loPartialKey]);
ADOTable1.Filtered:=True;
end;

end.
