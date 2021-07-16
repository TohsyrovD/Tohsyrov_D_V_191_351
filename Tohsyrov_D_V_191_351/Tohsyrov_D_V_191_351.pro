QT += quick
QT += network

CONFIG += c++11
# pro-файл - это конфиг(настройки) для системы сборки qmake
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment. Условная сборка, варианты настроек для каждой ОС
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

HEADERS +=

# -- Для лабы по шифровнию --

# статические библиотеки lib могут содуржать
# 1) сам машинный скомпилированный код функций (если lib собраны для статического свзывания)
# 2) если .lib участвуют в динамическом связывании, то в них содержится только информация (таблицы)
#    чтобы программа могла подключать парные с ними *.dll

# статическое и динамическое связывание библиотекы - надо знать
# чтоб только для винды, если не указать win-32 то если вызвать в плюсах функцию, при сборке андроид будет ошибка
win32{
LIBS += C:\Qt\Tools\OpenSSL\Win_x64\lib\libssl.lib \
     C:\Qt\Tools\OpenSSL\Win_x64\lib\libcrypto.lib
     }
INCLUDEPATH += C:\Qt\Tools\OpenSSL\Win_x64\include\


#android {
#LIBS += C:\Users\user\AppData\Local\Android\Sdk\android_openssl\static\lib\arm\libssl.a \
#        C:\Users\user\AppData\Local\Android\Sdk\android_openssl\static\lib\arm\libcrypto.a
#}

# при копировании кода из вики, следить за типа (сишные типы(char, int и т.д.) в типы QT)
# -- Для лабы по шифровнию --

android: include(C:/Qt/Tools/OpenSSL/android_openssl-master/openssl.pri)
#QT += core gui webkit widgets webkitwidgets


QT += webview
QT += multimediawidgets

QMAKE_EXTRA_TARGETS += before_build makefilehook


makefilehook.target = $(MAKEFILE)

makefilehook.depends = .beforebuild



PRE_TARGETDEPS += .beforebuild


before_build.target = .beforebuild

before_build.depends = FORCE

before_build.commands = chcp 1251
