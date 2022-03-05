unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, acPNG, DBTables, DB, ADODB, Grids, DBGrids;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Timer1: TTimer;
    Label2: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    Query1: TQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm10.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=FormatDateTime('dd/mm/yyyy        H:mm:ss',Now)
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
Form10.Close;
end;

end.
