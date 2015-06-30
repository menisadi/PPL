/*
 * **********************************************
 * aux predicates (see ex5-aux.pl documentation)
 * **********************************************
 */
:- use_module('ex5-aux').

/*
 * **********************************************
 * Question 7:
 * 
 * Change the interpreter such that every answer is 
 * returned four times instead of once.
 * 
 * The order by which answers are returned does not matter -
 * as long as all answers are retuned.
 * **********************************************
 */

% Signature: solve(Exp, Proof)/2
% Purpose: meta circular interpreter for Prolog
%          which returnes each answer 4 times.
%          The answers order is irrelevant, of course.
% Examples:
%rule(member(A, [A|_]), []).
%rule(member(A, [_|B]), [member(A, B)]).
%
% ?- solve(true, _).
% true;
% true;
% true;
% true;
% false.
% 
% ?- solve(member(X, [1,2]), _).
% X = 1 ;
% X = 2 ;
% X = 1 ;
% X = 2 ;
% X = 1 ;
% X = 2 ;
% X = 1 ;
% X = 2 ;
% false
% 

solve(A,B):- solve_helper(A,B), member(_, [1,2,3,4]).

solve_helper(true, true). %1
solve_helper([], []). %2
solve_helper([A|B],[ProofA|ProofB]) :- solve_helper(A, ProofA), solve_helper(B, ProofB). %3
solve_helper(A, node(A,Proof)) :- rule(A, B), solve_helper(B,Proof).
