-module(can).
-export([open/0, drink/0, recycle/0, crush/0]).

open() ->
	io:format("Pshhhhhht\n").

drink() -> 
	io:format("Glug glug glug\n").

recycle() ->
	io:format("Mother nature thanks you\n").

crush() ->
   	io:format("Crushed... RAWK!\n").
