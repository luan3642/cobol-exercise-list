       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX54.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-METROS PIC 9(04) VALUE ZEROS.
       77 WRK-CENTIMETRO PIC 9(04) VALUE ZEROS.
       77 WRK-METROS-ED PIC Z9 VALUE ZEROS.
       77 WRK-CENTIMETRO-ED PIC Z99 VALUE ZEROS.

       PROCEDURE DIVISION.

       0100-INICIAR.
       PERFORM 0200-ENTRADA.
       PERFORM 0300-PROCESSAR.

       STOP RUN.


       0200-ENTRADA.
       DISPLAY 'INFORME O VALOR EM METROS A SER CONVERTIDO'
       ACCEPT WRK-METROS FROM CONSOLE.




       0300-PROCESSAR.

       COMPUTE WRK-CENTIMETRO = WRK-METROS * 100

       MOVE WRK-CENTIMETRO TO WRK-CENTIMETRO-ED.
       MOVE WRK-METROS TO WRK-METROS-ED.

       DISPLAY WRK-METROS-ED ' METROS, EM CENTIMETROS, FICA '
               WRK-CENTIMETRO-ED ' CENTIMETROS'.
