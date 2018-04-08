/*  
	Tremblement de Terre
	Server
*/  

private["_timer","_power","_timeDecay","_timeRandom"];  

_active = getNumber (missionConfigFile >> "EarthQuake" >> "Active");
if (_active isEqualTo 0) exitWith {};

_timeDecay = getNumber (missionConfigFile >> "EarthQuake" >> "TimeDecay");
_timeRandom = getNumber (missionConfigFile >> "EarthQuake" >> "TimeRandom");

while {true} do  
{  
	_timer = _timeDecay + round(random _timeRandom);  
	sleep _timer;  
	[] remoteExecCall ["life_fnc_earthquake",-2];
};  