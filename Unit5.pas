unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, dblookup,
  DBTables, acPNG, DBCtrls, Mask, sButton, Buttons;

type
  TForm5 = class(TForm)
    Label3: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Image1: TImage;
    Timer1: TTimer;
    Edit7: TEdit;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    ADOTable1: TADOTable;
    DBEdit1: TDBEdit;
    Image2: TImage;
    Image3: TImage;
    sButton1: TsButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit12, Unit6;

{$R *.dfm}

procedure TForm5.Timer1Timer(Sender: TObject);
begin
Label8.Caption:=FormatDateTime('dd/mm/yyyy            H:mm:ss',Now)
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
Form5.Hide;
Form6.show;
ADOTable1.Append;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
ADOTable1.Locate('name',edit7.Text,[loPartialKey]);
ADOTable1.Filtered:=True;


end;

procedure TForm5.Button2Click(Sender: TObject);
begin
ADOTable1.Insert;
end;



procedure TForm5.Button5Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TForm5.Image2Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TForm5.Image3Click(Sender: TObject);
begin
ADOTable1.Insert;
end;



procedure TForm5.sButton1Click(Sender: TObject);
begin
ADOTable1.Locate('name',edit7.Text,[loPartialKey,loCaseInsensitive]);
ADOTable1.Filtered:=True;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
Form5.Hide;
Form6.show;
ADOTable1.Append;
end;

end.
