import QtQuick
import "../quickshell/network" as CustomNetwork

// This injects your custom Network popup into the main DMS environment
// so it can read the GlobalStates.showNetworkPopup variable.
Item {
    CustomNetwork.NetworkPopup {}
}
