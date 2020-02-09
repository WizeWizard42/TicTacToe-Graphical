#ifndef CCLICKABLELABEL_HPP
#define CCLICKABLELABEL_HPP

#include <QMainWindow>
#include <QObject>
#include <QLabel>

class CClickableLabel : public QLabel
{
    Q_OBJECT
public:
    CClickableLabel(QString text = "ClickableLabel", QWidget *parent = 0) : QLabel(text, parent) {};
    ~CClickableLabel() {};

protected:
    void mousePressEvent(QMouseEvent *event);
};

#endif // CCLICKABLELABEL_HPP
