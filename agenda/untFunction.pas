unit untFunction;

interface

uses System.SysUtils, Strutils;

type
  TAgenda = Record
    Nome, Email: string[100];
    Telefone, Celular, Aniversario: string[10];
    Observacao: string[255];
  end;
  TRegistro = file of TAgenda;
  TArrayRegistro = array of TAgenda;

const
  MyFileName = 'C:\Agenda_Contato.dat';
  MyFileOldName = 'C:\Old_Agenda_Contato.dat';
var countReg: Integer = 1;

  procedure LerRegistro(var agenda: TRegistro);
  procedure ProcuraRegistro(var reg: TRegistro);
  procedure MostraRegistro(var reg: TRegistro);
  procedure OrdenaAgenda(var reg: TRegistro; const Index: integer);
  procedure OrdenaArray(var reg: TArrayRegistro; const Count: integer);
  procedure OpcaoAgenda(var reg: TRegistro);
  procedure DeletaRegistro(var reg: TRegistro; const Index: Integer);
  procedure AlteraRegistro(var reg: TRegistro; const Index: Integer) ;
  {----------------------------------------------------------------}
  procedure CriaArquivoVazio(var reg: TRegistro);
  procedure AbreArquivo(var reg: TRegistro);
  procedure FechaArquivo(var reg: TRegistro);

  function isStrDateTime(date: string):Boolean;
  function FormataData(data: string): string;

var copyReg: TRegistro;

implementation

procedure AbreArquivo(var reg: TRegistro);
var registro: TAgenda;
begin
  try
    { Abrindo o arquivo que ficara salvo }
    AssignFile(reg, MyFileName);
    Reset(reg);
    Seek(reg, 0);
    countReg := 0;
    while not Eof(reg) do
      begin
        Read(reg, registro);
        Inc(countReg);
      end;
    { ---------------------------------- }
  except

  end;
end;

procedure CriaArquivoVazio(var reg: TRegistro);
begin
  try
     if not FileExists(MyFileName) then
       begin
         { Criando arquivo que será salvo }
         AssignFile(reg, MyFileName);
         Rewrite(reg);
         { ----------------------------- }
       end
     else
       begin
         AbreArquivo(reg);
       end;
  except

  end;
end;

procedure FechaArquivo(var reg: TRegistro);
begin
  try
    CloseFile(reg);
  except

  end;
end;

function isStrDateTime(date: string):Boolean;
begin
  try
     StrToDate(date);
     Result := True;
  except
     Result := False;
     //raise Exception.Create('O valor digitado não é uma data valida!');
  end;
end;

function FormataData(data: string): string;
begin
  try
    Result := Copy(data, 1, 2) + '/' + Copy(data, 3, 2) + '/' + Copy(data, 5, 4);
  except
     on E: Exception do
        Writeln('Erro não esperado: ', E.Message);
  end;
end;

procedure LerRegistro(var agenda: TRegistro);
var data: string;
    //j: Integer;
    registro: TAgenda;
begin
  try
    try
       Writeln('======================================');
       Writeln('========Inclusão de Contatos==========');
       Writeln('======================================');
       if not FileExists(MyFileName) then
          begin
            CriaArquivoVazio(agenda);
          end
       else
         begin
           Inc(countReg);
           Writeln('');
           Writeln('Digite o ', countReg,'º registro da Agenda');
           Writeln('======================================');
           repeat
             Write('Nome       : ' );
             Readln(registro.Nome);
           until Trim(registro.Nome) <> '';
           Write('Email      : ' );
           Readln(registro.Email);
           Write('Telefone   : ' );
           Readln(registro.Telefone);
           Write('Celular    : ' );
           Readln(registro.Celular);
           repeat
             Write('Aniversario: ' );
             Readln(data);
             registro.Aniversario := FormataData(data);
           until (isStrDateTime(registro.Aniversario) = True);
           Write('Observação : ' );
           Readln(registro.Observacao);
           Writeln('======================================');
           Writeln('');
           Write(agenda, registro);
           OrdenaAgenda(agenda, countReg);
           Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
           Writeln('% ', countReg,'º arquivo incluido com sucesso! %');
           Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
           Writeln('');
         end;
    except

    end;
  finally
    {for j := Low(agenda) to High(agenda) do
       begin
         if (Trim(agenda[j].Nome) = '') and (j <> 0) then
           begin
             DeletaRegistro(agenda, j);
           end;
       end; }
  end;
