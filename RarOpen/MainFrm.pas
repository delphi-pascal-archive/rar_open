unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, Menus, ToolWin, Gauges, XPMan,
  ExtCtrls;

type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    StatusList: TListBox;
    StatusBar: TStatusBar;
    ToolBar: TToolBar;
    File1: TMenuItem;
    OpenBtn: TToolButton;
    StartCrackBtn: TToolButton;
    ToolButton5: TToolButton;
    SaveLogBtn: TToolButton;
    ButtonImages: TImageList;
    ToolButton1: TToolButton;
    AboutBtn: TToolButton;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    StopBtn: TToolButton;
    OpenRar1: TMenuItem;
    SaveResult1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Atack1: TMenuItem;
    Start: TMenuItem;
    Stop1: TMenuItem;
    N3: TMenuItem;
    About1: TMenuItem;
    XPManifest1: TXPManifest;
    Panel1: TPanel;
    ProgressBar1: TGauge;
    procedure StartCrackBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenBtnClick(Sender: TObject);
    procedure StatusListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure StopBtnClick(Sender: TObject);
    procedure AboutBtnClick(Sender: TObject);
    procedure SaveLogBtnClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  work:TStringList;
  Dict:TStringList;
  DONE:boolean;
  RARNameString:String;
  path:string;
implementation

uses AboutFrm;

{$R *.dfm}
procedure ExpandString(s:string);
var t,r:string;
    pow,i:integer;
    c:longword;
    already:boolean;
begin
  work:=TStringList.Create;
  t:=LowerCase(s);
  work.Add(s);
  pow:=2;
  for c:=2 to length(s) do pow:=pow*2;
  for c:=1 to pow-1 do begin
    r:=s;
    for i:=1 to length(r) do
      if Odd(c shr (i-1)) then r[i]:=UpCase(r[i]);;
    already:=false;
    for i:=0 to work.Count-1 do
      if r=work[i] then already:=true;
    if not already then work.Add(r);
   end;
end;

function ExecAndWait(const FileName,Params:ShortString):boolean;
var StartInfo: TStartupInfo;
    ProcInfo: TProcessInformation;
    CmdLine: ShortString;
