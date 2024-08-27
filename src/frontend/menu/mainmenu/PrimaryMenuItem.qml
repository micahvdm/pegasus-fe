// Pegasus Frontend
// Copyright (C) 2017  Mátyás Mustoha
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


GenericMenuItem {
    property alias symbol: symbolMenu.text
    property var animated: false
    property var animated_color: "blue"

    z: 1000
    activeColor: themeColor.secondary
    inactiveColor: themeColor.main
    textSizePx: vpx(50)
    Text {
        id: symbolMenu

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: vpx("20")
        }
        color: themeColor.textTitle
        SequentialAnimation on color {
            running: animated
            loops: Animation.Infinite
            ColorAnimation { to: animated_color; duration: 500 }
            ColorAnimation { to: themeColor.textTitle; duration: 500 }
        }
        font {
            bold: false
            pixelSize: vpx(50)
            family: global.fonts.ion
        }
    }
}
