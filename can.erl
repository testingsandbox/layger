-module(can).
-export([new/2, open/1, drink/1, recycle/1, crush/1]).

-record(can, {
		contents = beer,
		capacity = {12, oz},
		state = closed,
		full = true
		}).

new(Contents, Capacity) ->
	#can{contents=Contents, capacity=Capacity}.

open(Can) ->
	io:format("Pshhhhhht\n"),
	Can#can{state=open}.

drink(Can = #can{state=open, full=true}) -> 
	io:format("Glug glug glug\n"),
	Can#can{full=false};
drink(#can{state=open}) ->
	io:format("The can isn't open~n"),
	{error, not_open};
drink(#can{full=false}) ->
	io:format("It's empty~n"),
	{error, empty}.

recycle(_Can) ->
	io:format("Mother nature thanks you\n").

crush(_Can) ->
	io:format("Crushed... RAWK!\n").
