import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12 // без него не будет работать механизм layout
import QtQuick.Controls.Material 2.3
import QtMultimedia 5.12 // для 2 лабы: воспроизведение и запись видео
import QtQuick.Dialogs 1.2 // для "открыть видео" во 2 лабе, пока не реализовано
import QtQuick.Controls.Styles 1.4 // можно менять стили кнопки, но в итоге пока не используется
import QtGraphicalEffects 1.0
import QtQuick 2.0
import QtQuick.Window 2.12
import QtQml 2.12
import QtWebView 1.1
import QtWebSockets 1.1


ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }
    }


    Drawer{
            id: drawer
            width: 0.45 * parent.width
            height: parent.height
            Material.background: "white"

            GridLayout{
                width: parent.width
                columns: 1

                Label{
                    id: label
                    text: "Содержание"

                    anchors.top: parent.top
                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 18
                    color: "Black"
                }

                Rectangle{
                    Layout.fillWidth: true
                    height: 1
                    color: "black"

                    anchors.top: label.bottom
                    anchors.topMargin: 4
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                }

                Button{
                    text: "1. Вход"

                    flat: true
                    onClicked: {
                        swipeView.currentIndex = 0
                        drawer.close()
                    }
                }

                Button{
                    text: "2. Публикации"
                    flat: true
                    onClicked: {
                        swipeView.currentIndex = 1
                        drawer.close()
                    }
                }
                Label{
                    id: label2
                    text: "Название приложенея:"

//                    anchors.top: parent.top
//                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 16
                    color: "Blue"
                }
                Label{
                    id: label3
                    text: "TohsyrovPublik"

//                    anchors.top: parent.top
//                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 13
                    color: "Black"
                }

                Label{
                    id: label4
                    text: "Название дисциплины:"

//                    anchors.top: parent.top
//                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 16
                    color: "Blue"
                }
                Label{
                    id: label5
                    text: "Разработка безопасных сетевых приложений"

//                    anchors.top: parent.top
//                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 13
                    color: "Black"
                }

                Label{
                    id: label6
                    text: "Email:"

//                    anchors.top: parent.top
//                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 16
                    color: "Blue"
                }

                Label{
                    id: label7
                    text: "Tohsyrov@yandex.ru"

//                    anchors.top: parent.top
//                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 13
                    color: "Black"
                }
                Label{
                    id: label8
                    text: "Git-репозиторий:"

//                    anchors.top: parent.top
//                    anchors.topMargin: 10

                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 16
                    color: "Blue"
                }

                Label{
                    id: label9
                    onLinkActivated: Qt.openUrlExternally("https://github.com/TohsyrovD/Tohsyrov_D_V_191_351")

text: "<a href='https://github.com/TohsyrovD/Tohsyrov_D_V_191_351'>https://github.com/TohsyrovD/Tohsyrov_D_V_191_351</a>"
wrapMode: Text.WrapAnywhere
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 13
                    color: "Black"
                }
                Image {

                    sourceSize.width: 100
                           sourceSize.height: 100
                  source: "qrc:/mospolytech-logo-white.png"
           anchors.bottom: parent.bottom
                }


              }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
}
