include (../QtLeapMotion_Global.pri)

# WORKS ONLY WITH QT COMPILED FOR MSVC
win32: {
 !contains(QMAKE_HOST.arch, x86_64) {
        message("x86 build")
        message($$OUT_PWD)
        LIBS += $$OUT_PWD/../../QtLeapMotion/QtLeapMotion.lib
    } else {
        message("x86_64 build")
        LIBS += $$OUT_PWD/../../QtLeapMotion/QtLeapMotion.lib
    }
}

linux-g++: {
        message($$OUT_PWD)
    !contains(QMAKE_HOST.arch, x86_64) {
        LIBS += -L$$OUT_PWD/../../QtLeapMotion/ -lQtLeapMotion
    } else {
        message("x86_64 build")
        LIBS += -L$$OUT_PWD/../../QtLeapMotion/ -lQtLeapMotion
    }
}

macx{
        LIBS += -L$$OUT_PWD/../../QtLeapMotion/ -lQtLeapMotion
}
