﻿unit Main;

interface

uses
  {$IFDEF FPC}
    LCLIntf, LResources,
  {$ELSE}
    Windows, Messages,
  {$ENDIF}
    SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, KGrids, KMemo, KGraphics, KFunctions, ExtCtrls, KEditCommon;

type

  { TForm2 }

  TForm2 = class(TForm)
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Memo: TKMemo;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

procedure TForm2.FormCreate(Sender: TObject);
var
  TB: TKTextMemoBlock;
  IB: TKImageMemoBlock;
  Index: Integer;
  MS: TMemoryStream;
  S: AnsiString;
  W: TString;
  I: Integer;
begin
  Memo := TKMemo.Create(Self);
  Memo.Options := Memo.Options + [eoShowFormatting];
  Memo.Colors.BkGnd := clInfoBk;
  Memo.Font.Size := 36;
  Memo.Blocks.LockUpdate;
  Memo.Blocks.Clear;
  Memo.Blocks.AddTextBlock('testtext1');
  Memo.Blocks.AddNewLineBlock;
  Memo.Blocks.AddTextBlock('testtext2');
  Memo.Blocks.AddNewLineBlock;
  Memo.Blocks.AddTextBlock('testtext3');
  Memo.Blocks.AddNewLineBlock;
  Memo.Blocks.AddTextBlock('testtext4');
  Memo.Blocks.AddNewLineBlock;
  TB := Memo.Blocks.AddTextBlock('This is big bold text.');
  TB.Font.Style := [fsBold];
  TB.Font.Size := 15;
  TB := Memo.Blocks.AddTextBlock(' This is small bold text.');
  TB.Font.Style := [fsBold];
  Memo.Blocks.AddNewLineBlock;
  TB := Memo.Blocks.AddTextBlock('This is text on gray.');
  TB.Brush.Color := clGray;
  TB.Font.Size := 15;
  TB := Memo.Blocks.AddTextBlock(' This is red text on gray.');
  TB.Brush.Color := clGray;
  TB.Font.Size := 15;
  TB.Font.Color := clRed;
  Memo.Blocks.AddNewLineBlock;
  Memo.Blocks.AddImageBlock('..\..\resource_src\kmessagebox_info.png');
  Memo.Blocks.AddImageBlock('..\..\resource_src\kmessagebox_stop.png');
  Memo.Blocks.AddNewLineBlock;
  TB := Memo.Blocks.AddTextBlock('This is vertically aligned text.');
  TB.Font.Size := 12;
  TB.VAlign := valCenter;
  Memo.Blocks.AddImageBlock('..\..\resource_src\kmessagebox_warning.png');
  Memo.Blocks.AddTextBlock(' another text');
  Memo.Blocks.AddNewLineBlock;
  TB := Memo.Blocks.AddTextBlock('This is text on gray.');
  TB.Brush.Color := clGray;
  TB.Font.Size := 15;
  TB := Memo.Blocks.AddTextBlock(' This is red text on gray.');
  TB.Brush.Color := clGray;
  TB.Font.Size := 15;
  TB.Font.Color := clRed;
  Memo.Blocks.AddNewLineBlock;
  MS := TMemoryStream.Create;
  try
    MS.LoadFromFile('..\..\kgrid_readme.txt');
    SetString(S, PAnsiChar(MS.Memory), MS.Size);
    for I := 0 to 0 do
      Memo.Blocks.Text := S;
  finally
    MS.Free;
  end;
  //Memo.BackgroundImage.LoadFromFile('..\..\resource_src\tkgrid.png');
  Memo.Blocks.UnlockUpdate;
  Memo.Align := alClient;
  Memo.ContentPadding.Left := 50;
  Memo.ContentPadding.Top := 30;
  Memo.ContentPadding.Right := 60;
  Memo.Parent := Self;
  Memo.Blocks.Lines[2] := 'This is replacement.';
  Memo.Select(0, 5);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
end;

{$IFDEF FPC}
  {$R *.lfm}
{$ELSE}
  {$R *.dfm}
{$ENDIF}
end.