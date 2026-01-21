       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID. CALC1000.
      *PROGRAMMER.         ANDRE PHILOT.
      *COMPLETION-DATE.    JULY 11, 2025.
      *REMARKS.            THIS IS A SIMPLE INTERACTIVE PROGRAM THAT'S
      *                    DESIGNED TO ILLUSTRATE THE USE OF COBOL.
      *                    IT CALCULATES THE SALES TAX ON AN AMOUNT
      *                    THAT HAS BEEN ENTERED BY THE USER.
       ENVIRONMENT DIVISION.
      *
       INPUT-OUTPUT SECTION.
      *
       DATA DIVISION.
      *
       FILE SECTION.
      *
       WORKING-STORAGE SECTION.
      *
       77  END-OF-SESSION-SWITCH  PIC X         VALUE "N".
       77  SALES-AMOUNT           PIC 9(5)V99.
       77  SALES-TAX              PIC Z,ZZZ.99.
      *
       PROCEDURE DIVISION.
      *
       000-CALCULATE-SALES-TAX.
      *
           PERFORM 100-CALCULATE-ONE-SALES-TAX
            UNTIL END-OF-SESSION-SWITCH = "Y".
           DISPLAY "END OF SESSION.".
           STOP RUN.
      *
       100-CALCULATE-ONE-SALES-TAX.
      *
           DISPLAY "------------".
           DISPLAY "PRESS 0 AND ENTER TO EXIT THE PROGRAM.".
           DISPLAY "OTHERWISE, ENTER THE SALES AMOUNT.".
           ACCEPT SALES-AMOUNT.
           IF SALES-AMOUNT = ZERO
            MOVE "Y" TO END-OF-SESSION-SWITCH
           ELSE
            COMPUTE SALES-TAX ROUNDED =
             SALES-AMOUNT * .0785
            DISPLAY "THE SALES TAX IS " SALES-TAX ".".
