unit uPangram;

interface

  function isPangram(AValue : string) : boolean;

implementation

  uses
    System.SysUtils, System.StrUtils;

  function isPangram(AValue : string) : boolean;
    var
      alphabet : string;
    begin
      alphabet := '';
      for var i : Char := 'a' to 'z' do
        alphabet := alphabet + i;
      for var i : integer := Low(AValue) to High(AValue) do
        begin
          if 0 <> Length(alphabet) then
            if 0 <> Pos(LowerCase(AValue[i]), alphabet) then
              alphabet := ReplaceStr(alphabet, LowerCase(AValue[i]), '');
        end;
      Result := (0 = Length(alphabet));
    end;

end.
