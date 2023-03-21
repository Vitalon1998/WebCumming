unit ConvertProductNum;

interface
 function GetStrProductFromBar(bar:string):string;//только код продукта как числовую строку
 function GetIntProductFromBar(bar:string):integer;//только код продукта как число

 function GetStrNumberFromBar(bar:string):string;//полный номер изделия как числовую строку
 function GetIntNumberFromBar(bar:string):integer;//полный номер изделия  как число

implementation
uses SysUtils;
 var ABC:array['A'..'Z'] of integer=(10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35);

 //только код продукта как числовую строку
 function GetStrProductFromBar(bar:string):string;
  begin
    result:='';
    if not (Length(bar) in [9,10]) then Exit; //если не девятизначная строка, то это не номер изделия
    if (bar[2] in ['0'..'9']) then //если второй символ - число, то это еще больше похоже на номер
    begin
      if (bar[1] in ['A'..'Z']) then     //если бувка,
       result:=inttostr(ABC[bar[1]])+bar[2]//то преобразуем ее в число и прибавим справа второй символ
      else
      if (bar[1] in ['0'..'9']) then  //а если число
       result:=bar[1]+bar[2];      //значит все как есть и возвращаем
    end;
  end;

//только код продукта как число
 function GetIntProductFromBar(bar:string):integer;
  begin
    result:=0;
    if Length(bar)<>9 then Exit; //если не девятизначная строка, то это не номер изделия
    if (bar[2] in ['0'..'9']) then //если второй символ - число, то это еще больше похоже на номер
    begin
      if (bar[1] in ['A'..'Z']) then     //если бувка,
       result:=(ABC[bar[1]])*10+strtoint(bar[2])//то преобразуем ее в число(кол-во десятков) и прибавим второй символ/число единиц
      else
      if (bar[1] in ['0'..'9']) then  //а если число
       result:=StrToInt(bar[1])*10+strtoint(bar[2]);      //значит все как есть и возвращаем(1 символ - десятки, 2 - единицы)
    end;
  end;
  //полный номер изделия как числовую строку
 function GetStrNumberFromBar(bar:string):string;
  begin
    result:='';
    if not (Length(bar) in [9]) then Exit;
    result:=GetStrProductFromBar(bar); //сначала получаем код продукта
    if Result<>'' then //если все норм
     begin
      if length(bar)=9 then
      result:=result+copy(bar,3,7)
      else//то справа добавляем оставшиеся символы как есть
       result:=result+copy(bar,3,8);
     end;
  end;


  //полный номер изделия  как число
 function GetIntNumberFromBar(bar:string):integer;
 begin
   result:=0;
   if Length(bar)<>9 then exit;
   result:=GetIntProductFromBar(bar)*10000000;
   if Result<>0 then//если все норм
    result:=result+strtoint(Copy(bar,3,7));//прибавляем оставшиеся символы как ичсло
 end;

end.
 