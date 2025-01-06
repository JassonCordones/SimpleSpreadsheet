import QtQuick 2.15
import QtQuick.Controls 2.15
import "components"

Window {
    visible: true
    width: 800
    height: 600
    title: "SimpleSpreadsheet MVP"

    Item {
        id: root
        anchors.fill: parent

        Spreadsheet {
            anchors.fill: parent
            rowCount: 10
            columnCount: 10
        }
    }

}
