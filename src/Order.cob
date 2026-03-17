       IDENTIFICATION DIVISION.
       CLASS-ID. Order.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           CLASS Order.

       METHOD-ID. Show.
       PROCEDURE DIVISION.
           DISPLAY "Order class method running"
           GOBACK.
       END METHOD Show.

       END CLASS Order.