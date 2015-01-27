% Main predicate, calles other predicates
sudoku(R1C1, R1C2, R1C3, R1C4, R2C1, R2C2, R2C3, R2C4, R3C1, R3C2, R3C3, R3C4, R4C1, R4C2, R4C3, R4C4) :- solved(R1C1, R1C2, R1C3, R1C4, R2C1, R2C2, R2C3, R2C4, R3C1, R3C2, R3C3, R3C4, R4C1, R4C2, R4C3, R4C4),
	printsudoku(R1C1, R1C2, R1C3, R1C4),
	printsudoku(R2C1, R2C2, R2C3, R2C4),
	printsudoku(R3C1, R3C2, R3C3, R3C4),
	printsudoku(R4C1, R4C2, R4C3, R4C4).

% Helps to print the values
printsudoku(A, B, C, D) :- write(' '), write(A), write('  '), write(B), write('  '), write(C), write('  '), write(D), nl.

% Solves the puzzle by making sure the values are all different
solved(R1C1, R1C2, R1C3, R1C4, R2C1, R2C2, R2C3, R2C4, R3C1, R3C2, R3C3, R3C4, R4C1, R4C2, R4C3, R4C4) :-
	different(R1C1, R1C2, R1C3, R1C4), % First row
	different(R2C1, R2C2, R2C3, R2C4), % Second row
	different(R3C1, R3C2, R3C3, R3C4), % Third row
	different(R4C1, R4C2, R4C3, R4C4), % Fourth row
	different(R1C1, R2C1, R3C1, R4C1), % First column
	different(R1C2, R2C2, R3C2, R4C2), % Second column
	different(R1C3, R2C3, R3C3, R4C3), % Third column
	different(R1C4, R2C4, R3C4, R4C4), % Fourth column
	different(R1C1, R1C2, R2C1, R2C2), % Top Left block
	different(R1C3, R1C4, R2C3, R2C4), % Top Right block
	different(R3C1, R3C2, R4C1, R4C2), % Bottom Left block
	different(R3C3, R3C4, R4C3, R4C4). % Bottom Right block

% Determine if each square in either a row, column, or block are
% different
different(A, B, C, D) :- num(A), num(B), num(C), num(D), A\=B, A\=C, A\=D, B\=C, B\=D, C\=D.

% Initialize numbers
num(1). num(2). num(3). num(4).

