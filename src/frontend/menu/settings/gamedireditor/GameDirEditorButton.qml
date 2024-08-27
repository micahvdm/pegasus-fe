// Pegasus Frontend
// Copyright (C) 2017-2018  Mátyás Mustoha
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.


import QtQuick 2.12


Item {
    id: root

    property alias image1: mImage1.source
    property alias image2: mImage2.source
    property alias text: mText.text

    readonly property color textColor: "#fff"
    readonly property int textSize: vpx(20)
    readonly property int textHPadding: textSize * 0.3
    readonly property bool highlighted: focus || mMouse.containsMouse

    signal press
    signal release

    width: mImage1.width * 2 + mText.width + textSize
    height: textSize * 2.5

    Keys.onPressed: {
        if (api.keys.isAccept(event) && !event.isAutoRepeat) {
            event.accepted = true;
            root.press();
        }
    }
    Keys.onReleased: {
        if (api.keys.isAccept(event) && !event.isAutoRepeat) {
            event.accepted = true;
            root.release();
        }
    }


    Rectangle {
        anchors.fill: parent
        color: highlighted ? "#555" : "transparent"
        radius: vpx(8)
    }

    Row {
        height: parent.height
        anchors.centerIn: parent

        Image {
            id: mImage1

            height: textSize * 1.6
            width: height
            anchors.verticalCenter: parent.verticalCenter
        }
        Image {
            id: mImage2

            height: mImage1.height
            width: height
            anchors.verticalCenter: parent.verticalCenter
        }
        Text {
            id: mText

            font.family: globalFonts.sans
            font.pixelSize: textSize
            color: textColor

            height: parent.height
            verticalAlignment: Text.AlignVCenter
            leftPadding: textHPadding
            rightPadding: leftPadding
        }
    }

    MouseArea {
        id: mMouse
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onPressed: root.press()
        onReleased: root.release()
    }
}
