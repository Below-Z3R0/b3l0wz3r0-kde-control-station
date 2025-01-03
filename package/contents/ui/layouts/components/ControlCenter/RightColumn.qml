import QtQml 2.0
import QtQuick 2.0
import QtQuick.Layouts 1.15

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kirigami as Kirigami

import "../../../components" as Components
import "../../../lib" as Lib

Lib.Card {
    id: sectionScreenControls
    Layout.fillWidth: true
    Layout.preferredHeight: root.sectionHeight
    Layout.alignment: Qt.AlignTop
   // visible: brightnessSlider.visible || root.showBrightness || root.showColorSwitcher || root.showNightLight
    isContainer: true
    // All Buttons
    ColumnLayout {
        id: buttonsColumn
        anchors.fill: parent
        anchors.margins: 1
        spacing: 1

        Components.DndButton{}
        RowLayout {
            id: secondaryRow
            visible: root.showColorSwitcher || root.showNightLight
            anchors.margins: 1
            spacing: 1
            Components.NightLight{}
            Components.KDEConnect{}
        }
    }
}
