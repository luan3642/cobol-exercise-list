
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX25.
       AUTHOR: LUAN MAGALHAES.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.





       WORKING-STORAGE SECTION.
       01 WRK-NUMEROS.
           05 WRK-NUM1 PIC 9(04) VALUE ZEROS.
           05 WRK-NUM2 PIC 9(04) VALUE ZEROS.
           05 WRK-NUM3 PIC 9(04) VALUE ZEROS.




       PROCEDURE DIVISION.
       DISPLAY 'INFORME O PRIMEIRO NUMERO'
       ACCEPT WRK-NUM1 FROM CONSOLE.

       DISPLAY 'INFORME O SEGUNDO NUMERO'
       ACCEPT WRK-NUM2 FROM CONSOLE.

       DISPLAY 'INFORME O TERCEIRO NUMERO'
       ACCEPT WRK-NUM3 FROM CONSOLE.




       IF WRK-NUM1 < WRK-NUM2 AND WRK-NUM1 < WRK-NUM3
           AND WRK-NUM2 < WRK-NUM3
           DISPLAY 'ORDEM CRESCENTE'
           DISPLAY WRK-NUM1
           DISPLAY WRK-NUM2
           DISPLAY WRK-NUM3
       ELSE
           IF WRK-NUM1 < WRK-NUM2 AND WRK-NUM1 < WRK-NUM3
           AND WRK-NUM3 < WRK-NUM2
           DISPLAY 'ORDEM CRESCENTE'
           DISPLAY WRK-NUM1
           DISPLAY WRK-NUM3
           DISPLAY WRK-NUM2
       ELSE
           IF WRK-NUM2 < WRK-NUM1 AND WRK-NUM2 < WRK-NUM3
               AND WRK-NUM1 < WRK-NUM3
           DISPLAY 'ORDEM CRESCENTE'
           DISPLAY WRK-NUM2
           DISPLAY WRK-NUM1
           DISPLAY WRK-NUM3
       ELSE
           IF WRK-NUM2 < WRK-NUM1 AND WRK-NUM2 < WRK-NUM3
               AND WRK-NUM3 < WRK-NUM1
               DISPLAY 'ORDEM CRESCENTE'
               DISPLAY WRK-NUM2
               DISPLAY WRK-NUM3
               DISPLAY WRK-NUM1
       ELSE
           IF WRK-NUM3 < WRK-NUM2 AND WRK-NUM3 < WRK-NUM1
               AND WRK-NUM2 < WRK-NUM1
               DISPLAY 'ORDEM CRESCENTE'
               DISPLAY WRK-NUM3
               DISPLAY WRK-NUM2
               DISPLAY WRK-NUM1
       ELSE
           IF WRK-NUM3 < WRK-NUM2 AND WRK-NUM3 < WRK-NUM1
               AND WRK-NUM1 < WRK-NUM2
               DISPLAY 'ORDEM CRESCENTE'
               DISPLAY WRK-NUM3
               DISPLAY WRK-NUM1
               DISPLAY WRK-NUM2
       END-IF



       STOP RUN.
