import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.14

Window {
    visible: true
    width: 600
    height: 600
    title: qsTr("TicTacToe")

    Item {
        id: tile1
        x: 0
        y: 0
        width: 200
        height: 200

        Image {
            id: tile1O
            visible: false
            anchors.fill: parent
            source: "O.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: tile1X
            visible: true
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Item {
        id: tile2
        x: 200
        y: 0
        width: 200
        height: 200

        Image {
            id: tile2O
            visible: true
            anchors.fill: parent
            source: "O.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: tile2X
            visible: false
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Item {
        id: tile3
        x: 400
        y: 0
        width: 200
        height: 200

        Image {
            id: tile3O
            source: "O.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: tile3X
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }

    Item {
        id: tile4
        x: 0
        y: 200
        width: 200
        height: 200

        Image {
            id: tile4O
            source: "O.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: tile4X
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }

    Item {
        id: tile5
        x: 200
        y: 200
        width: 200
        height: 200

        Image {
            id: tile5O
            source: "O.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: tile5X
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }

    Item {
        id: tile6
        x: 400
        y: 200
        width: 200
        height: 200

        Image {
            id: tile6O
            source: "O.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: tile6X
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }

    Item {
        id: tile7
        x: 0
        y: 400
        width: 200
        height: 200

        Image {
            id: tile7O
            source: "O.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: tile7X
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }

    Item {
        id: tile8
        x: 200
        y: 400
        width: 200
        height: 200

        Image {
            id: tile8O
            source: "O.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: tile8X
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }

    Item {
        id: tile9
        x: 400
        y: 400
        width: 200
        height: 200

        Image {
            id: tile9O
            source: "O.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: tile9X
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }


}

/*##^##
Designer {
    D{i:2;anchors_width:200;anchors_x:0;anchors_y:0}D{i:3;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:1;anchors_height:400;anchors_width:400;anchors_x:120;anchors_y:40}D{i:5;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:6;anchors_width:200;anchors_x:-9;anchors_y:-8}D{i:8;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:9;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:11;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:12;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:14;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:15;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:17;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:18;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:20;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:21;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:23;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:24;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:26;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:27;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}
}
##^##*/
