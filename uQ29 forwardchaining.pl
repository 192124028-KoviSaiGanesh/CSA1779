% Facts
bird(penguin).
bird(sparrow).
bird(albatross).

% Rules
flies(X) :- bird(X), X \= penguin.

% Forward Chaining
infer(Fact) :-
    call(Fact), !.

infer(Fact) :-
    rule(Rule, Fact),
    call(Rule),
    assertz(Fact).

rule(flies(X), flies(X)) :-
    bird(X), X \= penguin.

% Queries
:- dynamic flies/1. % To allow dynamic assertion of flies/1

queries :-
    infer(flies(X)),
    write(X), write(' can fly.'), nl,
    fail. % Force backtracking to find all possible answers

queries :- retractall(flies(_)). % Clean up dynamic facts after querying

