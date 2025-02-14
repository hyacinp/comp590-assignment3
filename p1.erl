 % team: Kibby Hyacinth Pangilinan

-module(p1).
-export ([start/0, get_numData/0, process_input/1, compute/1, factorial/1]).

start() ->
    Num = get_numData(),
    process_input(Num).

get_numData() ->
    case io:read("Enter a number (0 to exit): ") of
        {ok, Num} when is_integer(Num) -> Num;
        _ ->
            io:format("not an integer~n"),
            get_numData()
    end.


process_input(Num) when is_integer(Num) ->
    compute(Num).

compute(Num) when Num < 0 ->
    Result = math:pow(abs(Num), 7),
    io:format("Absolute value to the 7th power: ~w~n", [Result]);

compute(0) ->
    io:format("0~n");

compute(Num) when Num > 0, Num rem 7 == 0 ->
    Result = math:pow(Num, 1/5),
    io:format("5th root: ~w~n", [Result]);

compute(Num) when Num > 0 ->
    Factorial = factorial(Num),
    io:format("Factorial: ~w~n", [Factorial]).

factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).
