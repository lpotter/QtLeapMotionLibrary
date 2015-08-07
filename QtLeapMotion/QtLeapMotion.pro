#/****************************************************************************
#**
#** Copyright (C) Paul Lemire
#** Contact: paul.lemire@epitech.eu
#**
#**
#** GNU Lesser General Public License Usage
#** This file may be used under the terms of the GNU Lesser
#** General Public License version 2.1 as published by the Free Software
#** Foundation and appearing in the file LICENSE.LGPL included in the
#** packaging of this file.  Please review the following information to
#** ensure the GNU Lesser General Public License version 2.1 requirements
#** will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
#**
#** GNU General Public License Usage
#** Alternatively, this file may be used under the terms of the GNU
#** General Public License version 3.0 as published by the Free Software
#** Foundation and appearing in the file LICENSE.GPL included in the
#** packaging of this file.  Please review the following information to
#** ensure the GNU General Public License version 3.0 requirements will be
#** met: http://www.gnu.org/copyleft/gpl.html.
#**
#**
#****************************************************************************/

TEMPLATE = lib

TARGET = QtLeapMotion

DEFINES += QTLEAPMOTION_LIBRARY

CONFIG += dll

QT += qml quick

OBJECTS_DIR = tmp

MOC_DIR = tmp
include (../QtLeapMotion_Global.pri)

#include (./QtQtLeapGlobal/QtQtLeapGlobal.pri)
#include (./QtQtLeapDevice/QtQtLeapDevice.pri)
#include (./QtQtLeapGestures/QtQtLeapGestures.pri)
#include (./QtLeapTouch/QtLeapTouch.pri)


#linux : {
#    QMAKE_LFLAGS += -Wl,--rpath=QtLeapGestures
##    QMAKE_RPATH=
#}

win32:DESTDIR = ./

# QtLeapGlobal

SOURCES += QtLeapGlobal/QtLeapFinger.cpp \
           QtLeapGlobal/QtLeapHand.cpp \
           QtLeapGlobal/QtLeapPointable.cpp \
           QtLeapGlobal/QtLeapTool.cpp \
           QtLeapGlobal/QtLeapUtils.cpp \
           QtLeapGlobal/Handlers/DefaultQtLeapHandsHandler.cpp \
           QtLeapGlobal/Qml/HandsMotionArea.cpp \
           QtLeapGlobal/Qml/FingersMotionArea.cpp \
           QtLeapGlobal/QtLeapMotionQQuickView.cpp \
           QtLeapGlobal/QtLeapBone.cpp


HEADERS += QtLeapGlobal/QtLeapFinger.h \
           QtLeapGlobal/QtLeapHand.h \
           QtLeapGlobal/QtLeapPointable.h \
           QtLeapGlobal/QtLeapTool.h \
           QtLeapGlobal/QtLeapUtils.h \
           QtLeapGlobal/Handlers/QtLeapMotionHandler.h \
           QtLeapGlobal/Handlers/QtLeapHandsHandlerInterface.h \
           QtLeapGlobal/Handlers/DefaultQtLeapHandsHandler.h \
           QtLeapGlobal/Listeners/QtLeapFingersListenerInterface.h \
           QtLeapGlobal/Listeners/QtLeapHandsListenerInterface.h \
           QtLeapGlobal/Qml/HandsMotionArea.h \
           QtLeapGlobal/Qml/FingersMotionArea.h \
           QtLeapGlobal/QtLeapMotionQQuickView.h \
           QtLeapGlobal/QtLeapGlobal.h \
           QtLeapGlobal/QtLeapBone.h

INCLUDEPATH += QtLeapGlobal
INCLUDEPATH += QtLeapGlobal/Handlers
INCLUDEPATH += QtLeapGlobal/Qml
INCLUDEPATH += QtLeapGlobal/Listeners

# QtLeapDevice
SOURCES += QtLeapDevice/QtLeapMotionController.cpp \
           QtLeapDevice/QtLeapMotionListener.cpp

HEADERS += QtLeapDevice/QtLeapMotionController.h \
           QtLeapDevice/QtLeapMotionListener.h

INCLUDEPATH += QtLeapDevice

# QtLeapGestures
SOURCES += QtLeapGestures/QtLeapCircleGesture.cpp \
           QtLeapGestures/QtLeapKeyTapGesture.cpp \
           QtLeapGestures/QtLeapScreenTapGesture.cpp \
           QtLeapGestures/QtLeapSwipeGesture.cpp \
           QtLeapGestures/QtLeapTapGesture.cpp \
           QtLeapGestures/Handlers/DefaultQtLeapTapGestureHandler.cpp \
           QtLeapGestures/Handlers/DefaultQtLeapCircleGestureHandler.cpp \
           QtLeapGestures/Handlers/DefaultQtLeapSwipeGestureHandler.cpp \
           QtLeapGestures/Qml/SwipeLeapGestureArea.cpp \
           QtLeapGestures/Qml/CircleLeapGestureArea.cpp \
           QtLeapGestures/Qml/ScreenTapLeapGestureArea.cpp \
           QtLeapGestures/Qml/KeyTapLeapGestureArea.cpp \
           QtLeapGestures/Qml/AbstractGestureArea.cpp


HEADERS += QtLeapGestures/QtLeapCircleGesture.h \
           QtLeapGestures/QtLeapGesture.h \
           QtLeapGestures/QtLeapKeyTapGesture.h \
           QtLeapGestures/QtLeapScreenTapGesture.h \
           QtLeapGestures/QtLeapSwipeGesture.h \
           QtLeapGestures/QtLeapTapGesture.h \
           QtLeapGestures/Handlers/QtLeapGestureHandlerInterface.h \
           QtLeapGestures/Handlers/DefaultQtLeapTapGestureHandler.h \
           QtLeapGestures/Handlers/DefaultQtLeapCircleGestureHandler.h \
           QtLeapGestures/Handlers/DefaultQtLeapSwipeGestureHandler.h \
           QtLeapGestures/Listeners/QtLeapGestureListenerInterface.h \
           QtLeapGestures/Qml/SwipeLeapGestureArea.h \
           QtLeapGestures/Qml/CircleLeapGestureArea.h \
           QtLeapGestures/Qml/ScreenTapLeapGestureArea.h \
           QtLeapGestures/Qml/KeyTapLeapGestureArea.h \
           QtLeapGestures/Qml/AbstractGestureArea.h

INCLUDEPATH += QtLeapGestures
INCLUDEPATH += QtLeapGestures/Qml
INCLUDEPATH += QtLeapGestures/Listeners
INCLUDEPATH += QtLeapGestures/Handlers

# LeapTouch

SOURCES += QtLeapTouch/QtLeapMotionTouchDevice.cpp \
           QtLeapTouch/Handlers/DefaultQtLeapMouseHandler.cpp \
           QtLeapTouch/Handlers/DefaultQtLeapTouchHandler.cpp

HEADERS += QtLeapTouch/QtLeapMotionTouchDevice.h \
           QtLeapTouch/Handlers/QtLeapMouseHandlerInterface.h \
           QtLeapTouch/Handlers/QtLeapTouchHandlerInterface.h \
           QtLeapTouch/Handlers/DefaultQtLeapMouseHandler.h \
           QtLeapTouch/Handlers/DefaultQtLeapTouchHandler.h

INCLUDEPATH += QtLeapTouch
INCLUDEPATH += QtLeapTouch/Handlers/
