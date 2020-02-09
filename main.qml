import QtQuick 2.12
import QtQuick.Window 2.12
import com.myself 1.0

Window {
    id: window
    visible: true
    width: 600
    height: 600
    title: qsTr("TicTacToe")

    Game {
        id: game
    }

    Grid {
        id: grid
        objectName: "grid"
        anchors.fill: parent
        rows: 3
        columns: 3

        CClickableLabel {
            id: tile00
            objectName: "tile00"

        }

        CClickableLabel {
            id: tile01
            objectName: "tile01"

        }

        CClickableLabel {
            id: tile02
            objectName: "tile02"

        }

        CClickableLabel {
            id: tile10
            objectName: "tile10"

        }

        CClickableLabel {
            id: tile11
            objectName: "tile11"

        }

        CClickableLabel {
            id: tile12
            objectName: "tile12"

        }

        CClickableLabel {
            id: tile20
            objectName: "tile20"

        }

        CClickableLabel {
            id: tile21
            objectName: "tile21"

        }

        CClickableLabel {
            id: tile22
            objectName: "tile22"

        }
    }
}