end;

procedure MostraRegistro(var reg: TRegistro);
var j: Integer;
    registro: TAgenda;
begin
   try
      j := 1;
      Writeln('======================================');
      Writeln('======Visualização dos Contatos=======');
      Writeln('======================================');
      Writeln('');
      if not FileExists(MyFileName) then
        begin
          CriaArquivoVazio(reg);
        end
      else
        begin
          Seek(reg, 0);
          while not Eof(reg) do
            begin
              Read(reg, registro);
              Writeln('Agenda ',j,'º registro');
              Writeln('======================================');
              Writeln('Nome        - ',registro.Nome);
              Writeln('Email       - ',registro.Email);
              Writeln('Telefone    - ',registro.Telefone);
              Writeln('Celular     - ',registro.Celular);
              Writeln('Aniversario - ',registro.Aniversario);
              Writeln('Observação  - ',registro.Observacao);
              Writeln('======================================');
              Writeln('');
              Inc(j);
            end;
          Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
          Writeln('% Final da agenda de contatos! %');
          Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
          Writeln('');
        end;
   except

   end;
end;

procedure ProcuraRegistro(var reg: TRegistro);
var j, iCount: Integer;
    bFim: Boolean;
    sNome: string;
    registro: TAgenda;
    aArrayCopy: TArrayRegistro;
begin
  try
     Writeln('======================================');
     Writeln('=========Pesquisar Contatos===========');
     Writeln('======================================');
     bFim := False;
     iCount := 0;
     repeat
       if (FileExists(MyFileName)) then
         begin
           if iCount = 0 then
             begin
               { Copiando dados para o vetor / para pesquisar por nome}
               SetLength(aArrayCopy, countReg + 1);
               countReg := 0;
               Seek(reg, 0);
               while not Eof(reg) do
                 begin
                   Inc(countReg);
                   Read(reg, registro);
                   aArrayCopy[countReg].Nome        := registro.Nome;
                   aArrayCopy[countReg].Email       := registro.Email;
                   aArrayCopy[countReg].Telefone    := registro.Telefone;
                   aArrayCopy[countReg].Celular     := registro.Celular;
                   aArrayCopy[countReg].Aniversario := registro.Aniversario;
                   aArrayCopy[countReg].Observacao  := registro.Observacao;
                 end;
               { -------------------------------------------------------- }
               Inc(iCount);
             end;

           Write('Digite um nome para procurar na Agenda: ');
           Readln(sNome);
           Writeln('');
           for j := 1 to countReg do
             begin
               //if (UpperCase(aArrayCopy[j].Nome) = UpperCase(sNome)) then
               if AnsiContainsStr(UpperCase(aArrayCopy[j].Nome), UpperCase(sNome)) then
                 begin
                   Writeln('Encontrado ',aArrayCopy[j].Nome,' na agenda, no ',j,'º registro.');
                   Writeln('===========================================');
                   Writeln('Nome        - ',aArrayCopy[j].Nome);
                   Writeln('Email       - ',aArrayCopy[j].Email);
                   Writeln('Telefone    - ',aArrayCopy[j].Telefone);
                   Writeln('Celular     - ',aArrayCopy[j].Celular);
                   Writeln('Aniversario - ',aArrayCopy[j].Aniversario);
                   Writeln('Observação  - ',aArrayCopy[j].Observacao);
                   Writeln('===========================================');
                   Writeln('');
                   bFim := True;
                 end
             end;
           if bFim = False then
             begin
               Writeln('========================');
               Writeln('Registro não encontrado!');
               Writeln('========================');
             end;
         end
       else
         begin
           bFim := True;
           Writeln('==================================');
           Writeln(' Não existe arquivo para procurar!');
           Writeln('==================================');
         end;
     until (bFim = True);
  except

  end;
