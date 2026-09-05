while {true} do {

    {
		if (typeOf _x in (KPLIB_b_mobileRespawn + [KPLIB_b_potato01])) then {

			private _helper = _x getVariable ["KPLIB_hiddenPassenger", objNull];

			// clean dead helpers
			if (!isNull _helper && {!alive _helper}) then {
				deleteVehicle _helper;
				_x setVariable ["KPLIB_hiddenPassenger", nil, false];
				_helper = objNull;
			};

			// create replacement if needed
			if (alive _x && {isNull _helper}) then {

				private _unit = createAgent [
					"B_UAV_AI",
					getPosATL _x,
					[],
					0,
					"NONE"
				];

				_unit allowDamage false;
				_unit disableAI "ALL";
				_unit hideObjectGlobal true;
				_unit moveInCargo _x;
				_unit setVariable ["KPLIB_hiddenPassengerAI", true];

				_x setVariable [
					"KPLIB_hiddenPassenger",
					_unit,
					false
				];
			};
		};
	} forEach vehicles;

    sleep 30;
};