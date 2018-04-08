/*
	Tremblement de Terre
	Configration par missionConfigFile
*/

private ["_marker","_epicentre","_inAir","_distance","_distanceForce2","_distanceForce3","_distanceForce4","_fnc_random","_timeSleep","_playerinAir","_force","_active"];

_active = getNumber (missionConfigFile >> "EarthQuake" >> "Active");
if (_active isEqualTo 1) exitWith {};

_marker = getText (missionConfigFile >> "EarthQuake" >> "MarkerName");
_epicentre = getMarkerPos _marker;

if(isNull player) exitWith {};
if(isServer) exitWith {};

_inAir = {
	private _return = false;
	private _atl = (getPosATL player) select 2;
	private _atlMax = getNumber (missionConfigFile >> "EarthQuake" >> "AltitudeInHeli");
	if (_atl > _atlMax && (vehicle player) isKindOf "Air")  then {_return = true;};

	_return;
};

_distance = player distance _epicentre;
_distanceForce2 = getNumber (missionConfigFile >> "EarthQuake" >> "DistanceMaxForce2");
_distanceForce3 = getNumber (missionConfigFile >> "EarthQuake" >> "DistanceMaxForce3");
_distanceForce4 = getNumber (missionConfigFile >> "EarthQuake" >> "DistanceMaxForce4");

_force = switch (true) do {
	case (_distance < _distanceForce4): {4};
	case (_distance < _distanceForce3): {3};
	case (_distance < _distanceForce2): {2};
	default {1};
};

_fnc_random = {
	private _time = getNumber (missionConfigFile >> "EarthQuake" >> "DecayMin");
	private _timeRandom = getNumber (missionConfigFile >> "EarthQuake" >> "DecayRandom");
	private _random = (_time + random _timeRandom);
	
	_random;
};

hint "Activité sismique importante sur l'île Altis!";

_timeSleep = [] call _fnc_random;
sleep _timeSleep;

_playerinAir = [] call _inAir;

if (_playerinAir) then {
	[1] spawn BIS_fnc_earthquake;
}else{
	[_force] spawn BIS_fnc_earthquake;
};

_timeSleep = [] call _fnc_random;
sleep _timeSleep;

_playerinAir = [] call _inAir;

if (_playerinAir) then {
	[1] spawn BIS_fnc_earthquake;
}else{
	[_force] spawn BIS_fnc_earthquake;
};

_timeSleep = [] call _fnc_random;
sleep _timeSleep;

_playerinAir = [] call _inAir;

if (_playerinAir) then {
	[1] spawn BIS_fnc_earthquake;
}else{
	[_force] spawn BIS_fnc_earthquake;
};
