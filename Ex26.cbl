
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX26.
       AUTHOR: LUAN MAGALHAES
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-TURNO PIC A(1) VALUE SPACES.





       PROCEDURE DIVISION.

       DISPLAY 'MENU'
       DISPLAY 'M - MATURINO'
       DISPLAY 'V - VESPERTINO'
       DISPLAY 'N - NOTURNO'

       DISPLAY ''
       DISPLAY 'INFORME UMA LETRA'
       ACCEPT WRK-TURNO FROM CONSOLE.


       EVALUATE WRK-TURNO
           WHEN 'M'
           WHEN 'm'
               DISPLAY 'BOM DIA'
           WHEN 'V'
           WHEN 'v'
               DISPLAY 'BOA TARDE'
           WHEN 'N'
           WHEN 'n'
               DISPLAY 'BOA NOITE'
           WHEN OTHER
               DISPLAY 'OPCAO INVALIDA'
       END-EVALUATE
       STOP RUN.
