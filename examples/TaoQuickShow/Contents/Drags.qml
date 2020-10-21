import QtQuick 2.9
import QtQuick.Controls 2.2
import TaoQuick 1.0

Item {
    anchors.fill: parent
    Column {
        anchors.centerIn: parent
        spacing: 10
        CusLabel {
            text: qsTr("TemplateDragBorder can be use to resize, move or rotation Rectangle by draging corner or border handler") + trans.transString
            wrapMode: Label.WordWrap
            width: 400
        }
        Rectangle {
            width: 600
            height: 300
            border.color: "lightblue"

            Rectangle {
                x: 30
                y: 40
                width: 200
                height: 160
                border.color: "red"
                smooth: true
                antialiasing: true
                CusTemplateDragBorder {
                    width: parent.width + borderMargin * 2
                    height: parent.height + borderMargin * 2
                    anchors.centerIn: parent
                    visible: true
                }
            }
        }
        CusLabel {
            text: qsTr("RectDraw, can draw rect by mouse press and move") + trans.transString
            wrapMode: Label.WordWrap
            width: 400
        }
        Rectangle {
            width: 600
            height: 300
            border.color: "lightblue"

            CusRectDraw {
                anchors.fill: parent
            }
        }
    }
}
