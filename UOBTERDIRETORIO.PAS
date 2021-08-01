unit uObterdiretorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls;

type
  TfrmObterdiretorio = class(TForm)
    ShellTreeView1: TShellTreeView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObterdiretorio: TfrmObterdiretorio;

implementation

{$R *.dfm}

end.
