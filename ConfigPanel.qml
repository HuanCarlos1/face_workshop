import QtQuick 2.4
import "qrc:/material"
import "qrc:/frags"
import "qrc:/singletons"

Item {
    id: configPanel
    width: window.width

    Rectangle {
        anchors.fill: parent
        color: "#fafafa"
    }

    Item {
        id: panelContent
        anchors.fill: parent
        anchors.rightMargin: 24*dp
        anchors.leftMargin: anchors.rightMargin

        ScrollableListView {
            id: configOptions
            anchors.fill: parent
            model: ConfigOptionsModel.model
            delegate: ConfigOption {}
            section.property: "group"
            section.criteria: ViewSection.FullString
            section.delegate: sectionHeading
            spacing: 0
        }

        Component {
            id: sectionHeading

            Item {
                width: panelContent.width
                height: 48*dp

                Text {
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: 11*dp
                    font.bold: true
                    color: "#333"
                    text: section
                    x: 8*dp
                    y: 28*dp
                }

                Rectangle {
                    width: panelContent.width
                    height: Math.ceil(2*dp)
                    color: "#caccca"
                    y: parent.height - height
                }
            }
        }
    }
}
