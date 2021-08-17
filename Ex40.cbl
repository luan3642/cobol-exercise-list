       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX40.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-USER PIC X(10) VALUE SPACES.
       77 WRK-PASSWORD PIC X(10) VALUE SPACES.


       PROCEDURE DIVISION.
       0100-PRINCIPAL SECTION.
       PERFORM 0200-ENTRADA.

       0200-ENTRADA SECTION.

       DISPLAY 'INFORME O USER: '
       ACCEPT WRK-USER FROM CONSOLE.

       DISPLAY 'INFORME A SENHA: '
       ACCEPT WRK-PASSWORD FROM CONSOLE.


       PERFORM UNTIL WRK-USER EQUAL WRK-PASSWORD
                     AND WRK-PASSWORD EQUAL WRK-USER
       DISPLAY 'INFORME O USER: '
       ACCEPT WRK-USER FROM CONSOLE

       DISPLAY 'INFORME A SENHA: '
       ACCEPT WRK-PASSWORD FROM CONSOLE

       END-PERFORM

       DISPLAY 'ERRO, DIGITE NOVAMENTE AS INFORMACOES'




       STOP RUN.
