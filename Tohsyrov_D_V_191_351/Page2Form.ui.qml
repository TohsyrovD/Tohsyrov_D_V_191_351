import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.3

Page {
    width: 600
    height: 400

    header: ToolBar {
        //Заголовочный элемент, что содержит картинку, текст и прямоугольник
        contentHeight: 50
        anchors.top: parent.top

        background: Rectangle {
            color: "#0000ff"
        }

        Button {
            id: control

            icon.source: "qrc:/175-1751649_hamburger-svg-drawn-free-free-hamburger-menu-icon.png"

            onClicked: drawer.open()
            background: Rectangle {

                border.width: 1
                radius: 2
                color: "#0000ff" // I update background color by this
            }
        }

        Rectangle {
            //Место для картинки и текста
            id: mask
            width: 36
            height: 36
            //radius: 18
            visible: false
            color: "white"
        }

        Label {
            //Зададим текст для нашего заголовка
            x: 45
            anchors.verticalCenter: parent.verticalCenter
            opacity: 1
            color: "white"
            text: "Публикации"
            //                font.family: "Times New Roman"
            font.pixelSize: Qt.application.font.pixelSize * 1.75
            padding: 10
        }
    }

    Rectangle {
        id: rectangle
        x: 35
        y: 94
        width: 530
        height: 245
        color: "#ffffff"

            Image {
                id: image
                x: 0
                y: 0
                width: 79
                height: 79
                source: "qrc:/mospolytech-logo-white.png"
                fillMode: Image.PreserveAspectFit

                Text {
                    id: text1
                    x: 8
                    y: 86
                    width: 58
                    height: 14
                    text: qsTr("Московский Политех")
                    font.pixelSize: 16
                }
            }

            Rectangle {
                id: rectangle1
                x: 137
                y: 0
                width: 390
                height: 57
                color: "#ffffff"

                Image {
                    id: image1
                    x: -7
                    y: 201
                    width: 25
                    height: 25
                    source: "qrc:/37-372547_top-masonic-blogs-youtube-comment-icon-png-clipart.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: image2
                    x: 357
                    y: 201
                    width: 25
                    height: 25
                    source: "qrc:/53-533552_vector-royalty-free-thing-leadoutloud-cool-tools-for.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: image3
                    x: -122
                    y: 201
                    width: 25
                    height: 25
                    source: "qrc:/like-thumb-black-product.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: image4
                    x: -77
                    y: 201
                    width: 25
                    height: 25
                    source: "qrc:/dislike.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: text2
                x: 8
                y: 110
                width: 505
                height: 83
                text: qsTr("Задавайте вопросы о поступлении и обучении на факультете📕

С 10:00 до 18:00 с понедельника по пятницу,а в субботу и воскресенье с 10:00 до 16:00

Сделать это можно на платформе «Zoom», перейдя по ссылке
")
                font.pixelSize: 12
            }
        }


    ToolButton {
        id: but_lab_2
        anchors.right: parent.right
        text: qsTr("⋮")
        font.pixelSize: 50
        onClicked: menu.open()
        Menu {
            id: menu
            MenuItem {
                text: "Создание поста"
                onTriggered: {
                    list.visible = true
                    grid.visible = false
                }
            }
            MenuItem {
                text: "Удаленить пост"
                onTriggered: {
                    list.visible = false
                    grid.visible = true
                }
            }
        }
    }








}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5}
}
##^##*/
