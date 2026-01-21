# CALC1000 – Sales Tax Calculator (COBOL)

## Overview
CALC1000 is a simple interactive COBOL program designed to illustrate fundamental COBOL concepts.
The program prompts the user to enter a sales amount and calculates the corresponding sales tax using a fixed tax rate.

This project is intended for learning and demonstration purposes, particularly for those studying Mainframe COBOL.

---

## Program Information
- Program ID: CALC1000
- Programmer: Andre Philot
- Completion Date: July 11, 2025
- Language: COBOL

---

## Functionality
- Repeatedly prompts the user to enter a sales amount
- Calculates sales tax at a rate of 7.85%
- Displays the calculated tax, properly formatted
- Allows the user to exit the program by entering 0

---

## How It Works
1. The program starts an interactive session.
2. The user is prompted to enter a sales amount.
3. If the user enters 0, the program ends.
4. Otherwise, the program:
   - Calculates the sales tax using the formula:
     SALES-TAX = SALES-AMOUNT × 0.0785
   - Displays the formatted sales tax.
5. The program repeats until the user exits.

---

## Key COBOL Concepts Demonstrated
- COBOL program structure (IDENTIFICATION, DATA, PROCEDURE divisions)
- WORKING-STORAGE variables
- PERFORM ... UNTIL loop
- User input with ACCEPT
- Output with DISPLAY
- Arithmetic processing using COMPUTE
- Numeric formatting with edited fields
- Use of level-77 data items

---

## Sample Interaction
------------
PRESS 0 AND ENTER TO EXIT THE PROGRAM.
OTHERWISE, ENTER THE SALES AMOUNT.
123.45
THE SALES TAX IS   9.69.

---

## Compilation & Execution
This program can be compiled using:
- IBM Enterprise COBOL for z/OS
- GnuCOBOL (with minor environment adjustments)

Example using GnuCOBOL:
cobc -x CALC1000.cbl
./CALC1000

---

## Notes
- This program does not use file I/O.
- Input validation is minimal and assumes valid numeric input.
- Intended as a foundational example rather than a production-ready application.

---

## License
This project is provided for educational purposes.
Feel free to study, modify, and expand it as part of your COBOL learning journey.
