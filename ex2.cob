       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX2.


       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-ESCOLHA PIC 9(1) VALUE ZEROS.
       77 WRK-NUM1 PIC 9(04) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(04) VALUE ZEROS.
       77 WRK-RESULT PIC 9(04) VALUE ZEROS.
       77 WRK-RESULT-ED PIC ZZ VALUE ZEROS.


       PROCEDURE DIVISION.
       DISPLAY 'ESCOLHA UMA OPERAÇÃO DO SEU GOSTO'.
       DISPLAY '1- SOMA'.
       DISPLAY '2- SUBTRAÇÃO'.
       DISPLAY '3- DIVISÃO'.
       DISPLAY '4- MULTIPLICAÇÃO'.

       DISPLAY '----------------'.


       ACCEPT WRK-ESCOLHA FROM CONSOLE.

       EVALUATE WRK-ESCOLHA
             WHEN 1

                DISPLAY 'SOMA'
                DISPLAY '--------------------'
                DISPLAY'INFORME O PRIMEIRO VALOR'
                ACCEPT WRK-NUM1 FROM CONSOLE

                DISPLAY'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE

                ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT
                MOVE WRK-RESULT TO WRK-RESULT-ED

                DISPLAY 'A soma é: ' WRK-RESULT-ED

             WHEN 2

                DISPLAY 'SUBTRAÇÃO'
                DISPLAY '-----------------------'
                DISPLAY 'INFORME O PRIMEIRO VALOR'
                ACCEPT WRK-NUM1 FROM CONSOLE

                DISPLAY 'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE


                SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULT

                MOVE WRK-RESULT TO WRK-RESULT-ED
                DISPLAY 'A subtração é: ' WRK-RESULT-ED


              WHEN 3

                DISPLAY 'DIVISÃO'
                DISPLAY '-------------------------'
                DISPLAY 'INFORME O PRIMEIRO VALOR '
                ACCEPT WRK-NUM1 FROM CONSOLE

                DISPLAY 'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE

                DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT

                MOVE WRK-RESULT TO WRK-RESULT-ED

                DISPLAY 'A DIVISÃO É' WRK-RESULT-ED

             WHEN 4

                DISPLAY 'MULTIPLICAÇÃO'
                DISPLAY '------------------------'
                DISPLAY 'INFORME O PRIMEIRO VALOR'
                ACCEPT WRK-NUM1 FROM CONSOLE


                DISPLAY 'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE


                MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT

                MOVE WRK-RESULT TO WRK-RESULT-ED
                DISPLAY 'A MULPLICAÇÃO É: ' WRK-RESULT-ED


            WHEN OTHER
               DISPLAY 'VALOR DIGITADO INVÁLIDO'


           END-EVALUATE.

           STOP RUN.
