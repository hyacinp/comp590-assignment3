% team: Kibby Hyacinth Pangilinan

-module(p2).
-export([start/0, loop/0]).

start() ->
   loop().

loop() ->
   io:format("Enter a number: "),
   case io:fread("", "~d") of
        {ok, [0]} ->
            io:format("Exiting...~n");
        {ok, [Num]} ->
            p1:compute(Num),
            loop();
        _ ->
            io:format("Invalid input. Please enter an integer.~n"),
            loop()
    end.

