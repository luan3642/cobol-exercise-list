       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.

       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-LETRA PIC A(1) VALUES SPACES.


       PROCEDURE DIVISION.
       DISPLAY 'INFORME A LETRA'
       ACCEPT WRK-LETRA FROM CONSOLE.

       EVALUATE WRK-LETRA
           WHEN 'A'
               DISPLAY 'VOGAL'
           WHEN 'E'
               DISPLAY 'VOGAL'
           WHEN 'I'
               DISPLAY 'VOGAL'
           WHEN 'O'
               DISPLAY 'VOGAL'
           WHEN 'U'
               DISPLAY 'VOGAL'
           WHEN OTHER
               DISPLAY  'CONSOANTE'
       END-EVALUATE.

       STOP RUN.
