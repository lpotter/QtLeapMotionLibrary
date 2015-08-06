HOME_DIR=$$(HOME)
LEAP_SDK=$$HOME_DIR/LeapSDK

INCLUDEPATH += $$LEAP_SDK/include
# WORKS ONLY WITH QT COMPILED FOR MSVC
win32: {
 !contains(QMAKE_HOST.arch, x86_64) {
        message("x86 build")
        message($$OUT_PWD)
        LIBS += $$LEAP_SDK/x86/Leap.lib
    } else {
        message("x86_64 build")
        LIBS += $$LEAP_SDK/x64/Leap.lib
    }
}

linux-g++: {
        message($$OUT_PWD)
    !contains(QMAKE_HOST.arch, x86_64) {
        LIBS += -L$$LEAP_SDK/lib/x86/ -lLeap
    } else {
        message("x86_64 build")
        LIBS += -L$$LEAP_SDK/lib/x64/ -lLeap
    }
}

macx{
        LIBS += -L$$LEAP_SDK/lib -lLeap
}

DISTFILES += \
    $$PWD/QtLeapMotionExamples_GLobal.pri
