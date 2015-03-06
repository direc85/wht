/*
  Copyright (C) 2015 Olavi Haapala.
  Contact: Olavi Haapala <ojhaapala@gmail.com>
  Twitter: @olpetik
  All rights reserved.
  You may use this file under the terms of BSD license as follows:
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    SilicaFlickable {
        contentHeight: column.y + column.height
        width: parent.width
        height: parent.height
        Column {
            id: column
            PageHeader {
                title: "How to"
            }
            width: parent.width
            SectionHeader { text: "Adding hours" }
            Text {
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Working Hours Tracker is quite easy to use. Adding hours can be done in two different ways.\n\n1. You can access "
                + "the add hours in the pulley menu on the first page. It takes you to the add page. \n\n2. Start the timer when starting to "
                + "work. You can then close the app if you want to and the timer will stay running. At the end of your work day, stop the "
                + "timer and it should take you to the add page where you can adjust the details, add description and select the project."
            }
            SectionHeader { text: "Adding projects" }
            Text {
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Projects can be added and edited in the settings. You can select the labelcolor and hourlyrate for a project. "
                + "You can edit projects by clicking them. When editing a project you can select if you want to make that project the "
                + "default project which will be automatically selected when adding hours. If you set the hourlyrate for a project, you "
                + "Will see the price for spent hours in the detailed listing and summaries."
            }
            SectionHeader { text: "Using the timer" }
            Text {
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Timer can be used by pressing the big button on the first page. When started, you will see three buttons "
                + "for controlling the timer.\n\nOn the left you have a break button which is meant to be used if you have a break "
                + "during your workday that you don't want to include in the duration. Break works just like the timer: you start "
                + "it by clicking it and stop it when the break is over.\n\nThe button in the middle stops the timer and takes you to the "
                + "add page where you will be able to adjust the start and endtime and other details for the effort. The hours will be "
                + "saved only when accepting the dialog.\n\nOn the right side you have a button for adjusting the timer start time. It can "
                + "be used if you forget to start the timer when you start to work."
            }
            SectionHeader { text: "Using the cover" }
            Text {
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Cover actions can be used to quickly add hours or to control the timer. Cover actions include adding hours, starting "
                + "the timer, starting a break, ending a break and stopping the timer.\n\nWhen stopping the timer from the cover, it should "
                + "open up the appwindow in the add view and after closing the dialog it should get minimized back to cover."
            }
            SectionHeader { text: "Summaries" }
            Text {
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "On the first page you will see total hours for different categories.\n\n"
                + "If you have more than one projects you should see a attached page that can be accessed by swiping left from "
                + "the first page. There you can see hours for one project at a time.\n\n"
                + "Clicking a category will take you to the detailed listing view where you can see all entries in that category. "
                + "You can edit those entries by clicking them.\n\n"
                + "By swiping left in the detailed view you can see a detailed summary for that category."
            }
            SectionHeader { text: "Settings" }
            Text {
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "There are a few settings in the settings page that makes adding hours faster and easier.\n\n"
                + "Default duration and default break duration will be used when manually adding hours.\n\n"
                + "Starts now or Ends now by default means the option to select if you want the start time or the "
                + "endtime be set to the time now when adding hours manually.\n\n"
                + "Other settings are explained in the settings page and more will come in the future versions."

            }

            SectionHeader { text: "More questions?" }
            Text {
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Please don't hesitate to contact the developer if you have any questions.\n"
            }
            Text {
                color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: root.width
                horizontalAlignment: Text.AlignHCenter
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Olavi Haapala"
            }
            Button {
              text: "ojhaapala@gmail.com"
              anchors.horizontalCenter: parent.horizontalCenter
              onClicked: Qt.openUrlExternally("mailto:ojhaapala@gmail.com")
            }
            Button {
              text: "Twitter: @olpetik"
              anchors.horizontalCenter: parent.horizontalCenter
              onClicked: Qt.openUrlExternally("https://twitter.com/olpetik")
            }
            Button {
              text: "Issues in GitHub"
              anchors.horizontalCenter: parent.horizontalCenter
              onClicked: Qt.openUrlExternally("https://github.com/ojhaapala/wht/issues")
            }
            Rectangle {
                opacity: 0
                width: parent.width
                height: 20
            }
        }
    }
}









