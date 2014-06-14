import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: root
    width: 900
    height: 700
    title: "CAD UI"

    menuBar: MenuBar {
        id: fileMenu
        Menu {
            title: "&File"
            MenuItem { action: newAction }
            MenuItem { action: openAction }
            MenuItem { action: saveAction }
            MenuItem { action: saveAsAction }
            MenuItem { action: exportAction }
            MenuItem { action: importAction }
            MenuItem { action: closeAction }
            MenuSeparator { }
            MenuItem { action: printAction }
            MenuItem { action: printPreviewAction }
            MenuSeparator { }
            MenuItem { action: quitAction }
        }
        Menu {
            title: "&Edit"
            MenuItem { action: undoAction }
            MenuItem { action: redoAction }
            MenuSeparator { }
            MenuItem { action: cutAction }
            MenuItem { action: copyAction }
            MenuItem { action: pasteAction }
            MenuSeparator { }
            MenuItem { action: editPreferencesAction }
        }
        Menu {
            title: "&View"
            MenuItem { action: gridAction }
            MenuItem { action: zoomInAction }
            MenuItem { action: zoomOutAction }
            MenuItem { action: previousViewAction }
            MenuItem { action: windowsZoomAction }
            MenuItem { action: zoomPanningAction }
            MenuSeparator { }
            MenuItem { action: statusBarAction }
            Menu {
                title: "&Toolbars"
                MenuItem { action: layersAction }
                MenuItem { action: blocksAction }
            }

        }
        Menu {
            title: "&Select"
            MenuItem { action: selAllAction }
            MenuItem { action: deselAllAction }
            MenuItem { action: selEntityAction }
            MenuItem { action: deselContourAction }
            MenuItem { action: selWindowAction }
            MenuItem { action: deselWindowAction }
            MenuItem { action: invSelAction }
            MenuItem { action: selIntersectedEntitiesAction }
            MenuItem { action: deselIntersectedEntitiesAction }
            MenuItem { action: deselLayerAction }
        }
        Menu {
            title: "&Draw"
            MenuItem { action: pointsAction }
            MenuItem { action: lineAction }
            MenuItem { action: arcAction }
            MenuItem { action: circleAction }
            MenuItem { action: ellipseAction }
            MenuItem { action: splineAction }
            MenuItem { action: polylineAction }
            MenuItem { action: mtextAction }
            MenuItem { action: textAction }
            MenuItem { action: hatchAction }
            MenuItem { action: insertImageAction }
        }
        Menu {
            title: "&Modify"
            MenuItem { action: moveCopyAction }
            MenuItem { action: rotateAction }
            MenuItem { action: scaleAction }
            MenuItem { action: mirrorAction }
            MenuItem { action: moveAndRotateAction }
            MenuItem { action: rotateTwoAction }
            MenuItem { action: revertDirectionAction }
            MenuItem { action: trimAction }
            MenuItem { action: trimTwoAction }
            MenuItem { action: lengthenAction }
            MenuItem { action: bevelAction }
            MenuItem { action: roundAction }
            MenuItem { action: divideAction }
            MenuItem { action: stretchAction }
            MenuItem { action: propertiesAction }
            MenuItem { action: attributesAction }
            MenuItem { action: deleteAction }
            MenuItem { action: deleteSelectedAction }
            MenuItem { action: explodeAction }
            MenuItem { action: alignAction }
        }
        Menu {
            title: "&Dimension"
            MenuItem { action: alignedAction }
            MenuItem { action: linearAction }
            MenuItem { action: horizontalAction }
            MenuItem { action: verticalAction }
            MenuItem { action: radialAction }
            MenuItem { action: diametricAction }
            MenuItem { action: angularAction }
            MenuItem { action: leaderAction }
        }
        Menu {
            title: "&Help"
            MenuItem { action: manualAction }
            MenuItem { action: aboutAction }
        }
    }

    toolBar: ToolBar {
        id: layerToolbar
        width: parent.width

        RowLayout {
            anchors.fill: parent
            ToolButton {
                implicitWidth: 100
                text: "Layer 1"

                //onHoveredChanged: opacity=0
            }
            ToolButton {
                implicitWidth: 100
                text: "Layer 2"
            }
            ToolButton {
                implicitWidth: 100
                text: "Layer 3"
            }
            Item {Layout.fillWidth: true}
        }
    }

        ColumnLayout {
            anchors.fill: parent
            ToolButton {
                implicitWidth: 100
                text: "Layer 1"

                //onHoveredChanged: opacity=0
            }
            ToolButton {
                implicitWidth: 100
                text: "Layer 2"
            }
            ToolButton {
                implicitWidth: 100
                text: "Layer 3"
            }
            Item {Layout.fillWidth: true}
        }



    /*
    toolBar: ToolBar {
        id: toolbar
        RowLayout {
            id: toolbarLayout
            spacing: 0
            width: parent.width
            ToolButton {
                iconSource: "images/window-new.png"
                onClicked: window1.visible = !window1.visible
                Accessible.name: "New window"
                tooltip: "Toggle visibility of the second window"
            }
            ToolButton { action: openAction }
            ToolButton {
                Accessible.name: "Save as"
                iconSource: "images/document-save-as.png"
                tooltip: "(Pretend to) Save as..."
            }
            Item { Layout.fillWidth: true }
            CheckBox {
                id: enabledCheck
                text: "Enabled"
                checked: true
            }
        }
    }*/

    /* Actions for File Menu*/
    Action {
        id: newAction
        text: "&New"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: openAction
        text: "&Open"
        enabled: false
        //shortcut: StandardKey.Open
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }

    Action {
        id: saveAction
        text: "&Save"
        enabled: false
        //shortcut: StandardKey.Save
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }
    Action {
        id: saveAsAction
        text: "&Save As"
        enabled: false
        //shortcut: StandardKey.SaveAs
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }
    Action {
        id: exportAction
        text: "&Export"
        enabled: false
        //shortcut: StandardKey.Open
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }
    Action {
        id: importAction
        text: "&Import"
        enabled: false
        //shortcut: StandardKey.Open
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }
    Action {
        id: closeAction
        text: "&Close"
        enabled: false
        //shortcut: StandardKey.Open
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }
    Action {
        id: printAction
        text: "&Print"
        enabled: false
        //shortcut: StandardKey.Open
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }
    Action {
        id: printPreviewAction
        text: "&Print Preview"
        enabled: false
        //shortcut: StandardKey.Open
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "Open an image"
    }
    Action {
        id: quitAction
        text: "&Quit"
        enabled: false
        shortcut: StandardKey.Quit
        //iconSource: "images/document-open.png"
        onTriggered: Qt.quit()
        //tooltip: "Open an image"
    }

    /* Actions for Edit Menu*/
    Action {
        id: undoAction
        text: "&Undo"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: redoAction
        text: "&Redo"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: copyAction
        text: "&Copy"
        shortcut: StandardKey.Copy
        iconName: "edit-copy"
        enabled: (!!activeFocusItem && !!activeFocusItem["copy"])
        onTriggered: activeFocusItem.copy()
    }

    Action {
        id: cutAction
        text: "Cu&t"
        shortcut: StandardKey.Cut
        iconName: "edit-cut"
        enabled: (!!activeFocusItem && !!activeFocusItem["cut"])
        onTriggered: activeFocusItem.cut()
    }

    Action {
        id: pasteAction
        text: "&Paste"
        shortcut: StandardKey.Paste
        iconName: "edit-paste"
        enabled: (!!activeFocusItem && !!activeFocusItem["paste"])
        onTriggered: activeFocusItem.paste()
    }
    Action {
        id: editPreferencesAction
        text: "&Edit Preferences"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    /* Actions for View Menu*/
    Action {
        id: gridAction
        text: "&Grid"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: zoomInAction
        text: "&Zoom In"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: zoomOutAction
        text: "&Zoom Out"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: previousViewAction
        text: "&Previous View"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: windowsZoomAction
        text: "&Windows Zoom"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: zoomPanningAction
        text: "&Zoom Panning"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: statusBarAction
        text: "&Status Bar"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: layersAction
        text: "&Layers"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: blocksAction
        text: "&Blocks"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    /* Actions for Select Menu*/
    Action {
        id: selAllAction
        text: "&Select All"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: deselAllAction
        text: "&Deselect All"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: selEntityAction
        text: "&Select Entity"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: deselContourAction
        text: "&(De-)Select Contour"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: selWindowAction
        text: "&Select Window"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: deselWindowAction
        text: "&Deselect Window"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: invSelAction
        text: "&Inverted Selection"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: selIntersectedEntitiesAction
        text: "&Select Intersected Entities"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: deselIntersectedEntitiesAction
        text: "&Deselect Intersected Entities"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: deselLayerAction
        text: "&(De-)select Layer"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    /* Actions for Draw Menu*/
     Action {
        id: pointsAction
        text: "&Points"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: lineAction
        text: "&Line"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: arcAction
        text: "&Arc"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: circleAction
        text: "&Circle"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: ellipseAction
        text: "&Ellipse"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: splineAction
        text: "&Spline"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: polylineAction
        text: "&Polyline"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: mtextAction
        text: "&MText"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: textAction
        text: "&Text"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: hatchAction
        text: "&Hatch"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: insertImageAction
        text: "&Insert Image"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }


    /* Actions for Modify Menu*/
    Action {
        id: moveCopyAction
        text: "&Move/Copy"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: rotateAction
        text: "&Rotate"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: scaleAction
        text: "&Scale"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: mirrorAction
        text: "&Mirror"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: moveAndRotateAction
        text: "&Move and Rotate"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: rotateTwoAction
        text: "&Rotate Two"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: revertDirectionAction
        text: "&Revert Direction"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: trimAction
        text: "&Trim"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: trimTwoAction
        text: "&Trim Two"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: lengthenAction
        text: "&Lengthen"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: bevelAction
        text: "&Bevel"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: roundAction
        text: "&Round"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: divideAction
        text: "&Divide"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: stretchAction
        text: "&Stretch"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: propertiesAction
        text: "&Properties"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: attributesAction
        text: "&Attributes"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: deleteAction
        text: "&Delete"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: deleteSelectedAction
        text: "&Delete Selected"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: explodeAction
        text: "&Explode"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    Action {
        id: alignAction
        text: "&Align"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    /* Actions for Dimension Menu*/
    Action {
        id: alignedAction
        text: "&Aligned"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: linearAction
        text: "&Linear"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: horizontalAction
        text: "&Horizontal"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: verticalAction
        text: "&Vertical"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: radialAction
        text: "&Radial"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: diametricAction
        text: "&Diametric"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: angularAction
        text: "&Angular"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: leaderAction
        text: "&Leader"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }

    /* Actions for Help Menu*/
    Action {
        id: manualAction
        text: "&Manual"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }
    Action {
        id: aboutAction
        text: "&About"
        enabled: false
        //shortcut: StandardKey.New
        //iconSource: "images/document-open.png"
        //onTriggered: fileDialog.open()
        //tooltip: "New an image"
    }


}
