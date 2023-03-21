unit DBOperator;

interface

uses
  Classes, Windows, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  SysUtils;

type
  TOperator = record
    barcode: string;  //штрих-код с карточки оператора
    id: integer;      //id оператора, берется из БД
    name: string;     //ФИО оператора
    role: SmallInt;   //роль оператора (отвечает за права доступа,
                      //роль пользователями в приложении и т.д.)
  end;

  TDBOperator = class(TComponent)
    pFIBD: TpFIBDatabase;
    pFIBDS: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
  private
  protected
  public
    base: string;
    constructor Create(AOwner: TComponent; base: string);
    destructor Destroy; override;
    function getOperator(barcode: string): TOperator;
  published
  end;

implementation

{ TDBOperator }

constructor TDBOperator.Create(AOwner: TComponent; base: string);
var
  abase: string;
begin
  try
    inherited Create(AOwner);
    pFIBD := TpFIBDatabase.Create(Self);
    pFIBDS := TpFIBDataSet.Create(Self);
    pFIBTransaction := TpFIBTransaction.Create(Self);
    if base = '' then
      abase := 'basesrv:c:\base\base.fdb'
    else
      abase := base;
    pFIBD.DBName := abase;
    pFIBD.ConnectParams.UserName := 'REPORT';
    pFIBD.ConnectParams.Password := 'REPORT';
    pFIBD.DefaultTransaction := pFIBTransaction;
    pFIBD.SQLDialect := 3;
    pFIBTransaction.DefaultDatabase := pFIBD;
    pFIBD.Connected := true;

    PFIBDS.Database := pFIBD;
    PFIBDS.Transaction := pFIBTransaction;
    pFIBDS.Active := false;
  except
    on e: exception do
      raise;
  end;
end;

destructor TDBOperator.Destroy;
begin
  try
    pFIBDS.Destroy;
    pFIBTransaction.Destroy;
    pFIBD.Destroy;
    inherited Destroy;
  except
    on e: exception do
      raise;
  end;
end;

function TDBOperator.getOperator(barcode: string): TOperator;
begin
  try
    result.barcode := '';
    result.id := 0;
    result.name := '';
    pFIBDS.Active := false;
    pFIBDS.SQLs.SelectSQL.Clear;
    pFIBDS.SQLs.SelectSQL.Add(format('SELECT * FROM OPERATOR WHERE BAR=''%s''', [barcode]));
    pFIBDS.Active := true;
    if pFIBDS.RecordCount = 1 then
    begin
      result.id := pFIBDS.FieldByName('ID').AsInteger;
      result.name := pFIBDS.FieldByName('FIO').AsString;
      if not pFIBDS.FieldByName('role').IsNull then
        Result.role := pFIBDS.FieldByName('role').Value
      else
        Result.role := -1;
      result.barcode := barcode;
    end;
    pFIBDS.Active := false;
  except
    on e: exception do
      raise;
  end;
end;

end.
