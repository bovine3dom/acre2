#include "script_component.hpp"
/*
 * Author: ACRE2Team
 * Handles closing the intercom GUI.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * GUI successfully closed <BOOL>
 *
 * Example:
 * [1, true] call acre_sysIntercom_fnc_openGui
 *
 * Public: No
 */

systemChat format ["Closing"];
// The case of a player exiting a vehicle with UI opened is handled in the vehicle CBA EH
if (vehicle acre_player isEqualTo acre_player) exitWith {};

GVAR(guiOpened) = false;
GVAR(activeIntercom) = -1;

if (GVAR(configChanged)) then {
    [vehicle acre_player, player] call FUNC(saveStationConfiguration);
};

true