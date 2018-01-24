TEMPLATE = lib

CONFIG += shared
QT -= core gui

win32:INCLUDEPATH += "C:\Program Files\Java\default\include"
win32:INCLUDEPATH += "C:\Program Files\Java\default\include\win32"

unix:INCLUDEPATH += "/usr/lib/jvm/default/include"
unix:INCLUDEPATH += "/usr/lib/jvm/default/include/linux"

win32:LIBS += -L"$$_PRO_FILE_PWD_$$\..\..\src\main\resources\lib\tobii\x64"
win32:DESTDIR = "$$_PRO_FILE_PWD_$$\..\..\src\main\resources\lib\tobii\x64"

LIBS += -ltobii_stream_engine
TARGET = tobii_jni_stream_engine

SOURCES += \
    tobii_jni.cpp \
    tobii_device.cpp \
    tobii_api.cpp

HEADERS += \
    tobii_jni.h \
    tobii_api.h \
    tobii_device.h \
    tobii_headers.h \
    non_copyable.h
