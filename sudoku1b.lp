% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)
#const upper=4.
#const n=2.
% Your implementation please...
row(1..upper).
col(1..upper).
num(1..upper).
1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).
sudoku(X,Y,N) :- initial(X,Y,N).
:- { sudoku(X,Y,N) : col(Y) } > 1, row(X), num(N).
:- { sudoku(X,Y,N) : row(X) } > 1, col(Y), num(N).
subgrid(X, Y, 1 + (((X-1)/n)*n + (Y-1)/n)) :- row(X), col(Y).
#show sudoku/3.
