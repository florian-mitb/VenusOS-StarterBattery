import QtQuick 1.1
import "utils.js" as Utils
import com.victron.velib 1.0

MbPage {
	id: root
	title: qsTr("Roadbuck Mods")
    property string bindPrefixRbMods: "com.victronenergy.settings/Settings/RoadbuckMods"
		property string bindPrefix: "com.victronenergy.settings/Settings/Gui"
		VBusItem { id: showStarter; bind: Utils.path(bindPrefixRbMods, "/StarterBattery/ShowStarterBattery")}
	

	model: VisibleItemModel
    {

     MbSubMenu
			{
				description: qsTr("Starter Battery")
				subpage: Component { PageSettingsRoadbuckStarterBattery {} }
				show: showStarter.value >= 0
			}

	

  } // VisibleItemModel

} //MbPage
