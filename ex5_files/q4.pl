/*
 * **********************************************
 * aux predicates (see ex5-aux.pl documentation)
 * **********************************************
 */
:- use_module('ex5-aux').

/*
 * **********************************************
 * Question 3:
 * **********************************************
 */

% Signature: allDiff(List, Dups)/2
% Purpose: Dups contains all the elements that appear more than once in List
%          Notice: Dups may not contain duplicate members! 
% Pre-Condition: List is a proper list
% Examples:
% ?- allDiff([2, 3, 4, 5], Dups).
% Dups = []
% ?- allDiff([2, 3, 4, 2, 8, 9, 2], Dups).
% Dups = [2]
%
allDiff(List, Dups) :-
	writeln(unimplemented).

% Signature: noDups(List, WithoutDups)/2
% Purpose: WithoutDups contains the same elements of List with 
%          duplications removed. Meaning, for every element X in 
%          List you should keep the first appearance of X and remove 
%          the rest.
% Pre-Condition: List is a proper list
% Examples:
% ?- noDups([1, 2, 3, 4, 5], X).
% X = [1, 2, 3, 4, 5].
% ?- noDups([1, 2, 3, 4, 5, 3, 4, 5], X).
% X = [1, 2, 3, 4, 5].
% ?- noDups([1, 2, 3, 4, 5, 3, 4, 5], [1, 2, 3, 4, 5]).
% true.
% ?- noDups([1, 2, 3, 4, 5, 3, 4, 5], [1, 2, 4, 5, 3]).
% false.
%
noDups(List, WithoutDups) :-
	writeln(unimplemented).

% Signature: nondupCFG(Text)\1
% Purpose: Test is in the grammer defined by s,
%          and contains no duplicate words.
% Pre-Condition: Text is bound
% Examples:
% ?- nondupCFG([a, cat, saw, the, dog]).
% true.
% ?- nondupCFG([a, cat, saw, a, dog]).
% false.
% ?- nondupCFG([a, cat, understood, the, dog]).
% false.
%
nondupCFG(Text) :-
	writeln(unimplemented).
