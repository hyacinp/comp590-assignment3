Team Members: [Kibby Hyacinth Pangilinan]

The p1.erl aims to rrite an Erlang program that will take one number as input and then do this computation:
    a) if the input is not an integer, print "not an integer"

    b) if the input integer is negative (smaller than 0), compute
       the absolute value of that integer raised to the 7th power... 
       and print that.

    c) if the input integer is 0, simply output the 0

    d) is the input integer is greater than 0 then decide if it is 
       a multiple of 7 or not; if it is a multiple of 7, print out 
       the 5th root of the integer; if its not a multiple of 7, then 
       print out the factorial of that integer.

p2.erl has the same functionality, but uses a loop through tail recursion to repeat the get-input-then-compute cycle, unless the input is 0.

Running both programs:
1) Compile in Erlang
   c(p1).
   c(p2).
2) Run each program:
   a) p1:start().
   b) p2.start().
