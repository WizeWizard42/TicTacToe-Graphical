#include "Game.hpp"
#include <iostream>

#include <QObject>

using std::cout;
using std::endl;

char Game::getPlayer() {return player_;}
void Game::setPlayer(char player) {if (player == 'X' || player == 'O') player_ = player;};

int Game::getTurns() {return turns_;}

Board Game::getBoard() {return board_;}

void Game::startGame()
{
    while(true) {
        cout << *this << endl;
        if (turns_ >= 99) cout << "Player " << player_ << " wins!" << endl;
        if (turns_ >= 9) break;
        takeTurn();
        if (checkWin()) turns_ = 99;
    }
}

void Game::takeTurn()
{
    player_ == 'X' ? player_ = 'O' : player_ = 'X';
    turns_++;
}

bool Game::checkWin()
{
    for (std::array<char, 3> it : board_.getBoard()) if (it[0] == player_ && it[1] == player_ && it[2] == player_) return true;

    for (unsigned int i = 0; i < board_.getBoard().size(); i++) if (board_.getBoard()[0][i] == player_ && board_.getBoard()[1][i] == player_ && board_.getBoard()[2][i] == player_) return true;

    if ((board_.getBoard()[0][0] == player_ && board_.getBoard()[1][1] == player_ && board_.getBoard()[2][2] == player_) || (board_.getBoard()[0][2] == player_ && board_.getBoard()[1][1] == player_ && board_.getBoard()[2][0] == player_)) return true;

    return false;
}

std::ostream& operator<<(std::ostream& os, const Game& game)
{
    os << game.board_ << endl;
    os << "Current player: " << game.player_ << endl;
    os << "Turns taken: " << game.turns_ << endl;
    return os;
}
