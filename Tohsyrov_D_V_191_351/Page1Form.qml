import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
Page {
    width: 600
    height: 400
    header: ToolBar { //Заголовочный элемент, что содержит картинку, текст и прямоугольник
     contentHeight: 50
            anchors.top: parent.top

     background: Rectangle{
     color: "#0000ff"
            }

//             Button {
//                 id: control

//                 icon.source: "qrc:/175-1751649_hamburger-svg-drawn-free-free-hamburger-menu-icon.png"
//                   onClicked: drawer.open()

//                 background: Rectangle {


//                     border.width: 1
//                     radius: 2
//                     color: "#0000ff"  // I update background color by this
//                 }
//             }

            Rectangle { //Место для картинки и текста
                id: mask
                width: 36
                height: 36
                //radius: 18
                visible: false
                color: "white"
            }

            Label { //Зададим текст для нашего заголовка
                x: 45
                anchors.verticalCenter: parent.verticalCenter
                opacity: 1
                color: "#ffffff"
                text: "Страница Аутентификации"
//                font.family: "Times New Roman"
                font.pixelSize: Qt.application.font.pixelSize * 1.75
                padding: 10
            }

        }


    ColumnLayout{
        anchors.fill: parent
        anchors.margins: 5
        anchors.topMargin: 10
        Text{
            text: "Имя"
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignBottom
            color: "blue"
            font.pixelSize: 16
        }
        TextField{
            id: username
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop
            font.pixelSize: 13
            color: "black"
        }
        Text{
            text: "Пароль"
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignBottom
            Layout.topMargin: 0
            Layout.bottomMargin: 0
            color: "blue"
            font.pixelSize: 16
        }
        RowLayout{
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignTop
            Layout.topMargin: 0
            TextField{
                id: password
                Layout.fillWidth: true
                echoMode: TextInput.Password
                color: "#000000"
                maximumLength: 32
            }
            Button{
                onClicked: {
                    password.echoMode == TextInput.Password ? password.echoMode=TextInput.Normal : password.echoMode = TextInput.Password
                }

                icon.color: "#000000"
            }
        }
        Button{
        text: "Войти"
        }
//        RowLayout{
//            Layout.alignment: Qt.AlignHCenter
//            Button{
//                text: "login"
//                onClicked: {
//                    if(username.text && password.text)
//                        login()
//                }
//            }
//            Button{
//                text: "get info"
//                onClicked: {
//                    getinfo()
//                }
//            }
//        }
//        TextArea{
//            Layout.fillWidth: true
//            id: response_area
//            readOnly: true
//            wrapMode: Text.WrapAnywhere
//        }
//        Item{
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//            Image {
//                id: b64_img
//                width: parent.width
//                height: parent.height
//                anchors.horizontalCenter: parent.horizontalCenter
//                fillMode: Image.PreserveAspectFit
//            }
//        }

    }
}
