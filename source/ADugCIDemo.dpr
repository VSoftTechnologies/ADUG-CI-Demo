program ADugCIDemo;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('Hello Adug');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
