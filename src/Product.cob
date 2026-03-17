       IDENTIFICATION DIVISION.
       CLASS-ID. Product.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           CLASS Product.

       METHOD-ID. Show.
       PROCEDURE DIVISION.
           DISPLAY "Product class method running"
           GOBACK.
       END METHOD Show.

       END CLASS Product.