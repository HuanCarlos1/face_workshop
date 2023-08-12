import QtQuick 2.4

Item {
    id: root
    width: parent.width
    height: 60*dp

    Rectangle {
        anchors.fill: parent
        color: mouseAreaOption.containsPress ? "#f2f2ee" : "transparent"
    }

    Text {
        x: 8*dp
        text: model.name
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: model.subtext ? -11*dp : 0
        font.pixelSize: 18*dp
    }

    Text {
        x: 8*dp
        text: model.subtext || ""
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 11*dp
        font.pixelSize: 16*dp
        color: "#555"
    }

    MouseArea {
        id: mouseAreaOption
        anchors.fill: parent
        onClicked: {
            if (model.modelData.action) model.modelData.action();
        }
    }

    Rectangle {
        height: Math.ceil(1*dp)
        width: parent.width
        color: "#ddd"
        y: parent.height - 1*dp
    }
}
