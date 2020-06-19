
QT += qml quick
CONFIG += plugin c++14 qtquickcompiler
CONFIG += file_copies

msvc{
    QMAKE_CFLAGS += -source-charset:utf-8
    QMAKE_CXXFLAGS += -source-charset:utf-8
}
#一部分头文件加入编译预处理，提高编译速度
msvc {
    CONFIG += precompile_header
    PRECOMPILED_HEADER = Src/stdafx.h
    precompile_header:!isEmpty(PRECOMPILED_HEADER) {
        DEFINES += USING_PCH
    }
}

#msvc {
#    HEADERS += $$PWD/Ver-u16.h
#    DEFINES += VER_Utf16
#} else {
    HEADERS += $$PWD/Ver-u8.h
#}
HEADERS += \
    $$PWD/Src/ITaoQuickPlugin.h \
    $$PWD/Src/Logger/Logger.h \
    $$PWD/Src/Logger/LoggerTemplate.h \
    $$PWD/Src/TaoView.h \
    $$PWD/Src/Trans.h \
    $$PWD/Src/FileReadWrite.h \
    $$PWD/Src/PluginLoader.h


SOURCES += \
    $$PWD/Src/Logger/Logger.cpp \
    $$PWD/Src/TaoView.cpp \
    $$PWD/Src/Trans.cpp \
    $$PWD/Src/PluginLoader.cpp \
    $$PWD/Src/main.cpp

RESOURCES += \
    $$PWD/Qml.qrc \
    $$PWD/Image.qrc
