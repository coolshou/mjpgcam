QT += core gui
QT += network
# QT += openglwidgets

# for Windows qDebug()
CONFIG += console

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

VERSION = 0.0.2.0
QMAKE_TARGET_COMPANY="coolshou.idv.tw"
QMAKE_TARGET_DESCRIPTION="mjpg webcam"
QMAKE_TARGET_COPYRIGHT="coolshou ©2026"
QMAKE_TARGET_PRODUCT="mjpgcam"

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/main.cpp \
    src/mainwindow.cpp \
    src/mjpegstreamer.cpp

HEADERS += \
    src/mainwindow.h \
    src/mjpegstreamer.h

FORMS += \
    src/mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    mjpgcam.qrc

win32 {
    RC_ICONS = images/mjpgcam.ico
    DEPLOY_COMMAND += $$shell_quote($$shell_path($$[QT_INSTALL_BINS]\windeployqt))
    DEPLOY_TARGET_EXE = $$shell_quote($$shell_path($${OUT_PWD}/release/$${TARGET}.exe))
    DEPLOY_TARGET = $$shell_quote($$shell_path($${OUT_PWD}/release/$${TARGET}-$${VERSION}))
    QMAKE_POST_LINK = $$quote(cmd /c if not exist "$${DEPLOY_TARGET}" mkdir "$${DEPLOY_TARGET}"$$escape_expand(\\n\\t))
    QMAKE_POST_LINK += $$quote(cmd /c copy /y $${DEPLOY_TARGET_EXE} "$${DEPLOY_TARGET}\\" $$escape_expand(\\n\\t))
    QMAKE_POST_LINK += $$quote(cmd /c $${DEPLOY_COMMAND} $${DEPLOY_TARGET}\\$${TARGET}.exe $$escape_expand(\\n\\t))

}
unix {
    desktop.files  = mjpgcam.desktop
    desktop.path   = /usr/share/applications/
    INSTALLS       += desktop
    images.files = images/mjpgcam.png
    images.path   = /usr/share/pixmaps/
    INSTALLS       += images
}
