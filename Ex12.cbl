      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WRK-ALTURA PIC 9(03)V99 VALUE ZEROS.
       77 WRK-PESO   PIC 9(03) VALUE ZEROS.
       77 WRK-SEXO   PIC A(1) VALUE SPACES.

       77 WRK-IMC PIC 9(03) VALUE ZEROS.


       PROCEDURE DIVISION.

       DISPLAY 'INFORME SUA ALTURA'.
       ACCEPT WRK-ALTURA FROM CONSOLE.

       DISPLAY 'INFORME SEU PESO'.
       ACCEPT WRK-PESO FROM CONSOLE.


       COMPUTE WRK-IMC = WRK-PESO / (WRK-ALTURA * WRK-ALTURA)


       IF WRK-IMC < 16 AND WRK-IMC < 16,9
           DISPLAY 'MUITO ABAIXO DO PESO'
       ELSE
           IF WRK-IMC >17 AND WRK-IMC <18,4
               DISPLAY 'ABAIXO DO PESO'
       ELSE
           IF WRK-IMC >18 AND WRK-IMC < 24,9
               DISPLAY 'PESO NORMAL'
       ELSE
           IF WRK-IMC > 25 AND WRK-IMC <29,9
               DISPLAY 'ACIMA DO PESO'
       ELSE
           IF WRK-IMC > 30 AND WRK-IMC < 34,9
               DISPLAY 'OBESIDADE GRAU I'
       ELSE
           IF WRK-IMC > 35 AND WRK-IMC < 40
               DISPLAY 'OBESIDADE GRAU II'
       ELSE
           IF WRK-IMC > 40
               DISPLAY 'OBESIDADE GRAU III'
       END-IF.




       STOP RUN.
