# Goofy-ahh-Chess
Right now, This seeks to be a fully coded game of chess that acounts for all standard chess rules as a fun personal python project. Eventually, I will add my own spin on the game.

## Progress thus far
Most of the work will be commited to 'Pre-release-main', and will be mostly back-end stuff. Right now, the entirety of the game is being tested through a coupld of csv files. I'm using this just so I can visualize the board and piece movement without any gui work (for which i will eventually be using pyGame).

### Piece movement
The pieces have a couple of functions that determine what legal moves can be made. Here are the functions implemented so far:
* getLegal: This gets the all possible positions that a piece could move, assuming that there are no other pieces on the board.
* getLegal_limited: this is a subfunction of getLegal that only applies to knights and kings.
* getPiece: This reads the piece from a specified position of the 'chess.csv' file. Eventually this will be changed to read from a list instead.
* getLegal_pin: This function is sort of implemented. Basically, it will if a piece is pinned your king or not. However, this also needs to return the legal moves this presents since som pieces (everything but knights) can still move in the direction of the pin when they are pinned.
* getMove, which takes a piece and moves it to a specific location. It even works for captures.

Functions that will likely be implemented next include getLegal_obstacle, which will detect any pieces in the way of the queen, rook, bishop, or pawn. Also, pawn legality in general needs to be implemented.
