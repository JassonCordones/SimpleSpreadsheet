import QtQuick 2.15
import QtQuick.Controls 2.15

GridView {
    id: spreadsheet
    cellWidth: 100
    cellHeight: 30
    model: rowCount * columnCount
    property int rowCount: 10
    property int columnCount: 5

    delegate: Cell {
        row: index / columnCount
        column: index % columnCount
    }
}