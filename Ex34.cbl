       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX34.
       AUTHOR. LUAN MAGALHAES.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-NM1 PIC S9(02) VALUE ZEROS.
       77 WRK-NM2 PIC S9(02) VALUE ZEROS.

       77 WRK-ESCOLHA PIC 9(01) VALUE ZEROS.
       77 WRK-RESULTADO PIC S9(03) VALUE ZEROS.
       77 WRK-PAR-IMPAR PIC 9(03) VALUE ZEROS.
       77 WRK-POSITIVO-NEGATIVO PIC S9(03) VALUE ZEROS.

       77 WRK-AUX PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.

       DISPLAY 'CALCULADORA'
       DISPLAY '1- SOMA'
       DISPLAY '2- SUBTRACAO'
       DISPLAY '3- MULTIPLICAO'
       DISPLAY '4- DIVISAO'
       ACCEPT WRK-ESCOLHA FROM CONSOLE.

       DISPLAY ''


       EVALUATE WRK-ESCOLHA
           WHEN 1

           DISPLAY 'INFORME O 1 VALOR'
           ACCEPT WRK-NM1 FROM CONSOLE

           DISPLAY 'INFORME O 2 VALOR'
           ACCEPT WRK-NM2 FROM CONSOLE

           COMPUTE WRK-RESULTADO = WRK-NM1 + WRK-NM2

           DIVIDE WRK-RESULTADO BY 2 GIVING WRK-AUX REMAINDER
           WRK-POSITIVO-NEGATIVO

           DISPLAY 'SOMA: ' WRK-RESULTADO

           IF WRK-POSITIVO-NEGATIVO EQUAL TO 0
               DISPLAY 'PAR'
           ELSE
               DISPLAY 'IMPAR'

           END-IF
           WHEN 2

           DISPLAY 'INFORME O 1 VALOR'
           ACCEPT WRK-NM1 FROM CONSOLE

           DISPLAY 'INFORME O 2 VALOR'
           ACCEPT WRK-NM2 FROM CONSOLE

           COMPUTE WRK-RESULTADO = WRK-NM1 - WRK-NM2

           DIVIDE WRK-RESULTADO BY 2 GIVING WRK-AUX REMAINDER
           WRK-POSITIVO-NEGATIVO

           DISPLAY 'SUBTRACAO: ' WRK-RESULTADO

           IF WRK-POSITIVO-NEGATIVO EQUAL TO 0
               DISPLAY 'PAR'
           ELSE
               DISPLAY 'IMPAR'
           END-IF

           WHEN 3

           DISPLAY 'INFORME O 1 VALOR'
           ACCEPT WRK-NM1 FROM CONSOLE

           DISPLAY 'INFORME O 2 VALOR'
           ACCEPT WRK-NM2 FROM CONSOLE

           COMPUTE WRK-RESULTADO = WRK-NM1 * WRK-NM2

           DIVIDE WRK-RESULTADO BY 2 GIVING WRK-AUX REMAINDER
           WRK-POSITIVO-NEGATIVO

           DISPLAY 'SUBTRACAO: ' WRK-RESULTADO

           IF WRK-POSITIVO-NEGATIVO EQUAL TO 0
               DISPLAY 'PAR'
           ELSE
               DISPLAY 'IMPAR'
           END-IF

           WHEN 4

           DISPLAY 'INFORME O 1 VALOR'
           ACCEPT WRK-NM1 FROM CONSOLE

           DISPLAY 'INFORME O 2 VALOR'
           ACCEPT WRK-NM2 FROM CONSOLE

           COMPUTE WRK-RESULTADO = WRK-NM1 / WRK-NM2

           DIVIDE WRK-RESULTADO BY 2 GIVING WRK-AUX REMAINDER
           WRK-POSITIVO-NEGATIVO

           DISPLAY 'SUBTRACAO: ' WRK-RESULTADO

           IF WRK-POSITIVO-NEGATIVO EQUAL TO 0
               DISPLAY 'PAR'
           ELSE
               DISPLAY 'IMPAR'
           END-IF

           WHEN OTHER
               DISPLAY 'OPCAO INVALIDA'


       STOP RUN.