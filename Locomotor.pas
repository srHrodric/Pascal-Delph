program Loco_Motor;

type 
		regUsuario = record
      					senha,nome: string[20];
							 end;

var
			//vari�vel universal
			pesquisa,temporario:string;
			carro,aluguel,cliente,devolucao:text;
			salvar:string[1];
			n_linha,tam,num1,erro,dia,mes,ano,semana,hora,
			c,op,minuto,segundo,mile_segundo:integer;
			//vari�vel carro
			mot:string[3];
			plac:string[7];
			fab:string[4];
			modelo,cor:string;
			chas,port,pass: integer;
			//vari�vel cliente
			sexo:char;
			nome,nome_pai,nome_mae:string[45];
			data_nas,tel:integer;
			id,rg,email:string;
			//vari�vel endere�o
			comp_casa,rua,bairro,cid:string;
			cep,n_casa:integer;
			uf:string[2];
			//vari�vel aluguel
			km,dia_aluguel,prev:integer;
			cnh:string;
			//vari�vel devolu��o
			ano_dif,mes_dif,dia_dif,mes_aluguel,
			ano_aluguel,gasto,km_devolvido,dev:integer;
			passo_pordia,kmpor_dia,total,total_geral:real;
			gasol:char;
			//variavel login
			f: file of regUsuario;
    	a: regUsuario;
    	tecla,resp:char;
			primaria,root,
			chave:string;
			achou:boolean;


