      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NM2 PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.

       DISPLAY 'INFORME UM NUMERO'
       ACCEPT WRK-NM1 FROM CONSOLE.

       DISPLAY 'INFORME OUTRO NUMERO'
       ACCEPT WRK-NM2 FROM CONSOLE.


       IF WRK-NM1 IS GREATER THAN WRK-NM2
           DISPLAY 'MAIOR ' WRK-NM1
       ELSE
           IF WRK-NM2 IS GREATER THAN WRK-NM1
               DISPLAY 'MAIOR ' WRK-NM2
       END-IF.
