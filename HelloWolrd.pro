QT       += core gui webenginewidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++20

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

Release:DESTDIR = release
Release:OBJECTS_DIR = release/.obj

Debug:DESTDIR = debug
Debug:OBJECTS_DIR = debug/.obj

## Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target
