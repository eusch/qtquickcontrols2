import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 400
    height: 400
    property alias mouseArea: mouseArea
    property alias loader: loader
    MouseArea {
        id: mouseArea
        property bool isToolTipVisible: false
        width: 200
        height: 200
        hoverEnabled: true
        ToolTip.text: "static tooltip"
        ToolTip.visible: containsMouse
        ToolTip.onVisibleChanged: isToolTipVisible = ToolTip.visible
    }
    Loader {
        id: loader
        active: false
        sourceComponent: Rectangle {
            ToolTip.text: "dynamic tooltip"
            ToolTip.visible: false
        }
    }
}
