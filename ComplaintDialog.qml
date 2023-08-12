import QtQuick 2.4
import "qrc:/material"

Dialog {
    spacing: 20*dp

    Text {
        id: complaintGreeting
        color: "#000"
        text: "Você está denunciando o desafio <i>desafio</i> de <i>"+duvido.myName+"</i>"
        font.pixelSize: 14*dp
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 40*dp
        wrapMode: Text.WordWrap
    }

    TextField {
        label: "Qual o motivo da denúncia?"
        width: parent.width - 40*dp
        maxHeight: 120*dp
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Row {
        anchors.right: parent.right
        anchors.rightMargin: 20*dp
        spacing: 8*dp

        Button {
            flat: true
            text: "Cancelar"
            color: "#977"
            onClicked: closeDialog();
        }

        Button {
            flat: true
            text: "Denunciar"
            color: "#0f6464"
            onClicked: closeDialog();
        }
    }
}
