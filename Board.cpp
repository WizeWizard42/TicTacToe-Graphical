#include "Board.hpp"

#include <array>
#include <algorithm>
#include <iostream>

using std::cout;
using std::endl;

Board::Board() {board_.fill(std::array<char, 3>{{'I', 'I', 'I'}});};

const std::array<std::array<char, 3>, 3> Board::getBoard() {return board_;}

char Board::getTile(int row, int column) {return board_[row][column];}

int Board::setTile(int x, int y, char XorO)
{
    if ((XorO == 'X' || XorO == 'O') && board_[x][y] == 'I')
    {
        if (x <= 2 && x >= 0 && y <= 2 && y >= 0)
        {
            board_[x][y] = XorO;
            return 0;
        }
        cout << "Error: You tried to access a cell outside of the board!" << endl;
        return 1;
    }
    cout << "Error: Cell is already filled with X or O, or you attempted to fill a cell with something other than an X or O!" << endl;
    return 1;
}

std::ostream& operator<<(std::ostream& os, const Board& board)
{
    for (std::array<char, 3> it : board.board_)
    {
        for (char itsit : it)
        {
            os << "[" << itsit << "] ";
        }
        os << endl;
    }
    return os;
}
