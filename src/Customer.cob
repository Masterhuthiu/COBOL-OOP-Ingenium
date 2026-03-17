       IDENTIFICATION DIVISION.
       CLASS-ID. Customer.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           CLASS Customer.

       METHOD-ID. Show.
       PROCEDURE DIVISION.
           DISPLAY "Customer class method running"
           GOBACK.
       END METHOD Show.

       END CLASS Customer.