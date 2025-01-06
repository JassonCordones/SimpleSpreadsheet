import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: cell
    property int row: 0
    property int column: 0

    Rectangle {
        width: spreadsheet.cellWidth
        height: spreadsheet.cellHeight
        border.color: "black"

        TextField {
            anchors.fill: parent
            text: ""
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

}
