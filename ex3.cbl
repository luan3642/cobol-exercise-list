       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
**************************************
*******OBJETIVO: faça um programa que verifique se a letrada digitada é F OU M conforme a letra escrever
***************** M - MASCULINO - F FEMININO
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-SEXO PIC A(1) VALUES SPACES.


       PROCEDURE DIVISION.

       DISPLAY 'INFORME SEU SEXO'.
       ACCEPT WRK-SEXO FROM CONSOLE.

       EVALUATE WRK-SEXO
           WHEN 'M'
               DISPLAY 'MASCULUNO'
           WHEN 'F'
               DISPLAY 'FEMININO'
           WHEN OTHER
               DISPLAY 'OPCAO INVALIDA'
       END-EVALUATE.

       STOP RUN.
