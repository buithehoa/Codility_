
The Problem

  A program to sort a list of names is required.
  The file also contains the person's age and phone number.
  The main challenge is that the entire list can not fit into
      physical memory at any given time.
  There is no limit to the amount of physical disk space.

The Input

  An ASCII TSV (Tab Separated values) file containing a list of names.
  Each line is of the format:
  <Last Name>, <First Name><tab><age><tab><Phone Number><CR>

The Output

  A file in the same format sorted by Last Name.

The Program

  The final program must take three arguments

    Maxnames - the maximum number of names which can be loaded
               into memory at any given time
    Input    - name of the input file
    Output   - name of the results output file

For example:ruby SortNames 10 input.txt output.txt

The Solution

You must provide 
1. Runnable ruby source code
2. sample output file 

The above should be zipped into a single zip file and returned to flynn.fishman@versapay.com
Do not spend more than 1 hour on this test.  If you are not finished after an hour just send
us what you currently have.