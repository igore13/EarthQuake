/*
	Config EarthQuake
	By Igore
*/

class EarthQuake {

	Active = true;								// Activation du Tremblement
	TimeDecay = 1800;							// Temp entre les Event en Seconde. Calcul (TimeDecay + TimeRandom) :: default : 1800
	TimeRandom = 900;							// Temp Random entre les Event en Seconde. Calcul (TimeDecay + TimeRandom) :: default : 900
	
	MarkerName = "epicentre";					// Nom du Marker sur la Carte (Epicentre du Tremblement) :: default : epicentre
	AltitudeInHeli = 30;						// Altitude Max en Hélico (Ressenti Force 1 si plus Haut) :: default : 30
	DistanceMaxForce2 = 10000;					// Distance Max de l'épicentre Force 2 :: default : 10000
	DistanceMaxForce3 = 7500;					// Distance Max de l'épicentre Force 3 :: default : 7500
	DistanceMaxForce4 = 5000;					// Distance Max de l'épicentre Force 4 :: default : 5000
	DecayMin = 5;								// Interval Minimum Tremblement en Seconde (Max 3 Tremblement / event) Calcul (DecayMin + DecayRandom) :: default : 5
	DecayRandom = 10;							// Interval Random Tremblement en Seconde (Max 3 Tremblement / event) Calcul (DecayMin + DecayRandom) :: default : 10
};