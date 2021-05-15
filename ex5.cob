       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
********OBJETIVO: CALCULAR M�DIAS DE ALUNOS
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       77 WRK-NOTA1 PIC 9(2) VALUES ZEROS.
       77 WRK-NOTA2 PIC 9(2) VALUES ZEROS.
       77 WRK-RESULT PIC 9(4)V9 VALUES ZEROS.


       PROCEDURE DIVISION.
       DISPLAY 'INFORME O PRIMEIRO VALOR'
       ACCEPT WRK-NOTA1 FROM CONSOLE.
       DISPLAY 'INFORME O SEGUNDO VALOR'
       ACCEPT WRK-NOTA2 FROM CONSOLE.

       COMPUTE WRK-RESULT = (WRK-NOTA1 + WRK-NOTA2) / 2.

       IF WRK-RESULT > 10
           DISPLAY 'APROVADO COM DISTIN��O'
       ELSE
           IF WRK-RESULT >=7
               DISPLAY 'APROVADO'
       ELSE
           DISPLAY 'REPROVADO'

       END-IF.

       STOP RUN.