       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX11.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01 WRK-NUMEROS.
           05 WRK-NM1 PIC 9(04) VALUE ZEROS.
           05 WRK-NM2 PIC 9(04) VALUE ZEROS.
           05 WRK-NM3 PIC 9(04)V99 VALUE ZEROS.

       77 WRK-PRODUTO PIC 9(04) VALUE ZEROS.
       77 WRK-PRODUTO-ED PIC Z999 VALUE ZEROS.
       77 WRK-SOMA PIC 9(04) VALUE ZEROS.
       77 WRK-CUBO PIC 9(04) VALUE ZEROS.


       PROCEDURE DIVISION.

       DISPLAY 'INFORME O PRIMEIRO NUMERO'.
       ACCEPT WRK-NM1 FROM CONSOLE.
       DISPLAY 'INFORME O SEGUNDO NUMERO'.
       ACCEPT WRK-NM2 FROM CONSOLE.
       DISPLAY 'INFORME O TERCEIRO NUMERO'.
       ACCEPT WRK-NM3 FROM CONSOLE.

       COMPUTE WRK-PRODUTO = (WRK-NM1 * 2) * (WRK-NM2 / 2).
       MOVE WRK-PRODUTO TO WRK-PRODUTO-ED.

       COMPUTE WRK-SOMA = (WRK-NM1 * 3) * WRK-NM3.

       COMPUTE WRK-CUBO = WRK-NM3 ** 3.

       DISPLAY 'PRODUTO..: 'WRK-PRODUTO-ED.
       DISPLAY 'SOMA..: ' WRK-SOMA.
       DISPLAY 'ELEVADO AO CUBO ..: ' WRK-CUBO.