end;

procedure AlteraRegistro(var reg: TRegistro; const Index: Integer);
var sRegistro: string;
    registro: TAgenda;
    i: Integer;
begin
  try
     Writeln('======================================');
     Writeln('=========Alteração de Contato=========');
     Writeln('======================================');
     if (Index <= 0) or (Index > countReg) then
       begin
         Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
         Writeln('% Número digitado esta fora da faixa de registro! %');
         Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
         Writeln('');
         Exit;
       end;

      if (FileExists(MyFileName)) then
       begin
         i := 0;
         Seek(reg, 0);
         if not (FileExists(MyFileOldName)) then
           begin
             FechaArquivo(reg);
             RenameFile(MyFileName, MyFileOldName);
             CriaArquivoVazio(reg);
           end;

         if FileExists(MyFileOldName) then
           begin
            { Abrindo o arquivo que será usado para backup }
            AssignFile(copyReg, MyFileOldName);
            Reset(copyReg);
           end;
         { ---------------------------------- }
         countReg := 0;
         Seek(copyReg, 0);
         while not Eof(copyReg) do
           begin
             Inc(i);
             Read(copyReg, registro);
             if (Index <> i) then
               begin
                 Inc(countReg);
                 Write(reg, registro);
               end
             else if (Index = i) then
               begin
                  Inc(countReg);
                  Writeln('Agenda ',Index,'º registro');
                  Writeln('======================================');
                  Write('Nome        - ',registro.Nome, ' Modificar: ');
                  Readln(sRegistro);
                  if Trim(sRegistro) <> '' then
                    begin
                      Delete(registro.Nome, 1, Length(registro.Nome));
                      registro.Nome := sRegistro;
                    end;
                  Write('Email       - ',registro.Email, ' Modificar: ');
                  Readln(sRegistro);
                  if Trim(sRegistro) <> '' then
                    begin
                      Delete(registro.Email, 1, Length(registro.Email));
                      registro.Email := sRegistro;
                    end;
                  Write('Telefone    - ',registro.Telefone, ' Modificar: ');
                  Readln(sRegistro);
                  if Trim(sRegistro) <> '' then
                    begin
                      Delete(registro.Telefone, 1, Length(registro.Telefone));
                      registro.Telefone := sRegistro;
                    end;
                  Write('Celular     - ',registro.Celular, ' Modificar: ');
                  Readln(sRegistro);
                  if Trim(sRegistro) <> '' then
                    begin
                      Delete(registro.Celular, 1, Length(registro.Celular));
                      registro.Celular := sRegistro;
                    end;
                  repeat
                    Write('Aniversario - ',registro.Aniversario, ' Modificar: ');
                    Readln(sRegistro);
                    if Trim(sRegistro) <> '' then
                      begin
                        Delete(registro.Aniversario, 1, Length(registro.Aniversario));
                        registro.Aniversario := FormataData(sRegistro);
                      end;
                  until (isStrDateTime(registro.Aniversario) = True) or (Trim(sRegistro) = '');
                  Write('Observação  - ',registro.Observacao, ' Modificar: ');
                  Readln(sRegistro);
                  if Trim(sRegistro) <> '' then
                    begin
                      Delete(registro.Observacao, 1, Length(registro.Observacao));
                      registro.Observacao := sRegistro;
                    end;
                  Write('======================================');
                  Write(reg, registro);
                  Writeln('');
                  Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
                  Writeln('% ', Index,'º arquivo alterado com sucesso! %');
                  Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
                  Writeln('');
               end;
           end;
           if (FileExists(MyFileOldName)) then
           begin
             FechaArquivo(copyReg);
             DeleteFile(MyFileOldName);
           end;
       end;
  except

  end;
