#!/bin/bash
## this snippet is a part of the GUI-Mods from Kevin Windrem (HelperResources) https://github.com/kwindrem/GuiMods

addAllDbusSettings () {
    local settings=""

    if [ -f "./DbusUpdate" ]; then
        echo "Updating D-Bus Settings"
        while IFS= read -r line || [[ -n "$line" ]]; do
            settings+="$line, "
        done < "./DbusUpdate"

        dbus -y com.victronenergy.settings / AddSettings "%[ $settings  ]" &> /dev/null

    else
        echo "DbusSettingsList file not found"
    fi
}

addAllDbusSettings
