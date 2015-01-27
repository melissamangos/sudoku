#Sudoku
This is a Prolog program that can solve a 4x4 sudoku puzzle. (I also made one that solves 9x9 but it takes a while to complete diffcult puzzles).

#How to Use
To run the program you have to call the predicate <i>sudoku</i>. Blank spaces are called using an underscore, '_'. <br>Here's an example:
<code>
	sudoku(
		4, _, _, _,
		_, 3, _, _,
		_, _, 1, _,
		_, 1, _, 2).
</code>