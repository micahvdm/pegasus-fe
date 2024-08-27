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
import "qrc:/qmlutils" as PegasusUtils


FocusScope {
    id: root

    //first line as preview
    property alias status: status.text
    property alias status_color: status.color
    property alias label: label.text
    property alias label_color: label.color
    property alias note: sublabel.text
    property alias icon: icon.source
    property alias icon2: icon2.source
    property bool icon2_forced_display: false;

    property real firstColumnRatio: 3/4

    //first column (titles)
    property alias detailed_line1: line1.text
    property alias detailed_line2: line2.text
    property alias detailed_line3: line3.text
    property alias detailed_line4: line4.text
    property alias detailed_line5: line5.text
    property alias detailed_line6: line6.text
    property alias detailed_line7: line7.text
    property alias detailed_line8: line8.text
    property alias detailed_description: scrolltext.text

    property real secondColumnRatio: 1/4

    //second column (status and details)
    property alias detailed_line9: line9.text
    property alias detailed_line9_color: line9.color
    property alias detailed_line10: line10.text
    property alias detailed_line10_color: line10.color

    property alias detailed_line11: line11.text
    property alias detailed_line11_color: line11.color

    property alias detailed_line12: line12.text
    property alias detailed_line12_color: line12.color

    property alias detailed_line13: line13.text
    property alias detailed_line13_color: line13.color

    property alias detailed_line14: line14.text
    property alias detailed_line14_color: line14.color

    property alias detailed_line15: line15.text
    property alias detailed_line15_color: line15.color

    property alias detailed_line16: line16.text
    property alias detailed_line16_color: line16.color
    //last column (to put additional images)
    property alias picture: picture.source


    readonly property int fontSize: vpx(22)
    readonly property int horizontalPadding: vpx(10)
    readonly property int verticalPadding: vpx(4)
    readonly property int detailPartHeight: vpx(150)

    //for progress bar
    property real progress: 0.0
    property string progressStatus: ""
    property int errorCode: 0


    Behavior on progress { NumberAnimation {} }


    signal activate()

    width: parent.width
    height: labelContainer.height + vpx(10)
	
    Keys.onPressed: {
        if (api.keys.isAccept(event) && !event.isAutoRepeat) {
            event.accepted = true;
            root.activate();
        }
    }

    Rectangle {
        id: topline

        width: parent.width
        height: vpx(3)
        anchors.bottom: parent.top

        color: themeColor.underline
        visible: parent.focus //|| mouseArea.containsMouse
    }

    Rectangle {
        id: leftline

        width: vpx(3)
        height: parent.height
        anchors.top: parent.top
        anchors.left: parent.left

        color: themeColor.underline
        visible: parent.focus //||  mouseArea.containsMouse
    }

    Rectangle {
        id: rightline

        width: vpx(3)
        height: parent.height
        anchors.top: parent.top
        anchors.right: parent.right

        color: themeColor.underline
        visible: parent.focus //|| mouseArea.containsMouse
    }

    Rectangle {
        id: underline

        width: parent.width
        height: vpx(3)
        anchors.bottom: parent.bottom

        color: themeColor.underline
        visible: parent.focus //|| mouseArea.containsMouse
    }

    Column {
    id: labelContainer
        width: parent.width *(firstColumnRatio)
        anchors {
            left: parent.left;
            leftMargin: horizontalPadding;
            right: logoContainer.left
            rightMargin: horizontalPadding
            top: parent.top
        }
        spacing: fontSize * 0.25

        //just to have a space at the top
        Row{
        id: paddingRow
            Text{
                height: vpx(2)
                text: " "
            }
        }

        Row{
        id: previewRow
            spacing: vpx(5)
            width: parent.width

            Column{
            id:labelsColumn
                Row{
                id: labelRow
                    height: label.height
                    width: parent.width
                    spacing: vpx(5)
                    Text {
                        id: status
                        width: label.height
                        color: themeColor.textLabel
                        font.pixelSize: fontSize
                        font.family: globalFonts.awesome
                        elide: Text.ElideRight
                        visible: text !== "" ? true : false
                    }
                    Text {
                        id: label
                        width: labelContainer.width - status.width
                        color: themeColor.textLabel
                        font.pixelSize: fontSize
                        font.family: globalFonts.awesome
                        elide: Text.ElideRight
                        visible: text !== "" ? true : false
                    }
                }
                Row{
                    id: sublabelRow
                    height: sublabel.height
                    Image {
                        id: icon
                        asynchronous: true
                        height: sublabel.height 
						source: ""
                        fillMode: Image.PreserveAspectFit
                        smooth: true
                    }
                    Text {
                        id: sublabel
                        color: themeColor.textSublabel
                        font.pixelSize: fontSize * 0.7
                        font.family: globalFonts.awesome
                        font.italic: true
                        wrapMode: Text.WordWrap
                        visible: text !== "" ? true : false
                    }
                }

            }
        }
        Row{
        id: detailedRow
            spacing: fontSize //* 0.25
            height: root.focus ? detailPartHeight : 0
            width: underline.width
            visible: root.focus
            Column{
                spacing: vpx(4)
                Text{
                    id: line1
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line2
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line3
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line4
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line5
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line6
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line7
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line8
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.italic: true
                    visible: text !== "" ? true : false
                }
            }
            Column{
                spacing: vpx(4)
                Text{
                    id: line9
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line10
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line11
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line12
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line13
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line14
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line15
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
                Text{
                    id: line16
                    color: themeColor.textSublabel
                    font.pixelSize: fontSize * 0.8
                    font.family: globalFonts.awesome
                    font.bold: false
                    visible: text !== "" ? true : false
                }
            }
            Rectangle {
                color: themeColor.secondary
                width: (root.focus && (scrolltext.text !== "")) ? (parent.width - (horizontalPadding *3) - picture.paintedWidth) : 0
                height: (root.focus && (scrolltext.text !== "")) ? parent.height : 0
                radius: vpx(10)
                clip: true
                // Description
                PegasusUtils.AutoScroll
                {
                    id: autoscroll
                    width: parent.width
                    height: parent.height
                    Text{
                        id: scrolltext
                        color: themeColor.textValue
                        font.pixelSize: fontSize * 0.8
                        font.family: globalFonts.awesome
                        font.italic: true
                        width: parent.width
                        //the 'Width' setting generate Binding loop detection for property "contentWidth" from Autoscroll !
                        //no way to avoid the warning for the moment ;-)
                        visible: (text !== "") && root.focus ? true : false
                        elide: Text.ElideRight
                        wrapMode: Text.WordWrap
                    }
                }
            }
        }
    }
    Column {
        id: logoContainer
        anchors.right: parent.right;
        anchors.rightMargin: horizontalPadding;
        //anchors.top: parent.top
        height: !root.focus ? parent.height : 0
        width: parent.width * (secondColumnRatio)
        spacing: fontSize * 0.25

        Image {
            id: icon2
            asynchronous: true
            height: (icon2_forced_display || !root.focus) ? (label.height + labelContainer.spacing + sublabel.height) : 0
            fillMode: Image.PreserveAspectFit
            width: (root.width * (secondColumnRatio)) - rightline.width;
            horizontalAlignment:  Image.AlignRight
            //anchors.right: rightline.left;
            smooth: true
            visible: ((icon2_forced_display || !root.focus) && (root.progress === 0.0)) ? true : false
        }

        Rectangle {
             id: progressRoot

             property int border: vpx(3)

             width: logoContainer.width
             height: vpx(25)
             radius: vpx(10)
             color: "transparent"

             anchors.top: parent.top
             anchors.topMargin: root.verticalPadding

             anchors.left: parent.left
             anchors.leftMargin: border

             anchors.horizontalCenter: logoContainer.horizontalCenter
             visible: (root.progress > 0.0) ? true : false
             clip: true
             Image {
                 source: ((root.errorCode <= 0) && (root.progress < 1.0)) ? "../../../assets/pbar.png" : ((root.errorCode <= 0) && (root.progress === 1.0)) ? "../../../assets/pbar-green.png" : "../../../assets/pbar-red.png"

                 property int animatedWidth: 0
                 width: parent.width + animatedWidth
                 height: parent.height -(progressRoot.border * 2)
                 fillMode: Image.Tile
                 anchors.verticalCenter: parent.verticalCenter
                 anchors.right: parent.right
                 anchors.rightMargin: (parent.width * (1.0 - root.progress)) //+ progressRoot.border
                 //anchors.left: parent.left
                 //anchors.leftMargin: progressRoot.border

                 SequentialAnimation on animatedWidth {
                     loops: Animation.Infinite
                     paused: (root.progress === 1.0) ? true : false
                     PropertyAnimation { duration: 500; to: vpx(68) }
                     PropertyAnimation { duration: 0; to: 0 }
                 }
             }

             Rectangle {
                 // inner border above the image
                 anchors.top: parent.top
                 anchors.bottom: parent.bottom
                 anchors.left: parent.left
                 //anchors.leftMargin: - vpx(progressRoot.border)
                 anchors.right: parent.right
                 //anchors.rightMargin: - vpx(progressRoot.border)
                 //z: 10
                 //anchors.fill: parent
                 color: "transparent"

                 //radius: vpx(10)
                 border.width: parent.border
                 border.color: "black" //parent.color
             }

        }

        Text{
          id: progressText
            visible: root.progress > 0.0 ? true : false

            text: progressStatus
            color: ((root.errorCode <= 0) && (root.progress === 1.0)) ?  "green" : ((root.errorCode > 0) ? "red" : themeColor.textSublabel)
            font.pixelSize: fontSize * 0.7
            font.family: global.fonts.sans
            font.italic: true
            font.bold: ((root.errorCode <= 0) && (root.progress === 1.0)) ?  true : ((root.errorCode > 0) ? true : false)

            anchors.top: progressRoot.bottom
            anchors.topMargin: vpx(8)
            anchors.right: progressRoot.right
            anchors.rightMargin: vpx(5)
        }
    }
    Column {
        id: screenshotContainer
        anchors.right: parent.right;
        anchors.rightMargin: horizontalPadding;
        anchors.top: parent.top
        anchors.topMargin: (root.progress > 0.0) ? (label.height + labelContainer.spacing + sublabel.height) : 0
        height: ((picture.source !== "") && root.focus) ? ((label.height + labelContainer.spacing + sublabel.height + detailPartHeight) - anchors.topMargin) : 0
        width: (picture.source !== "") ? ((parent.width * (secondColumnRatio)) - horizontalPadding)   : 0
        spacing: fontSize * 0.25
        Row{
            Text{
                height: vpx(2)
                text: " "
            }
        }
        Image {
            id: picture
            asynchronous: true
            height: (source !== "") && root.focus ? parent.height : 0
            width: parent.width
            horizontalAlignment:  Image.AlignRight
            smooth: true
            fillMode: Image.PreserveAspectFit
            visible: (source !== "") && root.focus
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: activate()
        cursorShape: Qt.PointingHandCursor
    }
}
