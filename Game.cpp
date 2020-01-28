#include "Game.hpp"
#include <iostream>

using std::cout;
using std::endl;

char Game::getPlayer() {return player_;}
void Game::setPlayer(char player) {if (player == 'X' || player == 'O') player_ = player;};

int Game::getTurns() {return turns_;}

Board Game::getBoard() {return board_;}

void Game::takeTurn(char player='X')
{
    setPlayer(player);
    cout << *this << endl;
    while (true)
    {
        int x;
        int y;
        cout << "Please enter the row number: ";
        std::cin >> x;
        cout << endl;
        cout << "Please enter the column number: ";
        std::cin >> y;
        cout << endl;
        if (x > 0 && x < 2 && this->board_.getBoard()[x][y] != 'X' && this->board_.getBoard()[x][y] != 'O')
        {
            this->board_.setTile(x, y, player);
            cout << "Player's " << player << " has been placed on [" << x << "][" << y << "]!" << endl;
            break;
        }
        cout << "You either entered a number less than zero or greater than 3, or picked a full tile. Please pick another." << endl;
    }
}

bool Game::checkWin()
{
    cout << "Current player is: " << player_ << endl;

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
