       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           CLASS Customer AS "Customer"
           CLASS Order AS "Order"
           CLASS Product AS "Product".

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CustObj OBJECT REFERENCE Customer.
       01 OrderObj OBJECT REFERENCE Order.
       01 ProdObj OBJECT REFERENCE Product.

       PROCEDURE DIVISION.
           DISPLAY "=== MAIN PROGRAM START ==="

           INVOKE Customer "NEW" RETURNING CustObj
           INVOKE CustObj "Show"

           INVOKE Order "NEW" RETURNING OrderObj
           INVOKE OrderObj "Show"

           INVOKE Product "NEW" RETURNING ProdObj
           INVOKE ProdObj "Show"

           DISPLAY "=== MAIN PROGRAM END ==="
           STOP RUN.