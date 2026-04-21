import QtQuick
import Quickshell

ShellRoot {
    // This physically loads your separate NetworkPopup.qml file
    NetworkPopup {}

    // When you build new widgets in the future, just drop their .qml
    // files into this folder and add them to this list:
    // AudioPopup {}
    // BluetoothPopup {}
    // CalendarPopup {}
}
