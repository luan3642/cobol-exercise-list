
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX23.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-NM1 PIC 9(04) VALUE ZEROS.
       77 WRK-NM2 PIC 9(04) VALUE ZEROS.
       77 WRK-NM3 PIC 9(04) VALUE ZEROS.




       PROCEDURE DIVISION.
       DISPLAY 'INFORME O PRIMEIRO O NUMERO'
       ACCEPT WRK-NM1 FROM CONSOLE.

       DISPLAY 'INFORME O SEGUNDO O NUMERO'
       ACCEPT WRK-NM2 FROM CONSOLE.

       DISPLAY 'INFORME O TERCEIRO O NUMERO'
       ACCEPT WRK-NM3 FROM CONSOLE.


       IF WRK-NM1 > WRK-NM2 AND
          WRK-NM1 > WRK-NM3 AND
          WRK-NM2 < WRK-NM3
           DISPLAY 'MAIOR: ' WRK-NM1
           DISPLAY 'MENOR: ' WRK-NM2
       ELSE
           IF WRK-NM1 > WRK-NM2 AND WRK-NM1 > WRK-NM3
               AND WRK-NM3 < WRK-NM2
           DISPLAY 'MAIOR: ' WRK-NM1
           DISPLAY 'MENOR: ' WRK-NM3
       ELSE
           IF WRK-NM2 > WRK-NM1 AND WRK-NM2 > WRK-NM3
               AND WRK-NM1 < WRK-NM3
           DISPLAY 'MAIOR: ' WRK-NM2
           DISPLAY 'MENOR: ' WRK-NM1
       ELSE
           IF WRK-NM2 > WRK-NM1 AND WRK-NM2 > WRK-NM3
               AND WRK-NM3 < WRK-NM1
               DISPLAY 'MAIOR: ' WRK-NM2
               DISPLAY 'MENOR: ' WRK-NM3
       ELSE
           IF WRK-NM3 > WRK-NM1 AND WRK-NM3 > WRK-NM2
               AND WRK-NM1 < WRK-NM2
               DISPLAY 'MAIOR: 'WRK-NM3
               DISPLAY 'MENOR: ' WRK-NM2
       ELSE
           IF WRK-NM3 > WRK-NM1 AND WRK-NM3 > WRK-NM2
               AND WRK-NM2 > WRK-NM1
               DISPLAY 'MAIOR: ' WRK-NM3
               DISPLAY 'MENOR: ' WRK-NM2
       END-IF

       STOP RUN.
