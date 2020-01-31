#ifndef GAME_HPP
#define GAME_HPP

#include "Board.hpp"
#include <ostream>

#include <QObject>

class Game : public QObject
{
    Q_OBJECT
    public:
        Game (QObject* parent = 0) : QObject(parent) {}
        Q_INVOKABLE char getPlayer ();
        Q_INVOKABLE void setPlayer(char);

        Q_INVOKABLE int getTurns();

        Q_INVOKABLE Board getBoard();

        Q_INVOKABLE void takeTurn();
        Q_INVOKABLE bool checkWin();
        
        Q_INVOKABLE void startGame();

        friend std::ostream& operator<<(std::ostream&, const Game&);
    private:
        char player_;
        int turns_;
        Board board_;
};

std::ostream& operator<<(std::ostream&, const Game&);

#endif // GAME_HPP
