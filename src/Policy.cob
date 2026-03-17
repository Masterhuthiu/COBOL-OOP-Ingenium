       IDENTIFICATION DIVISION.
       CLASS-ID. Policy.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PolicyId        PIC 9(10).
       01 OwnerId         PIC 9(10).
       01 OwnerName       PIC X(100).
       01 InsuredId       PIC 9(10).
       01 InsuredName     PIC X(100).
       01 Status          PIC X(50).
       01 Suffix          PIC 9(4).
       01 Premium         PIC 9(10).

       PROCEDURE DIVISION.
       METHOD-ID. NEW.
           PROCEDURE DIVISION RETURNING SELF.
               *> khởi tạo object Policy
               MOVE 0 TO PolicyId
               MOVE SPACES TO OwnerName
               MOVE SPACES TO InsuredName
               MOVE SPACES TO Status
               MOVE 0 TO Premium
               GOBACK RETURNING SELF.
       END METHOD NEW.

       METHOD-ID. Show.
           PROCEDURE DIVISION.
               DISPLAY "PolicyId: " PolicyId
               DISPLAY "OwnerId: " OwnerId
               DISPLAY "OwnerName: " OwnerName
               DISPLAY "InsuredId: " InsuredId
               DISPLAY "InsuredName: " InsuredName
               DISPLAY "Status: " Status
               DISPLAY "Suffix: " Suffix
               DISPLAY "Premium: " Premium
               GOBACK.
       END METHOD Show.

       METHOD-ID. InsertPolicy STATIC.
           PROCEDURE DIVISION USING BY VALUE pid AS BINARY-LONG
                                      BY VALUE oname AS STRING
                                      BY VALUE iname AS STRING
                                      BY VALUE st AS STRING
                                      BY VALUE prem AS BINARY-LONG.
           DECLARE conn TYPE NpgsqlConnection
               = NEW NpgsqlConnection("Host=localhost;Username=postgres;Password=postgres;Database=insurance").
           INVOKE conn "Open".

           DECLARE sqlIns AS STRING =
             "INSERT INTO policy (policy_id,owner_name,insured_name,status,premium) VALUES (@pid,@oname,@iname,@st,@prem)".

           DECLARE cmd TYPE NpgsqlCommand = NEW NpgsqlCommand(sqlIns, conn).
           INVOKE cmd "Parameters.AddWithValue" USING "pid", pid.
           INVOKE cmd "Parameters.AddWithValue" USING "oname", oname.
           INVOKE cmd "Parameters.AddWithValue" USING "iname", iname.
           INVOKE cmd "Parameters.AddWithValue" USING "st", st.
           INVOKE cmd "Parameters.AddWithValue" USING "prem", prem.
           INVOKE cmd "ExecuteNonQuery".
           GOBACK.
       END METHOD InsertPolicy.

       END CLASS Policy.