begin
  CmdLine:='"'+Filename+'" '+Params;
  FillChar(StartInfo,SizeOf(StartInfo),#0);
  with StartInfo do begin
    cb:=SizeOf(StartInfo);
    dwFlags:=STARTF_USESHOWWINDOW;
    wShowWindow:=SW_HIDE;
  end;
  Result:=CreateProcess(nil,PChar(String(CmdLine)),nil,nil,false,
                          CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS,nil,
                          PChar(ExtractFilePath(Filename)),StartInfo,ProcInfo);
  if Result then begin
    WaitForSingleObject(ProcInfo.hProcess,INFINITE);
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end else begin
  MainForm.StatusList.Items.Add('');
  MainForm.StatusList.Items.Add('Ошибка запуска rar.exe !!');
  MainForm.StartCrackBtn.Enabled := False;
  MainForm.StopBtn.Enabled := False;
  MainForm.Start.Enabled := False;
  MainForm.Stop1.Enabled := False;
  MainForm.SaveLogBtn.Enabled := False;
  MainForm.SaveResult1.Enabled := False;
  MainForm.OpenBtn.Enabled := true;
  MainForm.OpenRar1.Enabled := True;
  DONE:=true;
  end;
end;

procedure TMainForm.StartCrackBtnClick(Sender: TObject);
var r:string;
    i,j:integer;
    SR:TSearchRec;
begin
  path := extractFilePath(Application.ExeName);
  StartCrackBtn.Enabled := false;
  Start.Enabled := false;
  OpenBtn.Enabled := False;
  OpenRar1.Enabled := False;
  StopBtn.Enabled := true;
  Stop1.Enabled := true;
  StatusList.Clear;
  DONE:=false;
  repeat

    Dict:=TStringList.Create;
    Dict.LoadFromFile('DictEng.dic');
    Dict.Delete(Dict.Count-1);
    StatusList.Items.Add('Поиск пароля запущен...');
    StatusList.Items.Add('Архив: '+RARNameString);
    StatusList.Items.Add('');
    StatusList.Items.Add('//Статистика:');
    ProgressBar1.MaxValue:=Dict.Count;
    ProgressBar1.Progress:=0;
    if Dict.Count=0 then DONE:=true;

    for i:=0 to Dict.Count-1 do begin
      ExpandString(Dict[i]);

      for j:=0 to work.Count-1 do begin

        if ExecAndWait(path+'rar.exe','e -p'+work[j]+' "'+RARNameString+'" Output\') then begin
          FindFirst(path+'Output\*.*',faAnyFile,SR);
          FindNext(SR);
          r:=work[j];
          StatusList.Items.Strings[4] := ('Текущее слово: '+work[j]);
          if FindNext(SR)=0 then begin
            StatusList.Items.Add('Пароль найден!');
            StatusList.Items.Add('Пароль: ' + work[j]);
            ProgressBar1.Progress:=Dict.Count;
            Application.ProcessMessages;
            DONE:=true;
            break;
          end;
          FindClose(SR);
          Application.ProcessMessages;
        end;
        if DONE then break;
      end;
      ProgressBar1.Progress := ProgressBar1.Progress + 1;
      Application.ProcessMessages;
      work.Free;
      if DONE then break;
    end;
    Dict.Free;
    StatusList.Items.Add('');
    StatusList.Items.Add('Поиск пароля остановлен.');
    OpenBtn.Enabled := True;
    OpenRar1.Enabled := True;
  until DONE;

end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DONE := True;
Application.Terminate;
end;

procedure TMainForm.OpenBtnClick(Sender: TObject);
begin
if OpenDialog.Execute then begin
        RARNameString :=OpenDialog.FileName;
        StartCrackBtn.Enabled := True;
        StopBtn.Enabled := False;
        Start.Enabled := True;
        Stop1.Enabled := False;
end;
end;

procedure TMainForm.StatusListDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
TempStr: String;
begin
  TempStr := StatusList.Items.Strings[index];
  if StatusList.Items.Count <> 0 then begin
  if TempStr = '' then StatusList.Canvas.Font.Color := clBlack else begin
  if TempStr[2] = 'о' then StatusList.Canvas.Font.Color := clBlue;
  if TempStr[2] = 'р' then StatusList.Canvas.Font.Color := clBlack;
  if TempStr[1] = '/' then StatusList.Canvas.Font.Color := clRed;
  if TempStr[1] = 'О' then StatusList.Canvas.Font.Color := clRed;
  if TempStr[2] = 'а' then begin
            StatusList.Canvas.Font.Color := clGreen;
            StartCrackBtn.Enabled := False;
            StopBtn.Enabled := False;
            Start.Enabled := False;
            Stop1.Enabled := False;
            SaveLogBtn.Enabled := True;
            SaveResult1.Enabled := True;
            OpenBtn.Enabled := true;
            OpenRar1.Enabled := True;
  end;
  if TempStr[1] = 'В' then StatusList.Canvas.Font.Color := clBlack;
  if TempStr[1] = 'О' then StatusList.Canvas.Font.Color := clRed;
  end;
  StatusList.Canvas.TextRect(Rect, Rect.Left, Rect.Top, TempStr);
  end;
end;

procedure TMainForm.StopBtnClick(Sender: TObject);
begin
StartCrackBtn.Enabled := true;
StopBtn.Enabled := False;
Start.Enabled := true;
Stop1.Enabled := False;
Done := True;
end;

procedure TMainForm.AboutBtnClick(Sender: TObject);
begin
AboutForm.showmodal;
end;

procedure TMainForm.SaveLogBtnClick(Sender: TObject);
begin
if SaveDialog.Execute then StatusList.Items.SaveToFile(SaveDialog.FileName);
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
Close;
end;

end.
