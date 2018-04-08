# EarthQuake

La source ne vient pas de moi mais de AltisDev (je ne retrouve pas le lien), je l'ai réecrite en corrigeant certain bug et j'ai ajouté aussi une partie config.

Coté Server :

	Ajouter dans le init.sqf en bas :
		[] execVM "\life_server\Functions\Systems\fn_startearth.sqf";
	
	
Coté Client :

	Ajouter dans config/Config_Master.hpp en bas :
		#include "Config_EarthQuake.hpp"
		
	Ajouter dans Functions.hpp :
		dans "class Network" :
			class earthquake {};
			
	Ajouter dans CfgRemoteExec.hpp :
		F(life_fnc_earthquake,CLIENT)
		
	Ajouter sur le Mapping un Marker avec le nom donné dans la Config (default : epicentre) qui correspond a l'épicentre du Tremblement.