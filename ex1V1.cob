       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
**************************************
******* OBJETIVO: faça um programa que peça dois números e imprima o maior deles
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-NUM1 PIC 9(2) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(2) VALUE ZEROS.


       PROCEDURE DIVISION.
       DISPLAY 'INFORME O PRIMEIRO VALOR'
       ACCEPT WRK-NUM1 FROM CONSOLE.
       DISPLAY 'INFORME O SEGUNDO VALOR'
       ACCEPT WRK-NUM2 FROM CONSOLE.

       IF WRK-NUM1 > WRK-NUM2
           DISPLAY WRK-NUM1 ' E MAIOR QUE ' WRK-NUM2
       ELSE
           IF WRK-NUM2 > WRK-NUM1
               DISPLAY WRK-NUM2 ' E MAIOR QUE ' WRK-NUM1
       END-IF.


       STOP RUN.
