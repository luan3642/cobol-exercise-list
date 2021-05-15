       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
********************************
******* faça um programa que peça um número e informe se ele é positivo ou negativo.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       77 WRK-NM PIC S9(4) VALUES ZEROS.


       PROCEDURE DIVISION.
       DISPLAY 'INFORME O NUMERO QUE DESEJA '
       ACCEPT WRK-NM FROM CONSOLE.

       IF WRK-NM < 0
           DISPLAY  'NEGATIVO'
       ELSE
           DISPLAY  'POSITIVO'
       END-IF.

       STOP-RUN.
