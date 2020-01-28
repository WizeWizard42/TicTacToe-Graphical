#ifndef GAME_HPP
#define GAME_HPP

#include "Board.hpp"
#include <ostream>

class Game
{
    public:
        char getPlayer ();
        void setPlayer(char);

        int getTurns();

        Board getBoard();

        void takeTurn(char);
        bool checkWin();
        
        void startGame();

        friend std::ostream& operator<<(std::ostream&, const Game&);
    private:
        char player_;
        int turns_;
        Board board_;
};

std::ostream& operator<<(std::ostream&, const Game&);

#endif // GAME_HPP
