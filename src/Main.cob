       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           CLASS Policy AS "Policy".

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PolObj OBJECT REFERENCE Policy.

       PROCEDURE DIVISION.
           DISPLAY "=== MAIN PROGRAM START ==="

           INVOKE Policy "NEW" RETURNING PolObj
           INVOKE PolObj "Show"

           *> Demo InsertPolicy
           INVOKE Policy "InsertPolicy" USING 800016251, "Nguyen T Thien", "Nguyen T Thien", "PREMIUM PAYING", 2500000

           DISPLAY "=== MAIN PROGRAM END ==="
           STOP RUN.
