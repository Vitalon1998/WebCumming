unit ConvertProductNum;

interface
 function GetStrProductFromBar(bar:string):string;//������ ��� �������� ��� �������� ������
 function GetIntProductFromBar(bar:string):integer;//������ ��� �������� ��� �����

 function GetStrNumberFromBar(bar:string):string;//������ ����� ������� ��� �������� ������
 function GetIntNumberFromBar(bar:string):integer;//������ ����� �������  ��� �����

implementation
uses SysUtils;
 var ABC:array['A'..'Z'] of integer=(10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35);

 //������ ��� �������� ��� �������� ������
 function GetStrProductFromBar(bar:string):string;
  begin
    result:='';
    if not (Length(bar) in [9,10]) then Exit; //���� �� ������������� ������, �� ��� �� ����� �������
    if (bar[2] in ['0'..'9']) then //���� ������ ������ - �����, �� ��� ��� ������ ������ �� �����
    begin
      if (bar[1] in ['A'..'Z']) then     //���� �����,
       result:=inttostr(ABC[bar[1]])+bar[2]//�� ����������� �� � ����� � �������� ������ ������ ������
      else
      if (bar[1] in ['0'..'9']) then  //� ���� �����
       result:=bar[1]+bar[2];      //������ ��� ��� ���� � ����������
    end;
  end;

//������ ��� �������� ��� �����
 function GetIntProductFromBar(bar:string):integer;
  begin
    result:=0;
    if Length(bar)<>9 then Exit; //���� �� ������������� ������, �� ��� �� ����� �������
    if (bar[2] in ['0'..'9']) then //���� ������ ������ - �����, �� ��� ��� ������ ������ �� �����
    begin
      if (bar[1] in ['A'..'Z']) then     //���� �����,
       result:=(ABC[bar[1]])*10+strtoint(bar[2])//�� ����������� �� � �����(���-�� ��������) � �������� ������ ������/����� ������
      else
      if (bar[1] in ['0'..'9']) then  //� ���� �����
       result:=StrToInt(bar[1])*10+strtoint(bar[2]);      //������ ��� ��� ���� � ����������(1 ������ - �������, 2 - �������)
    end;
  end;
  //������ ����� ������� ��� �������� ������
 function GetStrNumberFromBar(bar:string):string;
  begin
    result:='';
    if not (Length(bar) in [9]) then Exit;
    result:=GetStrProductFromBar(bar); //������� �������� ��� ��������
    if Result<>'' then //���� ��� ����
     begin
      if length(bar)=9 then
      result:=result+copy(bar,3,7)
      else//�� ������ ��������� ���������� ������� ��� ����
       result:=result+copy(bar,3,8);
     end;
  end;


  //������ ����� �������  ��� �����
 function GetIntNumberFromBar(bar:string):integer;
 begin
   result:=0;
   if Length(bar)<>9 then exit;
   result:=GetIntProductFromBar(bar)*10000000;
   if Result<>0 then//���� ��� ����
    result:=result+strtoint(Copy(bar,3,7));//���������� ���������� ������� ��� �����
 end;

end.
 