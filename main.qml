import QtQuick 2.12
import QtQuick.Window 2.12

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
        enabled: true

        Image {
            id: tile1O
            visible: false
            anchors.fill: parent
            source: "O.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: tile1X
            visible: false
            anchors.fill: parent
            source: "X.png"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: {
                Game.takeTurn(0, 0);
            }
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
            visible: false
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

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
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

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
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

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
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

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
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

        MouseArea {
            id: mouseArea6
            anchors.fill: parent
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

        MouseArea {
            id: mouseArea7
            anchors.fill: parent
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

        MouseArea {
            id: mouseArea8
            anchors.fill: parent
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

        MouseArea {
            id: mouseArea9
            anchors.fill: parent
        }
    }


}

/*##^##
Designer {
    D{i:2;anchors_width:200;anchors_x:0;anchors_y:0}D{i:3;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:1;anchors_height:400;anchors_width:400;anchors_x:120;anchors_y:40}D{i:6;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:7;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:10;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:11;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:14;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:15;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:18;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:19;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:22;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:23;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:26;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:27;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:30;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:31;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}D{i:34;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:35;anchors_width:200;anchors_x:"-9";anchors_y:"-8"}
}
##^##*/
