import QtQuick 2.0
import QtQuick.Layouts 1.1
import Material 0.1
import Material.ListItems 0.1 as ListItem
import Material.Extras 0.1

Item {
    View {
        anchors.centerIn: parent

        width: units.dp(350)
        height: column.implicitHeight + units.dp(32)

        elevation: 1
        radius: units.dp(2)

        ColumnLayout {
            id: column

            anchors {
                fill: parent
                topMargin: units.dp(16)
                bottomMargin: units.dp(16)
            }

            Label {
                id: titleLabel

                anchors {
                    left: parent.left
                    right: parent.right
                    margins: units.dp(16)
                }

                style: "title"
                text: "Edit shipping info"
            }

            Item {
                Layout.fillWidth: true
                Layout.preferredHeight: units.dp(8)
            }

            ListItem.Standard {
                action: Icon {
                    anchors.centerIn: parent
                    name: "action/account_child"
                }

                content: TextField {
                    anchors.centerIn: parent
                    width: parent.width

                    text: "Alex Nelson"
                }
            }

            ListItem.Standard {
                action: Icon {
                    anchors.centerIn: parent
                    name: "maps/place"
                }

                content: TextField {
                    anchors.centerIn: parent
                    width: parent.width

                    text: "100 Main Street"
                }
            }

            ListItem.Standard {
                action: Item {}

                content: RowLayout {
                    anchors.centerIn: parent
                    width: parent.width

                    TextField {
                        Layout.alignment: Qt.AlignVCenter
                        Layout.preferredWidth: 0.4 * parent.width

                        text: "New York"
                    }

                    MenuField {
                        Layout.alignment: Qt.AlignVCenter
                        Layout.preferredWidth: 0.2 * parent.width

                        model: ["NY", "NC", "ND"]
                    }

                    TextField {
                        Layout.alignment: Qt.AlignVCenter
                        Layout.preferredWidth: 0.3 * parent.width

                        text: "10011"
                    }
                }
            }

            ListItem.Standard {
                action: Icon {
                    anchors.centerIn: parent
                    name: "communication/email"
                }

                content: TextField {
                    anchors.centerIn: parent
                    width: parent.width

                    placeholderText: "Email"
                }
            }

            Item {
                Layout.fillWidth: true
                Layout.preferredHeight: units.dp(8)
            }

            RowLayout {
                Layout.alignment: Qt.AlignRight
                spacing: units.dp(8)

                anchors {
                    right: parent.right
                    margins: units.dp(16)
                }

                Button {
                    text: "Cancel"
                    textColor: Theme.primaryColor
                }

                Button {
                    text: "Done"
                    textColor: Theme.primaryColor
                }
            }
        }
    }
}
