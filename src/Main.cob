       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           CLASS Customer
           CLASS Order
           CLASS Product
           CLASS Policy.
      * KHÔNG dùng AS "...", chỉ ghi tên Class. Kết thúc bằng dấu chấm.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CustObj  USAGE OBJECT REFERENCE Customer.
       01 OrderObj USAGE OBJECT REFERENCE Order.
       01 ProdObj  USAGE OBJECT REFERENCE Product.
       01 PoObj    USAGE OBJECT REFERENCE Policy.
      * PHẢI có USAGE và dấu chấm ở cuối mỗi dòng khai báo.

       PROCEDURE DIVISION.
           DISPLAY "=== START ==="
           INVOKE Customer "NEW" RETURNING CustObj
           DISPLAY "Success: Objects initialized."
           STOP RUN.

       END PROGRAM Main.