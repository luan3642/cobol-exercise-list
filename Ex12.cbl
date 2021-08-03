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

       77 WRK-ALTURA PIC 9(03)v99 VALUE ZEROS.
       77 WRK-PESO-IDEAL PIC 9(03) VALUE ZEROS.


       PROCEDURE DIVISION.

       DISPLAY 'INFORME SEU ALTURA: '
       ACCEPT WRK-ALTURA FROM CONSOLE.

       COMPUTE WRK-PESO-IDEAL = (72,7 * WRK-ALTURA) - 58.

       DISPLAY 'SEU PESO IDEAL E: 'WRK-PESO-IDEAL.




       STOP RUN.