const
			i=1;
			ENTER = #13;
	
	begin
	    cursoroff;
								textbackground(red);  
								delay(180);
								gotoxy(6,5); 
								writeln('#====================================================================#');
								delay(180);
								gotoxy(6,6);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,7);
								writeln('|  ��                                          ������                |');
								delay(180);
								gotoxy(6,8);
								writeln('|  ��      �����   ����  �����  �     �  �����   ��    �����  �����  |');
								delay(180);
								gotoxy(6,9);
								writeln('|  ��     ��   �� ��    ��   �� ��� ��� ��   ��  ��   ��   �� ��  �  |');
								delay(180);
								gotoxy(6,10);
								writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �����  |');
								delay(180);
								gotoxy(6,11);
								writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �� �   |');
								delay(180);
								gotoxy(6,12);
								writeln('|  ������  �����   ����  �����  ��   ��  �����   ��    �����  ��  �  |');
								delay(180);
								gotoxy(6,13);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,14);
								writeln('|                                                       vers�o 2.6.0 |');
								delay(180);
								gotoxy(6,15);
								writeln('#====================================================================#');
								delay(180);
								gotoxy(6,16);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,17);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,18);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,19);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,20);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,21);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,22);
								writeln('|                                                                    |');
								delay(180);
								gotoxy(6,23);
								writeln('#====================================================================#'); 
						    gotoxy(11,17);
						    writeln('VERIFICANDO ARQUIVO...');
								//BARRA DE LOADING
								gotoxy(15,20);
								for c:=1 to 52 do	begin
								delay(110);
								write(chr(219));
								end;
								writeln;
								writeln;
								writeln;
								writeln;
								textbackground(black);		
								clrscr;
							  assign(f,'Logon.dat');
								reset(f);
								if (ioresult=0) then begin
										textbackground(red);
										gotoxy(6,6); 
										writeln('#====================================================================#');
										gotoxy(6,7);
										writeln('|                                                                    |');
										gotoxy(6,8);
										writeln('|                         OK... AGUARDE!!!                           |');
										gotoxy(6,9);
										writeln('|                                                                    |');
									  delay(300);
								    textbackground(black);
								end
								else begin
									cursoron;
									textbackground(red);
										gotoxy(6,6); 
										writeln('#====================================================================#');
										gotoxy(6,7);
										writeln('|                                                                    |');
										gotoxy(6,8);                               
										writeln('|                         CONTACT THE SUPPORT.                       |');
										gotoxy(6,9);                                             
										writeln('|                          xxxxx-xxxxx-xxxx.                         |');
									  gotoxy(6,10);
										writeln('|                                                                    |');
										gotoxy(6,11);
										writeln('#====================================================================#');
											primaria:='';
											gotoxy(37,15);
											repeat
												tecla:=readkey;
													if tecla<>ENTER then begin
														write('*');
														primaria:=primaria+tecla;
													end;  
											until tecla=ENTER;
									    root:=primaria;
											writeln;
									textbackground(black);
											if (root = 'rootbye') then begin
													clrscr;
													rewrite(f);
													gotoxy(35,10);
													writeln('CRIADA.');
													delay(1000);
													writeln;
															while resp<>'s' do begin
																clrscr;
														    textbackground(red);
																		gotoxy(6,6); 
																		writeln('#====================================================================#');
																		gotoxy(6,7);
																		writeln('|                                                                    |');
																		gotoxy(6,8);
																		writeln('|                                                                    |');
																		gotoxy(6,9);                                             
																		writeln('|                                                                    |');
																	  gotoxy(6,10);
																		writeln('|                                                                    |');
																		gotoxy(6,11);
																		writeln('|                                                                    |');
																		gotoxy(6,12);
																		writeln('#====================================================================#');
																gotoxy(10,8);
														    write('DIGITE NOVO USUARIO PARA CADASTRO: '); readln(a.nome);
														    gotoxy(10,9);
																write('DIGITE SENHA PARA USUARIO: '); readln (a.senha);
														    gotoxy(10,10);
																writeln('DESEJA SALVAR? (s/n): '); resp := readKey;
														    clrscr;
															  textbackground(black);
															end;
														  clrscr;
															write(f,a);
															gotoxy(10,11);
														  writeln('CADASTRO REALIZADO.');
												close(f);
												readkey;
											end
											else begin
													gotoxy(30,17);
													writeln('ERROR!!! PASSWORD ERROR');
													delay(3000);
													exit;
											end; 
								end;											
								
								assign(carro,'carro.txt');
							  reset(carro);
							  if (ioresult=0) then
							  begin
									textbackground(red);
									gotoxy(6,10);
									writeln('|                                                                    |');
									gotoxy(6,11);
									writeln('|                     TABELA CARROS ENCONTRADA.                      |');
									gotoxy(6,12);
									writeln('|                                                                    |');
							    delay(300);
								  textbackground(black);
								end
							  else begin
							  	clrscr;
							    cursoron;
																		gotoxy(6,6); 
																		writeln('#===================================================================#');
																		gotoxy(6,7);
																		writeln('|                   TABELA CARRO N�O ENCONTRADA.                    |');
																		gotoxy(6,8);
																		writeln('|                                                                   |');
																		gotoxy(6,9);                                             
																		writeln('|                        ARQUIVO FALTANDO                           |');
																	  gotoxy(6,10);
																		writeln('|                                                                   |');
																		gotoxy(6,11);
																		writeln('|  CASO SEJA A PRIMEIRA VEZ QUE IRA USAR O PROGRAMA, SE-FAZ NECES-  |');
																		gotoxy(6,12);
																		writeln('|  S�RIA � CRIA��O DE UM BANCO DE DADOS. SE USOU ESTE PROGRAMA RE-  |');
																		gotoxy(6,13);
																		writeln('|  CENTIMENTE E N�O FOI ENCONTRADO UM BANCO V�LIDO, SIGNIFICA QUE   |');
																		gotoxy(6,14);
																		writeln('|  ALGO ESTA ERRADO.                                                |');
																		gotoxy(6,15);
																		writeln('|  CONTACT O SUPORTE.                                               |');																																
																		gotoxy(6,16);                 
																		writeln('|  xxxxx-xxxxx-xxxx.                                                |');
																		gotoxy(6,17);                 
																		writeln('|                                                                   |');
																		gotoxy(6,18);                 
																		writeln('|  ATEN��O A CRIA��O DE UM NOVO BANCO ACARRETARA NA PERDA DE TODOS  |');
																		gotoxy(6,19);                 
																		writeln('|  OS DADOS JA EXISTENTES.                                          |');
																		gotoxy(6,20);                 
																		writeln('|                                                                   |');            
																		gotoxy(6,21);                 
																		writeln('|  DESEJA CRIAR BANCO? S/N                                          |');
																		gotoxy(6,22);                 
																		writeln('|                                                                   |');
																		gotoxy(6,23);                 
																		writeln('#===================================================================#');
							    gotoxy(33,21);
									readln(salvar);							    
							    if (salvar = 's') or (salvar = 'S') then
							    begin
							      assign(carro,'carro.txt');
							      rewrite(carro);
							      GetDate(ano,mes,dia,semana);
							      writeln(carro,'TABELA CRIADA EM: ',dia,'/',mes,'/',ano,'.');
							      close(carro);
							      writeln('TABELA CRIADA');
							      delay(1000);
							      writeln;
							      clrscr;
									  textcolor(10);
									end
							    else
							    begin
							      exit;
							    end;
							  end;
							  close(carro);
							  assign(aluguel,'aluguel.txt');
							  reset(aluguel);
							  if (ioresult=0) then
							  begin
							    textbackground(red);
									gotoxy(6,13);
									writeln('|                                                                    |');
									gotoxy(6,14);
									writeln('|                    TABELA ALUGUEL ENCONTRADA.                      |');
									gotoxy(6,15);
									writeln('|                                                                    |');
							    delay(300);
								  textbackground(black);
								end
							  else begin
							  	clrscr;
							  	cursoron;
							    									gotoxy(6,6); 
																		writeln('#===================================================================#');
																		gotoxy(6,7);
																		writeln('|                 TABELA ALUGUEL N�O ENCONTRADA.                    |');
																		gotoxy(6,8);
																		writeln('|                                                                   |');
																		gotoxy(6,9);                                             
																		writeln('|                        ARQUIVO FALTANDO                           |');
																	  gotoxy(6,10);
																		writeln('|                                                                   |');
																		gotoxy(6,11);
																		writeln('|  CASO SEJA A PRIMEIRA VEZ QUE IRA USAR O PROGRAMA, SE-FAZ NECES-  |');
																		gotoxy(6,12);
																		writeln('|  S�RIA � CRIA��O DE UM BANCO DE DADOS. SE USOU ESTE PROGRAMA RE-  |');
																		gotoxy(6,13);
																		writeln('|  CENTIMENTE E N�O FOI ENCONTRADO UM BANCO V�LIDO, SIGNIFICA QUE   |');
																		gotoxy(6,14);
																		writeln('|  ALGO ESTA ERRADO.                                                |');
																		gotoxy(6,15);
																		writeln('|  CONTACT O SUPORTE.                                               |');																																
																		gotoxy(6,16);                 
																		writeln('|  xxxxx-xxxxx-xxxx.                                                |');
																		gotoxy(6,17);                 
																		writeln('|                                                                   |');
																		gotoxy(6,18);                 
																		writeln('|  ATEN��O A CRIA��O DE UM NOVO BANCO ACARRETARA NA PERDA DE TODOS  |');
																		gotoxy(6,19);                 
																		writeln('|  OS DADOS JA EXISTENTES.                                          |');
																		gotoxy(6,20);                 
																		writeln('|                                                                   |');            
																		gotoxy(6,21);                 
																		writeln('|  DESEJA CRIAR BANCO? S/N                                          |');
																		gotoxy(6,22);                 
																		writeln('|                                                                   |');
																		gotoxy(6,23);                 
																		writeln('#===================================================================#');
							    gotoxy(33,21);
									readln(salvar);							    
							    if (salvar = 's') or (salvar = 'S') then
							    begin
							      assign(aluguel,'aluguel.txt');
							      rewrite(aluguel);
							      GetDate(ano,mes,dia,semana);
							      writeln(aluguel,'TABELA CRIADA EM: ',dia,'/',mes,'/',ano,'.');
							      close(aluguel);
							      writeln('TABELA CRIADA');
							      delay(1000);
							      writeln;
							      clrscr;
									  textcolor(10);
									end
							    else
							    begin
							      exit;
							    end;
							  end;
							  close(aluguel);
							  assign(cliente,'cliente.txt');
							  reset(cliente);
							  if (ioresult=0) then
							  begin
							    textbackground(red);
									gotoxy(6,16);
									writeln('|                                                                    |');
									gotoxy(6,17);
									writeln('|                    TABELA CLIENTE ENCONTRADA.                      |');
									gotoxy(6,18);
									writeln('|                                                                    |');
							    delay(300);
								  textbackground(black);
								end
							  else begin
							  	clrscr;
							  	cursoron;
							    									gotoxy(6,6); 
																		writeln('#===================================================================#');
																		gotoxy(6,7);
																		writeln('|                 TABELA CLIENTE N�O ENCONTRADA.                    |');
																		gotoxy(6,8);
																		writeln('|                                                                   |');
																		gotoxy(6,9);                                             
																		writeln('|                        ARQUIVO FALTANDO                           |');
																	  gotoxy(6,10);
																		writeln('|                                                                   |');
																		gotoxy(6,11);
																		writeln('|  CASO SEJA A PRIMEIRA VEZ QUE IRA USAR O PROGRAMA, SE-FAZ NECES-  |');
																		gotoxy(6,12);
																		writeln('|  S�RIA � CRIA��O DE UM BANCO DE DADOS. SE USOU ESTE PROGRAMA RE-  |');
																		gotoxy(6,13);
																		writeln('|  CENTIMENTE E N�O FOI ENCONTRADO UM BANCO V�LIDO, SIGNIFICA QUE   |');
																		gotoxy(6,14);
																		writeln('|  ALGO ESTA ERRADO.                                                |');
																		gotoxy(6,15);
																		writeln('|  CONTACT O SUPORTE.                                               |');																																
																		gotoxy(6,16);                 
																		writeln('|  xxxxx-xxxxx-xxxx.                                                |');
																		gotoxy(6,17);                 
																		writeln('|                                                                   |');
																		gotoxy(6,18);                 
																		writeln('|  ATEN��O A CRIA��O DE UM NOVO BANCO ACARRETARA NA PERDA DE TODOS  |');
																		gotoxy(6,19);                 
																		writeln('|  OS DADOS JA EXISTENTES.                                          |');
																		gotoxy(6,20);                 
																		writeln('|                                                                   |');            
																		gotoxy(6,21);                 
																		writeln('|  DESEJA CRIAR BANCO? S/N                                          |');
																		gotoxy(6,22);                 
																		writeln('|                                                                   |');
																		gotoxy(6,23);                 
																		writeln('#===================================================================#');
							    gotoxy(33,21);
									readln(salvar);							    
							    if (salvar = 's') or (salvar = 'S') then
							    begin
							      assign(cliente,'cliente.txt');
							      rewrite(cliente);
							      GetDate(ano,mes,dia,semana);
							      writeln(cliente,'TABELA CRIADA EM: ',dia,'/',mes,'/',ano,'.');
							      close(cliente);
							      writeln('TABELA CRIADA');
							      delay(1000);
							      writeln;
							      clrscr;
									  textcolor(10);
									end
							    else
							    begin
							      exit;
							    end;
							  end;
							  close(cliente);
							  assign(devolucao,'devolucao.txt');
							  reset(devolucao);
							  if (ioresult=0) then
							  begin
							    textbackground(red);
									gotoxy(6,19);
									writeln('|                                                                    |');
									gotoxy(6,20);
									writeln('|                   TABELA DEVOLU��O ENCONTRADA.                     |');
									gotoxy(6,21);
									writeln('|                                                                    |');
							    gotoxy(6,22); 
									writeln('#====================================================================#');
								  delay(300);
								  textbackground(black);
								end
							  else begin
							  	clrscr;
							  	cursoron;
																		gotoxy(6,6); 
																		writeln('#===================================================================#');
																		gotoxy(6,7);
																		writeln('|                TABELA DEVOLU��O N�O ENCONTRADA.                   |');
																		gotoxy(6,8);
																		writeln('|                                                                   |');
																		gotoxy(6,9);                                             
																		writeln('|                        ARQUIVO FALTANDO                           |');
																	  gotoxy(6,10);
																		writeln('|                                                                   |');
																		gotoxy(6,11);
																		writeln('|  CASO SEJA A PRIMEIRA VEZ QUE IRA USAR O PROGRAMA, SE-FAZ NECES-  |');
																		gotoxy(6,12);
																		writeln('|  S�RIA � CRIA��O DE UM BANCO DE DADOS. SE USOU ESTE PROGRAMA RE-  |');
																		gotoxy(6,13);
																		writeln('|  CENTIMENTE E N�O FOI ENCONTRADO UM BANCO V�LIDO, SIGNIFICA QUE   |');
																		gotoxy(6,14);
																		writeln('|  ALGO ESTA ERRADO.                                                |');
																		gotoxy(6,15);
																		writeln('|  CONTACT O SUPORTE.                                               |');																																
																		gotoxy(6,16);                 
																		writeln('|  xxxxx-xxxxx-xxxx.                                                |');
																		gotoxy(6,17);                 
																		writeln('|                                                                   |');
																		gotoxy(6,18);                 
																		writeln('|  ATEN��O A CRIA��O DE UM NOVO BANCO ACARRETARA NA PERDA DE TODOS  |');
																		gotoxy(6,19);                 
																		writeln('|  OS DADOS JA EXISTENTES.                                          |');
																		gotoxy(6,20);                 
																		writeln('|                                                                   |');            
																		gotoxy(6,21);                 
																		writeln('|  DESEJA CRIAR BANCO? S/N                                          |');
																		gotoxy(6,22);                 
																		writeln('|                                                                   |');
																		gotoxy(6,23);                 
																		writeln('#===================================================================#');
							    gotoxy(33,21);
									readln(salvar);							    
							    if (salvar = 's') or (salvar = 'S') then
							    begin
							      assign(devolucao,'devolucao.txt');
							      rewrite(devolucao);
							      GetDate(ano,mes,dia,semana);
							      writeln(devolucao,'TABELA CRIADA EM: ',dia,'/',mes,'/',ano,'.');
							      close(devolucao);
							      gotoxy(8,22);
										writeln('TABELA CRIADA');
							      delay(1000);
							      writeln;
							      clrscr;
									  textcolor(10);
									end
							    else
							    begin
							      exit;
							    end;
							  end;
							  close(devolucao);
							  gotoxy(25,25);
								writeln('OK!!! TECLE ENTER PARA COME�AR');
							  readkey;
							  assign(f,'Logon.dat');
				repeat
					textbackground(black);
					clrscr;
					cursoroff;
					textbackground(red);  
					gotoxy(6,5); 
					writeln('#====================================================================#');
					gotoxy(6,6);
					writeln('|                                                                    |');
					gotoxy(6,7);
					writeln('|  ��                                          ������                |');
					gotoxy(6,8);
					writeln('|  ��      �����   ����  �����  �     �  �����   ��    �����  �����  |');
					gotoxy(6,9);
					writeln('|  ��     ��   �� ��    ��   �� ��� ��� ��   ��  ��   ��   �� ��  �  |');
					gotoxy(6,10);
					writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �����  |');
					gotoxy(6,11);
					writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �� �   |');
					gotoxy(6,12);
					writeln('|  ������  �����   ����  �����  ��   ��  �����   ��    �����  ��  �  |');
					gotoxy(6,13);
					writeln('|                                                                    |');
					gotoxy(6,14);
					writeln('|                                                       vers�o 2.6.0 |');
					gotoxy(6,15);
					writeln('#====================================================================#');
					gotoxy(6,16);
					writeln('|                                                                    |');
					gotoxy(6,17);
					writeln('|                                                                    |');
					gotoxy(6,18);
					writeln('|                  USUARIO:                                          |');
					gotoxy(6,19);
					writeln('|                                                                    |');
					gotoxy(6,20);
					writeln('|                  SENHA:                                            |');
					gotoxy(6,21);
					writeln('|                                                                    |');
					gotoxy(6,22);
					writeln('|                                                                    |');
					gotoxy(6,23);
					writeln('#====================================================================#');  
					cursoron;	
					gotoxy(33,18);
							primaria:='';
							repeat
								tecla:=readkey;
									if tecla<>ENTER then begin
										write(tecla);
										primaria:=primaria+tecla;
									end;  
							until tecla=ENTER;
					    pesquisa:=primaria;
								achou := false;
								reset(f);
								while not eof(f) and not achou do begin
			    						read(f,a);
								     			if pesquisa=a.nome then begin
										 				achou := true;
														resp:='n';
														c:=0;	 
															 repeat
																 	begin
																		textbackground(black);
																		clrscr;
																		cursoroff;
																		textbackground(red);  
																		gotoxy(6,5); 
																		writeln('#====================================================================#');
																		gotoxy(6,6);
																		writeln('|                                                                    |');
																		gotoxy(6,7);
																		writeln('|  ��                                          ������                |');
																		gotoxy(6,8);
																		writeln('|  ��      �����   ����  �����  �     �  �����   ��    �����  �����  |');
																		gotoxy(6,9);
																		writeln('|  ��     ��   �� ��    ��   �� ��� ��� ��   ��  ��   ��   �� ��  �  |');
																		gotoxy(6,10);
																		writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �����  |');
																		gotoxy(6,11);
																		writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �� �   |');
																		gotoxy(6,12);
																		writeln('|  ������  �����   ����  �����  ��   ��  �����   ��    �����  ��  �  |');
																		gotoxy(6,13);
																		writeln('|                                                                    |');
																		gotoxy(6,14);
																		writeln('|                                                       vers�o 2.6.0 |');
																		gotoxy(6,15);
																		writeln('#====================================================================#');
																		gotoxy(6,16);
																		writeln('|                                                                    |');
																		gotoxy(6,17);
																		writeln('|                                                                    |');
																		gotoxy(6,18);
																		writeln('|                  USUARIO:                                          |');
																		gotoxy(6,19);
																		writeln('|                                                                    |');
																		gotoxy(6,20);
																		writeln('|                  SENHA:                                            |');
																		gotoxy(6,21);
																		writeln('|                                                                    |');
																		gotoxy(6,22);
																		writeln('|                                                                    |');
																		gotoxy(6,23);
																		writeln('#====================================================================#');
																		gotoxy(33,18);
																		writeln(pesquisa);
																		cursoron;
																		gotoxy(31,20);
																		primaria:='';
																		repeat
																			tecla:=readkey;
																				if tecla<>ENTER then begin
																					write('*');
																					primaria:=primaria+tecla;
																				end;
																		    if tecla=ENTER then begin
																				write('');
																				end; 
																		until tecla=ENTER;	
																		
																 		chave:=primaria;
																		clrscr;
																		c:=c+1;
																		if c = 4 then begin
																			textbackground(black);
																			cursoroff;
																			clrscr;
																			textbackground(red);
																			gotoxy(6,5); 
																			writeln('#====================================================================#');
																			gotoxy(6,6);
																			writeln('|                                                                    |');
																			gotoxy(6,7);
																			writeln('|  ��                                          ������                |');
																			gotoxy(6,8);
																			writeln('|  ��      �����   ����  �����  �     �  �����   ��    �����  �����  |');
																			gotoxy(6,9);
																			writeln('|  ��     ��   �� ��    ��   �� ��� ��� ��   ��  ��   ��   �� ��  �  |');
																			gotoxy(6,10);
																			writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �����  |');
																			gotoxy(6,11);
																			writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �� �   |');
																			gotoxy(6,12);
																			writeln('|  ������  �����   ����  �����  ��   ��  �����   ��    �����  ��  �  |');
																			gotoxy(6,13);
																			writeln('|                                                                    |');
																			gotoxy(6,14);
																			writeln('|                                                       vers�o 2.6.0 |');
																			gotoxy(6,15);
																			writeln('#====================================================================#');
																			gotoxy(6,16);
																			writeln('|                                                                    |');
																			gotoxy(6,17);
																			writeln('|                                                                    |');
																			gotoxy(6,18);
																			writeln('|                                                                    |');
																			gotoxy(6,19);
																			writeln('|                      TENTATIVAS ESGOTADAS!!!                       |');
																			gotoxy(6,20);
																			writeln('|                                                                    |');
																			gotoxy(6,21);
																			writeln('|                                                                    |');
																			gotoxy(6,22);
																			writeln('|                                                                    |');
																			gotoxy(6,23);
																			writeln('#====================================================================#');
																		  delay(2000);
																			exit;
																		end;
																		if a.senha=chave then begin
																			textbackground(black);
																			clrscr;
																			repeat;
																						    assign(carro,'carro.txt');
																						    assign(aluguel,'aluguel.txt');
																						    assign(cliente,'cliente.txt');
																						    assign(devolucao,'devolucao.txt');
																						    
																						    salvar:='';
																						    
																								// SOLICITA��O PARA USO
																						    repeat;
																								      begin
																								      	textcolor(10);
																								        clrscr;
																								        
																											        writeln;
																											        writeln;
																											        writeln('O QUE DESEJA FAZER.');
																											        writeln;
																											        writeln('1 - CADASTRO DE VEICULO.');
																											        writeln('2 - CADASTRO DE CLIENTE.');
																											        writeln('3 - CADASTRO DE ALUGUEL.');
																											        writeln('4 - CADASTRO DE DEVOLU��O.');
																											        writeln('5 - RELAT�RIOS.');
																											        writeln('6 - CONSULTAS.');
																											        writeln('7 - CRIAR USUARIO.');
																											        writeln('8 - SAIR.');
																											        writeln;
																											        writeln;
																											        write('OP��O ESCOLHODA FOI: ');
																											        readln(op);
																								      end;
																						    until op < 9;
																						    
																								// APOS DIGITADO VALOR ABAIXO DE 7, ARMAZENA A VARIAVEL E CONTINUA
																						    
																								clrscr;
																						    if op = 1 then
																						    
																								// CADASTRO DO VEICULO
																									    begin
																												      repeat;
																														        write('FABRICANTE: ');
																														        readln (fab);
																														        write('MODELO: ');
																														        readln (modelo);
																														        write('COR: ');
																														        readln(cor);
																														        write('PLACA DO VEICULO: ');
																														        readln (plac);
																														        write('CHASSI DO VEICULO: ',upcase(plac),': ');
																														        readln (chas);
																														        write('MOTORIZA��O DO VEICULO: ',upcase(plac),': ');
																														        readln(mot);
																														        write('QUANTIDADE DE PORTAS DO VEICULO: ',upcase(plac),': ');
																														        readln(port);
																														        write('N� DE PASSAGEIROS DO VEICULO: ',upcase(plac),': ');
																														        readln(pass);
																														                
																																						//OP��O DE SALVAMENTO
																														              write('DESEJA SALVAR O REGISTRO? (y ou n): ');
																														              read(salvar);
																																            if salvar = 'y' then
																																                begin
																																			                append(carro);
																																			                			writeln(carro,plac);
																																						                writeln(carro,'FABRICACAO: ',fab);
																																						                writeln(carro,'MODELO: ',modelo);
																																						                writeln(carro,'COR PREDOM.:  ',cor);
																																						                writeln(carro,'CHASSI: ',chas);
																																						                writeln(carro,'CLASSIF. DO MOTOR: ',mot);
																																						                writeln(carro,'QUT DE PORTA: ',port);
																																						                writeln(carro,'N� PASSAG.: ',pass);
																																						                writeln(carro,'____________________________');
																																			                close(carro);
																																              	end
																															              else
																																	              begin
																																	                	clrscr;
																																	              end;
																									            until salvar='y';
																						          end;
																						          
																						    if op = 2 then
																						          
																								// CADASTRO DE NOVO CLIENTE
																						          begin
																								            repeat
																																				              repeat
																																					                repeat
																																							                  write('C.P.F. (S� DIGITOS): ');
																																							                  ReadLn(id);
																																							                  tam:=length(id);// delimita o tamanho da variavel em integer, transforma a string em valor numerico, tirando da variavel,
																																							                  //colocando em outra, no caso � a num1, se nao for possivel mostra em que caracter existe o erro na variavel erro
																																							                  val(id,num1,erro);
																																									                  if erro<>0 then
																																											                  begin
																																											                    		writeln('C.P.F. DEVE CONTER 11 DIGITOS. CARACTERE ERRADO NA POSI��O: ',erro);
																																											                  end;
																																					                until tam=11; //repete at� o tamanho desejado
																																				              until erro=0; //repete ate que nao exista erro, ou seja, nao seja introduzido nenhum caracter alfab�tico
																																				              repeat
																																					                write('RG: ');
																																					                ReadLn(rg);
																																					                val(rg,num1,erro);
																																								                if erro<>0 then
																																										                begin
																																										                  	writeln('CARACTERE ERRADO NA POSI��O: ',erro);
																																										                end;
																																				              until erro=0;
																																				              clrscr;
																																				              writeln('C.P.F.: ',id);
																																				              writeln('RG: ',rg);
																																				              write('NOME: ');
																																				              readln (nome);
																																				              write('DATA DE NASCIMENTO: ');
																																				              readln(data_nas);
																																				              write('SEXO: ');
																																				              readln(sexo);
																																				              write('NOME DO PAI: ');
																																				              readln(nome_pai);
																																				              write('NOME DA MAE: ');
																																				              readln(nome_mae);
																																				              write('TELEFONE DE CONTATO COM DDD: ');
																																				              readln(tel);
																																				              write('E-MAIL: ');
																																				              readln(email);
																																				              writeln;
																																				            
																																										// CADASTRO DE ENDERE�O
																																				          writeln('ENDERE�O COMPLETO - AV, RUA OU TRAVESSA:');
																																				          readln(rua);
																																				          write('N�: ');
																																				          readln (n_casa);
																																				          write('COMPLEMENTO: ');
																																				          readln (comp_casa);
																																				          write('BAIRRO: ');
																																				          readln(bairro);
																																				          write('CIDADE: ');
																																				          readln(cid);
																																				          write('ESTADO UF: ');
																																				          readln(uf);
																																				          write('CEP: ');
																																				          readln(cep);
																																				          
																																									//OP��O DE SALVAMENTO
																																				          write('DESEJA SALVAR O REGISTRO? (y ou n): ');
																																				          readln(salvar);
																																							          if salvar = 'y' then
																																												    begin
																																												        append(cliente);
																																												          writeln(cliente,id);
																																												          writeln(cliente,'NOME: ',nome);
																																												          writeln(cliente,'RG:  ',rg);
																																												          writeln(cliente,'DATA NAS.: ',data_nas);
																																												          writeln(cliente,'SEXO: ',sexo);
																																												          writeln(cliente,'NOME DO PAI: ',nome_pai);
																																												          writeln(cliente,'NOME DA MAE: ',nome_mae);
																																												          writeln(cliente,'TEL. COM DDD: ',tel);
																																												          writeln(cliente,'E-MAIL: ',email);
																																												        	writeln(cliente,'- ENDERECO DO MESMO -');
																																												        	writeln(cliente,'CEP: ',cep);
																																												      		writeln(cliente,'ENDERECO: ',rua);
																																												      		writeln(cliente,'N�: ',n_casa,' - COMPLEMENTO: ',comp_casa);
																																												      		writeln(cliente,'BAIRRO: ',bairro);
																																												      		writeln(cliente,'CIDADE: ',cid,' - UF: ',uf);
																																												      		writeln(cliente,'____________________________');
																																												      	close(cliente);
																																												    end
																																												    else
																																														    begin
																																														      		clrscr;
																																														    end;
																										  			until salvar='y';
																											end;
																						
																						if op = 3 then
																						
																						// CADASTRO DO ALUGUEL
																												begin
																															repeat
																																		   GetTime(hora,minuto,segundo, mile_segundo);
																																		   GetDate(ano,mes,dia,semana);
																																					    write('DIA DO ALUGUEL: ');
																																								    if semana = 1 then
																																										    begin
																																										      writeln(dia,'/',mes,'/',ano,' - Segunda-Feira');
																																										    end;
																																								    if semana = 2 then
																																										    begin
																																										      writeln(dia,'/',mes,'/',ano,' - Ter�a-Feira');
																																										    end;
																																								    if semana = 3 then
																																										    begin
																																										      writeln(dia,'/',mes,'/',ano,' - Quarta-Feira');
																																										    end;
																																								    if semana = 4 then
																																										    begin
																																										      writeln(dia,'/',mes,'/',ano,' - Quinta-Feira');
																																										    end;
																																								    if semana = 5 then
																																										    begin
																																										      writeln(dia,'/',mes,'/',ano,' - Sexta-Feira');
																																										    end;
																																								    if semana = 6 then
																																										    begin
																																										      writeln(dia,'/',mes,'/',ano,' - S�bado');
																																										    end;
																																								    if semana = 0 then
																																										    begin
																																										      writeln(dia,'/',mes,'/',ano,' - Domingo');
																																										    end;
																																					    write('HORA: ');
																																					    writeln(hora,':',minuto);
																																					    writeln;
																																					    write('NOME DO LOCAT�RIO: ');
																																					    readln(nome);
																																								    repeat
																																								      write('C.N.H: ');
																																								      ReadLn(cnh);
																																								      val(cnh,num1,erro);
																																										      if erro<>0 then
																																												      begin
																																												        	writeln('CARACTERE ERRADO NA POSI��O: ',erro);
																																												      end;
																																								    until erro=0;
																																					    clrscr;
																																					    writeln('DIA DO ALUGUEL: ',dia,'/',mes,'/',ano);
																																							writeln('HORA: ',hora,':',minuto);
																																							writeln;
																																					    writeln('NOME DO LOCAT�RIO: ',nome);
																																					    writeln('C.N.H: ',cnh);
																																								    repeat
																																										      repeat
																																											        write('C.P.F. (S� DIGITOS): ');
																																											        ReadLn(id);
																																											        tam:=length(id);
																																											        val(id,num1,erro);
																																													        if erro<>0 then
																																															        begin
																																															          	writeln('C.P.F. DEVE CONTER 11 DIGITOS. CARACTERE ERRADO NA POSI��O: ',erro);
																																															        end;
																																										      until tam=11;
																																								    until erro=0;
																																					    clrscr;
																																					    writeln('DIA DO ALUGUEL: ',dia,'/',mes,'/',ano,', HORA: ',hora,':',minuto);
																																					    writeln('NOME DO SOLICITANTE: ',nome);
																																					    writeln('C.N.H: ',cnh);
																																					    writeln('C.P.F.: ',id);
																																					    writeln;
																																					    writeln;
																																					    
																																					    //PUXA TABELA DE CARRO CADASTRADO
																																					    reset(carro);
																																							    while not eof (carro) do
																																									    begin
																																									      	readln(carro,modelo);
																																									      	writeln(modelo);
																																									    end;
																																					    close(carro);
																																					    
																																					    writeln;
																																					    writeln;
																																					    write('PLACA: ');
																																					    readln(plac);
																																					    write('MODELO DO CARRO SOLICITADO: ');
																																					    readln(modelo);
																																					    write('MOTORIZA��O DO CARRO: ');
																																					    readln(mot);
																																					    write('KILOMETRAGEM ATUAL DO CARRO: ');
																																					    readln(km);
																																					    prev:=0;
																																					    write('DIAS SOLICITADO: ');
																																					    readln(dia_aluguel);
																																					    write('PREVIS�O DE ENTREGA: ');
																																					    prev:=dia+dia_aluguel;
																																					    
																																							    if prev < 30 then
																																									    begin
																																									      		writeln(prev,'/',mes,'/',ano,'.');
																																									    end;
																																							    
																																							    if prev > 30 then
																																									    begin
																																											      mes:=mes+1;
																																											      prev:=prev-30;
																																													  if mes > 12 then
																																														    begin
																																														        //prev:=prev-30;
																																														        mes:=mes-12;
																																														        ano:=ano+1;
																																														        writeln(prev,'/',mes,'/',ano,'.');
																																														    end
																																													      
																																													  else
																																														    begin
																																														       	writeln(prev,'/',mes,'/',ano,'.');
																																														    end;
																																									    end;
																																					    
																																					    //OP��O DE SALVAMENTO
																																					    write('DESEJA SALVAR O REGISTRO? (y ou n): ');
																																					    readln(salvar);
																																							  if salvar = 'y' then
																																							    begin
																																									    append(aluguel);
																																											    writeln(aluguel,plac);
																																													writeln(aluguel,id);
																																													writeln(aluguel,'NOME DO SOLICITANTE: ',nome);
																																											    writeln(aluguel,'C.N.H.: ',cnh);
																																											    writeln(aluguel,'MODELO DO CARRO SOLIC.: ',modelo);
																																											    writeln(aluguel,'MOTOR: ',mot);
																																											    writeln(aluguel,'KILOMETRAGEM ATUAL: ',km);
																																											    writeln(aluguel,'DIAS SOLICITADO: ',dia_aluguel);
																																											    writeln(aluguel,'DIA DO ALUGUEL: ',dia,'/',mes,'/',ano);
																																											    writeln(aluguel,'HORA DO ALUGUEL: ',hora,':',minuto);
																																													writeln(aluguel,'PREVISAO DE ENTREGA: ',prev,'/', mes,'/',ano);
																																											    writeln(aluguel,'____________________________');
																																											    writeln('');
																																									    close(aluguel);
																																							  	end
																																							  else
																																								  begin
																																								    	clrscr;
																																								  end;
																															until salvar='y';
																												end;
																						if op = 4 then
																						
																							//DEVOLU��O
																								begin
																									 repeat;
																																					    write('NOME DO SOLICITANTE: ');
																																					    readln(nome);
																																					    write('C.N.H: ');
																																					    readln(cnh);
																																					    write('PLACA: ');
																																					    readln(plac);
																																							write('MODELO DO CARRO: ');
																																					    readln(modelo);
																																					    write('MOTORIZA��O DO CARRO: ');
																																					    readln(mot);
																																					    write('KILOMETRAGEM ANTIGA DO CARRO: ');
																																					    readln(km);
																																					    write('KILOMETRAGEM ATUAL DO CARRO: ');
																																					    readln(km_devolvido);
																																					    gasto:=km_devolvido-km;
																																					    writeln('SAIU COM ',km,' KMs E RETORNOU COM ',km_devolvido,' KMs.');
																																					    writeln('RODOU ',gasto,' KMs.');
																																					    write('O VEICULO ESTA COM GAS. COMPLETA? (y ou n): ');
																																					    readln(gasol);
																																					    write('DIA DO ALUGUEL (S� O DIA): ');
																																					    readln(dia_aluguel);
																																					    write('M�S DO ALUGUEL (S� O M�S): ');
																																					    readln(mes_aluguel);
																																					    write('ANO DO ALUGUEL: (S� O ANO): ');
																																					    readln(ano_aluguel);
																																					    clrscr;
																																					    
																																					    repeat
																																									    // SELE��O DE PAGAMENTO
																																									    writeln('FORMA DE PAGAMENTO.');
																																									    writeln('1 - CART�O DE CREDITO (+4.5%).');
																																									    writeln('2 - DEBITO (+2.5%).');
																																									    writeln('3 - A VISTA (-5%).');
																																											
																																											readln(op);
																																									    GetDate(ano,mes,dia,semana);
																																													if op = 1 then begin
																																																		      //CART�O DE CREDITO (+4.5%)
																																																		      //buscando difere�a de dias
																																																		      ano_dif:=(abs(ano-ano_aluguel))*365;
																																																		      mes_dif:=(abs(mes-mes_aluguel))*30;
																																																		      dia_dif:=(abs(dia-dia_aluguel));
																																																		      dev:=(ano_dif+mes_dif+dia_dif);// numero de dias de aluguel
																																																		      
																																																		      
																																																		      kmpor_dia:=gasto/dev;//busca media de km rodados por dia
																																																		      
																																																		      if kmpor_dia > 150 then
																																																					      begin
																																																					        passo_pordia:=(kmpor_dia-150)*dev;//busca a diferenca de kilometragem rodada a mais por dia
																																																					        if mot = '1.0' then
																																																							        begin
																																																							          total:=(dev*65.01)+(passo_pordia*2.5);
																																																							        end;
																																																					        if mot = '1.4' then
																																																							        begin
																																																							          total:=(dev*74.57)+(passo_pordia*2.5);
																																																							        end;
																																																					        if mot = '1.8' then
																																																							        begin
																																																							          total:=(dev*120.00)+(passo_pordia*2.5);
																																																							        end;
																																																					        if mot = '2.0' then
																																																							        begin
																																																							          total:=(dev*150.00)+(passo_pordia*2.5);
																																																							        end;
																																																					      end
																																																		      //sem acrescimo de km ao dia
																																																		      else
																																																					      begin
																																																					        if mot = '1.0' then
																																																							        begin
																																																							          total:=(dev*65.01);
																																																							        end;
																																																					        if mot = '1.4' then
																																																							        begin
																																																							          total:=(dev*74.57);
																																																							        end;
																																																					        if mot = '1.8' then
																																																							        begin
																																																							          total:=(dev*120.00);
																																																							        end;
																																																					        if mot = '2.0' then
																																																							        begin
																																																							          total:=(dev*150.00);
																																																							        end;
																																																					      end;
																																																		      
																																																		      if gasol<>'y' then
																																																		      begin
																																																		        total:=(total+240.00)
																																																		      end;
																																																		      
																																																		      total_geral:=(total*0.045)+total;
																																																		      writeln('UTILIZOU O CARRO POR: ',dev,' DIAS.');
																																																		      writeln ('TOTAL A PAGAR � DE: R$ ',total_geral:10:2);
																																																		      //OP��O DE SALVAMENTO
																																																		      write('DESEJA SALVAR O REGISTRO? (y ou n): ');
																																																		      read(salvar);
																																																		      		if salvar = 'y' then
																																																		      				begin
																																																									      append(devolucao);
																																																									      		writeln(devolucao,plac);
																																																														writeln(devolucao,'FORMA DE PAG.: CARTAO DE CREDITO.');
																																																									      		writeln(devolucao,'NOME: ',nome);
																																																									      		writeln(devolucao,'C.N.H.: ',cnh);
																																																														writeln(devolucao,'MODELO: ',modelo);
																																																									      		writeln(devolucao,'MOTOR: ',mot);
																																																									      		writeln(devolucao,'KILOMET. INICIAL: ',km);
																																																									      		writeln(devolucao,'KILOMET. ATUAL: ',km_devolvido);
																																																									      		writeln(devolucao,'TAMQUE COMPLETO: ',gasol);
																																																									      		writeln(devolucao,'DATA DO ALUGUEL: ',dia_aluguel,'/',mes_aluguel,'/',ano_aluguel);
																																																									      		writeln(devolucao,'DATA DA ENTREGA: ',dia,'/',mes,'/',ano);
																																																									      		writeln(devolucao,'TOTAL PAGO FOI DE: RS ',total_geral:10:2);
																																																									      		writeln(devolucao,'____________________________');
																																																									      close(devolucao);
																																																									      
																																																									      
																																																												writeln('NOME: ',nome);
																																																									      writeln('PLACA: ',plac);
																																																												writeln('MODELO: ',modelo);
																																																									      writeln('MOTOR: ',mot);
																																																									      writeln('KILOMETRAGEM INICIAL: ',km);
																																																									      writeln('KILOMETRAGEM ATUAL: ',km_devolvido);
																																																									      writeln('TAMQUE COMPLETO: ',gasol);
																																																									      writeln('DATA DO ALUGUEL: ',dia_aluguel,'/',mes_aluguel,'/',ano_aluguel);
																																																									      writeln('DATA DA ENTREGA: ',dia,'/',mes,'/',ano);
																																																									      writeln('TOTAL PAGO FOI DE: R$ ',total_geral:10:2);
																																																										readkey;
																																																		    					end;
																																													end;
																																									 				if op = 2 then begin
																																																		    //DEBITO (+2.5%)
																																																		    //buscando difere�a de dias
																																																		    ano_dif:=((abs(ano-ano_aluguel))*365);
																																																		    mes_dif:=((abs(mes-mes_aluguel))*30);
																																																		    dia_dif:=(abs(dia-dia_aluguel));
																																																		    dev:=(ano_dif+mes_dif+dia_dif);// numero de dias de aluguel
																																																		    
																																																		    
																																																		    kmpor_dia:=gasto/dev;//busca media de km rodados por dia
																																																		    
																																																		    if kmpor_dia > 150 then
																																																		    		begin
																																																		      		passo_pordia:=(kmpor_dia-150)*dev;//busca a diferenca de kilometragem rodada a mais por dia
																																																						     if mot = '1.0' then
																																																								     begin
																																																								       total:=(dev*65.01)+(passo_pordia*2.5);
																																																								     end;
																																																						     if mot = '1.4' then
																																																								     begin
																																																								       total:=(dev*74.57)+(passo_pordia*2.5);
																																																								     end;
																																																						     if mot = '1.8' then
																																																								     begin
																																																								       total:=(dev*120.00)+(passo_pordia*2.5);
																																																								     end;
																																																						     if mot = '2.0' then
																																																								     begin
																																																								       total:=(dev*150.00)+(passo_pordia*2.5);
																																																								     end;
																																																		    		end
																																																		    //sem acrescimo de km ao dia
																																																		    else
																																																				    begin
																																																					      if mot = '1.0' then
																																																							      begin
																																																							        total:=(dev*65.01);
																																																							      end;
																																																					      if mot = '1.4' then
																																																							      begin
																																																							        total:=(dev*74.57);
																																																							      end;
																																																					      if mot = '1.8' then
																																																							      begin
																																																							        total:=(dev*120.00);
																																																							      end;
																																																					      if mot = '2.0' then
																																																							      begin
																																																							        total:=(dev*150.00);
																																																							      end;
																																																				    end;
																																																		    
																																																		    if gasol<>'y' then
																																																		    begin
																																																		      total:=(total+240.00)
																																																		    end;
																																																		    
																																																		    total_geral:=(total*0.025)+total;
																																																		    writeln('UTILIZOU O CARRO POR: ',dev,' DIAS.');
																																																		    writeln ('TOTAL A PAGAR � DE: R$ ',total_geral:10:2);
																																																		    //OP��O DE SALVAMENTO
																																																		    write('DESEJA SALVAR O REGISTRO? (y ou n): ');
																																																		    read(salvar);
																																																		    
																																																		    if salvar = 'y' then
																																																				    begin
																																																						    append(devolucao);
																																																								    writeln(devolucao,plac);
																																																										writeln(devolucao,'FORMA DE PAG.: DEBITO.');
																																																								    writeln(devolucao,'NOME: ',nome);
																																																								    writeln(devolucao,'C.N.H.: ',cnh);
																																																								    writeln(devolucao,'MODELO: ',modelo);
																																																								    writeln(devolucao,'MOTOR: ',mot);
																																																								    writeln(devolucao,'KILOMET. INICIAL: ',km);
																																																								    writeln(devolucao,'KILOMET. ATUAL: ',km_devolvido);
																																																								    writeln(devolucao,'TAMQUE COMPLETO: ',gasol);
																																																								    writeln(devolucao,'DATA DO ALUGUEL: ',dia_aluguel,'/',mes_aluguel,'/',ano_aluguel);
																																																								    writeln(devolucao,'DATA DA ENTREGA: ',dia,'/',mes,'/',ano);
																																																								    writeln(devolucao,'TOTAL PAGO FOI DE: R$ ',total_geral:10:2);
																																																								    writeln(devolucao,'____________________________');
																																																						    close(devolucao);
																																																				  	end;
																																																				  
																																																					  writeln('NOME: ',nome);
																																																					  writeln('PLACA: ',plac);
																																																						writeln('MODELO: ',modelo);
																																																					  writeln('MOTOR: ',mot);
																																																					  writeln('KILOMET. INICIAL: ',km);
																																																					  writeln('KILOMET. ATUAL: ',km_devolvido);
																																																					  writeln('TAMQUE COMPLETO: ',gasol);
																																																					  writeln('DATA DO ALUGUEL: ',dia_aluguel,'/',mes_aluguel,'/',ano_aluguel);
																																																					  writeln('DATA DA ENTREGA: ',dia,'/',mes,'/',ano);
																																																					  writeln('TOTAL PAGO FOI DE: R$ ',total_geral:10:2);
																																																			  readkey;
																																													end;
																																																		
																																													if op = 3 then begin
																																																		  //A VISTA (-5%)
																																																		  //buscando difere�a de dias
																																																		  ano_dif:=((abs(ano-ano_aluguel))*365);
																																																		  mes_dif:=((abs(mes-mes_aluguel))*30);
																																																		  dia_dif:=(abs(dia-dia_aluguel));
																																																		  dev:=(ano_dif+mes_dif+dia_dif);// numero de dias de aluguel
																																																		  kmpor_dia:=gasto/dev;//busca media de km rodados por dia
																																																		  
																																																			if kmpor_dia > 150 then begin
																																																				 passo_pordia:=(kmpor_dia-150)*dev;//busca a diferenca de kilometragem rodada a mais por dia
																																																				    if mot = '1.0' then begin
																																																						      	total:=(dev*65.01)+(passo_pordia*2.5);
																																																						end;
																																																				    if mot = '1.4' then begin
																																																						      	total:=(dev*74.57)+(passo_pordia*2.5);
																																																						end;
																																																				    if mot = '1.8' then begin
																																																						      	total:=(dev*120.00)+(passo_pordia*2.5);
																																																						end;
																																																				    if mot = '2.0' then begin
																																																						      	total:=(dev*150.00)+(passo_pordia*2.5);
																																																						end;
																																																		  end
																																																		  //sem acrescimo de km ao dia
																																																		else begin
																																																					if mot = '1.0' then begin
																																																					      total:=(dev*65.01);
																																																					end;
																																																					if mot = '1.4' then begin
																																																					      total:=(dev*74.57);
																																																					end;
																																																					if mot = '1.8' then begin
																																																					      total:=(dev*120.00);
																																																					end;
																																																					if mot = '2.0' then begin
																																																					      total:=(dev*150.00);
																																																					end;
																																																		end;
																																																					  
																																																		if gasol<>'y' then begin
																																																		    	total:=(total+240.00);
																																																		end;
																																																		
																																																		total_geral:=total-(total*0.05);
																																																		writeln('UTILIZOU O CARRO POR: ',dev,' DIAS.');
																																																		writeln ('TOTAL A PAGAR � DE: R$ ',total_geral:10:2);
																																																		  //OP��O DE SALVAMENTO
																																																		  
																																																		write('DESEJA SALVAR O REGISTRO? (y ou n): ');
																																																		read(salvar);
																																																		if salvar = 'y' then
																																																				begin
																																																				  append(devolucao);
																																																						  writeln(devolucao,plac);
																																																							writeln(devolucao,'FORMA DE PAG.: DINHEIRO.');
																																																						  writeln(devolucao,'NOME: ',nome);
																																																						  writeln(devolucao,'C.N.H.: ',cnh);
																																																						  writeln(devolucao,'MODELO: ',modelo);
																																																						  writeln(devolucao,'MOTOR: ',mot);
																																																						  writeln(devolucao,'KILOMET. INICIAL: ',km);
																																																						  writeln(devolucao,'KILOMET. ATUAL: ',km_devolvido);
																																																						  writeln(devolucao,'TAMQUE COMPLETO: ',gasol);
																																																						  writeln(devolucao,'DATA DO ALUGUEL: ',dia_aluguel,'/',mes_aluguel,'/',ano_aluguel);
																																																						  writeln(devolucao,'DATA DA ENTREGA: ',dia,'/',mes,'/',ano);
																																																						  writeln(devolucao,'TOTAL PAGO FOI DE: RS ',total_geral:10:2);
																																																						  writeln(devolucao,'____________________________');
																																																				  close(devolucao);
																																																				end;
																																																				
																																																				writeln('NOME: ',nome);
																																																				writeln('PLACA: ',plac);
																																																				writeln('MODELO: ',modelo);
																																																				writeln('MOTOR: ',mot);
																																																				writeln('KILOMETRAGEM INICIAL: ',km);
																																																				writeln('KILOMETRAGEM ATUAL: ',km_devolvido);
																																																				writeln('TAMQUE COMPLETO: ',gasol);
																																																				writeln('DATA DO ALUGUEL: ',dia_aluguel,'/',mes_aluguel,'/',ano_aluguel);
																																																				writeln('DATA DA ENTREGA: ',dia,'/',mes,'/',ano);
																																																				writeln('TOTAL PAGO FOI DE: R$ ',total_geral:10:2);
																																					
																																													end;
																																		
																																												  if (op = 1) or (op = 2) or (op = 3) then begin
																																												      c:=0;
																																												      c:=1;
																																												  end
																																													else begin
																																																writeln('ESCOLHA A FORMA DE PAGAMENTO');
																																													end;
																																			
																																			until c=1;		
																																		readkey;
																																until salvar ='y';
																														end;
																														if op = 5 then begin
																																repeat
																																      begin
																																        clrscr;
																																			        writeln;
																																			        writeln;
																																			        writeln('RELAT�RIOS.');
																																			        writeln;
																																			        writeln('1 LISTA DE VEICULO.');
																																			        writeln('2 LISTA DE CLIENTE.');
																																			        writeln('3 LISTA DE ALUGUEL.');
																																			        writeln('4 LISTA DE DEVOLU��O.');
																																			        writeln;
																																			        writeln;
																																			        write('OP��O ESCOLHODA FOI: ');
																																			        readln(op);
																																      end;
																														    until op < 5;
																														    
																												
																																clrscr;
																														    case op of
																														
																														          //CONSULTAR VEICULO
																																			//abrir tabela e consutar veiculos
																																			1:begin
																																			  writeln('TABELA DE CARROS');
																																			  reset(carro);
																																			  while not eof (carro) do
																																			  begin
																																			    readln(carro,modelo);
																																			    writeln(modelo);
																																			  end;
																																			  close(carro);
																																			end;
																																			
																																			
																																			//CONSULTAR CLIENTE
																																			//abrir tabela e consutar cliente
																																			2:begin
																																			  writeln('TABELA DE CLIENTES');
																																			  reset(cliente);
																																			  while not eof (cliente) do
																																			  begin
																																			    readln(cliente,nome);
																																			    writeln(nome);
																																			  end;
																																			  close(cliente);
																																			end;
																																			
																																			
																																			//CONSULTAR ALUGUEL
																																			//abrir tabela e consutar alugueis
																																			3:begin
																																			  writeln('TABELA DE ALUGUEL');
																																			  reset(aluguel);
																																			  while not eof (aluguel) do
																																			  begin
																																			    readln(aluguel,nome);
																																			    writeln(nome);
																																			  end;
																																			  close(aluguel);
																																			end;
																																			
																																			
																																			//CONSULTAR DEVOLU��O
																																			//abrir tabela e consutar devolu��es
																																			4:begin
																																			  writeln('TABELA DE DEVOLU��O');
																																			  reset(devolucao);
																																			  while not eof (devolucao) do
																																			  begin
																																			    readln(devolucao,nome);
																																			    writeln(nome);
																																			  end;
																																			  close(devolucao);
																																			end
																														    end;
																														end;
																						
																						                if op = 6 then begin
																						                		repeat
																																      begin
																																        clrscr;
																																			        writeln;
																																			        writeln;
																																			        writeln('CONSULTAS.');
																																			        writeln;
																																			        writeln('1 CONSULTA DE VEICULO.');
																																			        writeln('2 CONSULTA DE CLIENTE.');
																																			        writeln('3 CONSULTA DE ALUGUEL.');
																																			        writeln('4 CONSULTA DE DEVOLU��O.');
																																			        writeln;
																																			        writeln;
																																			        write('OP��O ESCOLHODA FOI: ');
																																			        readln(op);
																																      end;
																														    until op < 5;
																														    
																																clrscr;
																														    case op of
																						                      1:begin
																						                      	     reset(carro);
																																								if ioresult = 0 then
																																							 		begin
																																											write('DIGITE A PLACA DO VEICULO: ');
																																											readln(pesquisa);
																																												 while (not  eof(carro)) do{L� ARQUIVO ATE O FINAL}
																																												 begin
																																												  	readln(carro,temporario);{L� LINHA A LINHA}
																																																 if pesquisa = temporario then{COMPARA PESQUISA COM LINHA}
																																																     begin
																																																 				n_linha:=0;
																																																 					while (n_linha<9) do{CONTA A PARTIR DA LINHA BUSCADA}
																																											               				begin
																																											                 				 	
																																																								writeln(Temporario);
																																											                      		readln(carro,Temporario);
																																																								n_linha:= n_linha +1;
																																											               				end;
																																											               end 
																																											           else
																																											               begin
																																											                 // writeln('CLIENTE N�O ENCONTRADO');
																																																		 end;
																																												 end;
																																											close(carro);
																																							    end
																																							
																																								else
																																							   	begin
																																							   		writeln('TABELA N�O ENCONTRADA');
																																							    end;
																																				readkey;
																																		end;
																						                      
																																	2:begin
																																			  reset(cliente);
																																								if ioresult = 0 then
																																							 		begin
																																											write('DIGITE O C.P.F. DO CLIENTE: ');
																																											readln(pesquisa);
																																												 while (not  eof(cliente)) do{L� ARQUIVO ATE O FINAL}
																																												 begin
																																												  	readln(cliente,temporario);{L� LINHA A LINHA}
																																																 if pesquisa = temporario then{COMPARA PESQUISA COM LINHA}
																																																     begin
																																																 				n_linha:=0;
																																																 					while (n_linha<16) do{CONTA A PARTIR DA LINHA BUSCADA}
																																											               				begin
																																											                 				 	
																																																								writeln(Temporario);
																																											                      		readln(cliente,Temporario);
																																																								n_linha:= n_linha +1;
																																											               				end;
																																											               end 
																																											           else
																																											               begin
																																											                 // writeln('CLIENTE N�O ENCONTRADO');
																																																		 end;
																																												 end;
																																											close(cliente);
																																							    end
																																							
																																								else
																																							   	begin
																																							   		writeln('TABELA N�O ENCONTRADA');
																																							    end;
																																				readkey;
																																		end;
																						                    
																																    3:begin
																																         reset(aluguel);
																																								if ioresult = 0 then
																																							 		begin
																																											write('DIGITE A PLACA DO VEICULO OU O C.P.F. DO CLIENTE: ');
																																											readln(pesquisa);
																																												 while (not  eof(aluguel)) do{L� ARQUIVO ATE O FINAL}
																																												 begin
																																												  	readln(aluguel,temporario);{L� LINHA A LINHA}
																																																 if pesquisa = temporario then{COMPARA PESQUISA COM LINHA}
																																																     begin
																																																 				n_linha:=0;
																																																 					while (n_linha<12) do{CONTA A PARTIR DA LINHA BUSCADA}
																																											               				begin
																																											                 				 	
																																																								writeln(Temporario);
																																											                      		readln(aluguel,Temporario);
																																																								n_linha:= n_linha +1;
																																											               				end;
																																											               end 
																																											           else
																																											               begin
																																											                 // writeln('CLIENTE N�O ENCONTRADO');
																																																		 end;
																																												 end;
																																											close(aluguel);
																																							    end
																																							
																																								else
																																							   	begin
																																							   		writeln('TABELA N�O ENCONTRADA');
																																							    end;
																																				readkey;
																																    	end;
																																    
																																    4:begin
																																    		 reset(devolucao);
																																								if ioresult = 0 then
																																							 		begin
																																											write('DIGITE A PLACA DO VEICULO: ');
																																											readln(pesquisa);
																																												 while (not  eof(devolucao)) do{L� ARQUIVO ATE O FINAL}
																																												 begin
																																												  	readln(devolucao,temporario);{L� LINHA A LINHA}
																																																 if pesquisa = temporario then{COMPARA PESQUISA COM LINHA}
																																																     begin
																																																 				n_linha:=0;
																																																 					while (n_linha<13) do{CONTA A PARTIR DA LINHA BUSCADA}
																																											               				begin
																																											                 				 	
																																																								writeln(Temporario);
																																											                      		readln(devolucao,Temporario);
																																																								n_linha:= n_linha +1;
																																											               				end;
																																											               end 
																																											           else
																																											               begin
																																											                 // writeln('CLIENTE N�O ENCONTRADO');
																																																		 end;
																																												 end;
																																											close(devolucao);
																																							    end
																																							
																																								else
																																							   	begin
																																							   		writeln('TABELA N�O ENCONTRADA');
																																							    end;
																																				readkey;
																																    	end;
																																end;
																														end;
																														if op = 7 then begin
																																		reset(f);
																																		seek(f,filesize(f));
																																		resp:='n';
																																					while resp<>'s' do begin
																																							clrscr;
																																					    write('DIGITE NOME PARA NOVO USUARIO : '); readln(a.nome);
																																					    write('DIGITE SENHA PARA USUARIO : '); readln (a.senha);
																																					    writeln('DESEJA SALVAR? (s/n): '); resp := readKey;
																																					    clrscr;
																																					end;
																																		write(f,a);
																																		writeln('CADASTRO REALIZADO.');
																																		close(f);
																																		readkey;
																														end;
																														if op = 8 then begin
																															GetTime(hora,minuto,segundo, mile_segundo);
																															if (hora >= 06) and (hora <= 11) then begin
																																gotoxy(37,15);
																																writeln('BOM DIA!!');
																																exit;
																															end;
																															if (hora >= 12) and (hora <= 17) then begin
																																gotoxy(37,15);
																																writeln('BOA TARDE!!');
																																exit;
																															end;
																															if (hora >= 18) and (hora <= 23) then begin
																																gotoxy(37,15);
																																writeln('BOA NOITE!!');
																																exit;
																															end;
																															if (hora >= 00) and (hora <= 05) then begin
																																gotoxy(37,15);
																																writeln('BOA MADRUGADA!!');
																																exit;
																															end;
																														end
																						else
																						begin
																						  
																						end;
																						readkey;
																	until i>1;
																		 	resp:='s';									     		            
																		end {if}
																		else begin
																			textbackground(black);
																			cursoroff;
																			clrscr;
																			textbackground(red);
																			gotoxy(6,5); 
																			writeln('#====================================================================#');
																			gotoxy(6,6);
																			writeln('|                                                                    |');
																			gotoxy(6,7);
																			writeln('|  ��                                          ������                |');
																			gotoxy(6,8);
																			writeln('|  ��      �����   ����  �����  �     �  �����   ��    �����  �����  |');
																			gotoxy(6,9);
																			writeln('|  ��     ��   �� ��    ��   �� ��� ��� ��   ��  ��   ��   �� ��  �  |');
																			gotoxy(6,10);
																			writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �����  |');
																			gotoxy(6,11);
																			writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �� �   |');
																			gotoxy(6,12);
																			writeln('|  ������  �����   ����  �����  ��   ��  �����   ��    �����  ��  �  |');
																			gotoxy(6,13);
																			writeln('|                                                                    |');
																			gotoxy(6,14);
																			writeln('|                                                       vers�o 2.6.0 |');
																			gotoxy(6,15);
																			writeln('#====================================================================#');
																			gotoxy(6,16);
																			writeln('|                                                                    |');
																			gotoxy(6,17);
																			writeln('|                                                                    |');
																			gotoxy(6,18);
																			writeln('|                                                                    |');
																			gotoxy(6,19);
																			writeln('|                          SENHA INCORRETA.                          |');
																			gotoxy(6,20);
																			writeln('|                                                                    |');
																			gotoxy(6,21);
																			writeln('|                                                                    |');
																			gotoxy(6,22);
																			writeln('|                                                                    |');
																			gotoxy(6,23);
																			writeln('#====================================================================#');
																			readkey;
																		end;{else}
																	end;
															 until resp = 's';
										 			end;
								end;
			   			 close(f);	
						if not achou then begin 
							  textbackground(black);
								cursoroff;
								clrscr;
								textbackground(red);
								gotoxy(6,5); 
								writeln('#====================================================================#');
								gotoxy(6,6);
								writeln('|                                                                    |');
								gotoxy(6,7);
								writeln('|  ��                                          ������                |');
								gotoxy(6,8);
								writeln('|  ��      �����   ����  �����  �     �  �����   ��    �����  �����  |');
								gotoxy(6,9);
								writeln('|  ��     ��   �� ��    ��   �� ��� ��� ��   ��  ��   ��   �� ��  �  |');
								gotoxy(6,10);
								writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �����  |');
								gotoxy(6,11);
								writeln('|  ��     ��   �� ��    ��   �� �� � �� ��   ��  ��   ��   �� �� �   |');
								gotoxy(6,12);
								writeln('|  ������  �����   ����  �����  ��   ��  �����   ��    �����  ��  �  |');
								gotoxy(6,13);
								writeln('|                                                                    |');
								gotoxy(6,14);
								writeln('|                                                       vers�o 2.6.0 |');
								gotoxy(6,15);
								writeln('#====================================================================#');
								gotoxy(6,16);
								writeln('|                                                                    |');
								gotoxy(6,17);
								writeln('|                                                                    |');
								gotoxy(6,18);
								writeln('|                                                                    |');
								gotoxy(6,19);
								writeln('|                      REGISTRO N�O ENCONTRADO.                      |');
								gotoxy(6,20);
								writeln('|                                                                    |');
								gotoxy(6,21);
								writeln('|                                                                    |');
								gotoxy(6,22);
								writeln('|                                                                    |');
								gotoxy(6,23);
								writeln('#====================================================================#');  
							 	resp:='n';
						    readkey;
						end;
				until resp = 's';					
				{reset(f);
			   while not eof(f) do begin
			     read(f,a);
			     writeln(a.nome,' - ',a.senha);
			   end;
   			 close(f);}					
			readkey;
	end.