end;

procedure DeletaRegistro(var reg: TRegistro; const Index: Integer) ;
var registro: TAgenda;
    i: Integer;
begin
   try
     if (Index <= 0) or (Index > countReg) then
       begin
         Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
         Writeln('% Número digitado esta fora da faixa de registro! %');
         Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
         Writeln('');
         Exit;
       end;

     if (FileExists(MyFileName)) then
       begin
         i := 0;
         Seek(reg, 0);
         if not (FileExists(MyFileOldName)) then
           begin
             FechaArquivo(reg);
             { Renomeando arquivo para criar outro }
             RenameFile(MyFileName, MyFileOldName);
             CriaArquivoVazio(reg);
           end;

         if FileExists(MyFileOldName) then
           begin
            { Abrindo o arquivo que será usado para backup }
            AssignFile(copyReg, MyFileOldName);
            Reset(copyReg);
           end;
         { ---------------------------------- }
         countReg := 0;
         Seek(copyReg, 0);
         while not Eof(copyReg) do
           begin
             Inc(i);
             Read(copyReg, registro);
             { Se Index for diferente do contador
               adiciona no arquivo novo }
             if (Index <> i) then
               begin
                 Inc(countReg);
                 Write(reg, registro);
               end;
           end;
         { Verificando se o arquivo renomeado existe
           mesmo para poder esta apagando ele do disco}
         if (FileExists(MyFileOldName)) then
           begin
             FechaArquivo(copyReg);
             DeleteFile(MyFileOldName);
           end;
         Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
         Writeln('% ', Index,'º arquivo deletado com sucesso! %');
         Writeln('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
         Writeln('');
       end;
   except

   end;
end;

procedure OrdenaAgenda(var reg: TRegistro; const Index: integer);
var registro: TAgenda;
    aArrayCopy: TArrayRegistro;
    i: Integer;
begin
  try
     //Writeln('======================================');
     //Writeln('=========Ordenação dos nomes =========');
     //Writeln('======================================');
      if (FileExists(MyFileName)) then
       begin
         { Copiando dados para o vetor / para ordenar os registros}
         SetLength(aArrayCopy, countReg + 1);
         countReg := 0;
         Seek(reg, 0);
         while not Eof(reg) do
           begin
             Inc(countReg);
             Read(reg, registro);
             aArrayCopy[countReg].Nome        := registro.Nome;
             aArrayCopy[countReg].Email       := registro.Email;
             aArrayCopy[countReg].Telefone    := registro.Telefone;
             aArrayCopy[countReg].Celular     := registro.Celular;
             aArrayCopy[countReg].Aniversario := registro.Aniversario;
             aArrayCopy[countReg].Observacao  := registro.Observacao;
           end;
         { -------------------------------------------------------- }
         { Ordenando o array para depois
           adicionar no arquivo }
         OrdenaArray(aArrayCopy, countReg);
         { ---------------------------------- }
         { Fazendo um backup caso aconteça algum erro
           tem como recuperar o arquivo antigo só deleta
           o backup no final }
         if not (FileExists(MyFileOldName)) then
           begin
             FechaArquivo(reg);
             { Renomeando arquivo para criar outro }
             RenameFile(MyFileName, MyFileOldName);
             CriaArquivoVazio(reg);
           end;
         { ---------------------------- }
         { Adiciona o registro ordenado no arquivo bin }
         for i := 1 to countReg do
           begin
             if Trim(aArrayCopy[countReg].Nome) <> '' then
               begin
                 registro.Nome        := aArrayCopy[i].Nome;
                 registro.Email       := aArrayCopy[i].Email;
                 registro.Telefone    := aArrayCopy[i].Telefone;
                 registro.Celular     := aArrayCopy[i].Celular;
                 registro.Aniversario := aArrayCopy[i].Aniversario;
                 registro.Observacao  := aArrayCopy[i].Observacao;
                 Write(reg, registro);
               end;
           end;
         { ------------------------------------------------------ }
         { Verificando se o arquivo renomeado existe
           mesmo para poder esta apagando ele do disco}
         if (FileExists(MyFileOldName)) then
           begin
             //FechaArquivo(copyReg);
             DeleteFile(MyFileOldName);
           end;
       end;
  except

  end;
end;

procedure OrdenaArray(var reg: TArrayRegistro; const Count: integer);
var pass, K: integer;
    temp: TAgenda;
begin
  try
    for pass := 1 to High(reg) do
      begin
        K := pass;
        temp := reg[K];
        while (K > 1) and (temp.Nome < reg[K - 1].Nome) do
          begin
            reg[K] := reg[K - 1];
            dec(K);
          end; // while
        reg[K] := temp;
      end; // for
  except

  end;
end; // OrdenaArray

procedure OpcaoAgenda(var reg: TRegistro);
var opc, sFim, delete: Char;
    i: Integer;
begin
  try
    try
       i := 0;
       while True do
         begin
            Writeln('Escolha uma das seguintes opções abaixo para usar: ');
            Writeln('====================================================');
            Writeln('1 = Inserir   - (Inseri novo contato.)');
            Writeln('2 = Deletar   - (Deleta um contato selecionado.)');
            Writeln('3 = Alterar   - (Altera um contato selecionado.)');
            Writeln('4 = Mostrar   - (Mostra todos contatos adicionado.)');
            Writeln('5 = Pesquisar - (Pesquisa cotato por nome.)');
            Writeln('6 = Finalizar - (Finaliza a agenda de contato.)');
            Writeln('====================================================');
            Readln(opc);
            case opc of
              '1' : begin
                      LerRegistro(reg);
                    end;
              '2' : begin
                      Write('Digite o número de um registro da agenda para deletar: ');
                      Readln(delete);
                      Writeln('');
                      if TryStrToInt(delete, i) then
                        begin
                          i := StrToInt(delete);
                          DeletaRegistro(reg, i);
                        end
                      else
                        begin
                          Write('Você digitou um valor inválido!');
                        end;
                    end;
              '3' : begin
                      Write('Digite o número de um registro da agenda para alterar: ');
                      Readln(delete);
                      Writeln('');
                      if TryStrToInt(delete, i) then
                        begin
                          i := StrToInt(delete);
                          AlteraRegistro(reg, i);
                          OrdenaAgenda(reg, countReg);
                        end
                      else
                        begin
                          Write('Você digitou um valor inválido!');
                        end;
                    end;
              '4' : begin
                      MostraRegistro(reg);
                    end;
              '5' : begin
                      ProcuraRegistro(reg);
                    end;
              '6' : begin
                      Exit;
                    end;
            else
              begin
                Write('Você digitou um valor que não corresponde à lista!');
              end;
            end;
            Writeln('Digite "S" e tecle "ENTER" para sair, ou apenas tecle "ENTER" para continuar!');
            Readln(sFim);
            if (UpperCase(sFim) = 'S') then
              begin
                Break;
              end;
         end;
    except

    end;
  finally
    if FileExists(MyFileName) then
      begin
        FechaArquivo(reg);
      end;
  end;
end;

initialization
begin
  Writeln('======================================');
  Writeln('============Inicializando=============');
  Writeln('==========Agenda de Contatos==========');
  Writeln('======================================');
  Writeln('');
end;
finalization
begin
  Writeln('======================================');
  Writeln('============Finalizando===============');
  Writeln('==========Agenda de Contatos==========');
  Writeln('======================================');
  Readln;
end;

end.
