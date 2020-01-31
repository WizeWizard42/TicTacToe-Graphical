#ifndef BOARD_HPP
#define BOARD_HPP

#include <ostream>
#include <array>

#include <QObject>

class Board : public QObject
{
    Q_OBJECT
    public:
        Board (QObject* parent = 0) : QObject(parent) {board_.fill(std::array<char, 3>{{'I', 'I', 'I'}});};

        Q_INVOKABLE char getTile(int, int);
        Q_INVOKABLE int setTile(int, int, char);

        Q_INVOKABLE const std::array<std::array<char, 3>, 3> getBoard();

        friend std::ostream& operator<<(std::ostream&, const Board&);
    private:
        std::array<std::array<char, 3>, 3> board_;
};

std::ostream& operator<<(std::ostream&, const Board&);

#endif // BOARD_HPP
