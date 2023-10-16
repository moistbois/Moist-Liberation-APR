## TODO:
- [x] Added members into Whitelist
- [x] WHERE `GRLIB_ignore_colisions_when_building`
	- It was `KPLIB_collisionIgnoreObjects`
- `fn_addActionsPlayer.sqf`
	- [ ] FOB clearance split into Big and Small
- [ ] L24 in `_presets.json` in `_tools\_presets` is missing `GRLIB_cleanup_delay`. Where is this?
	- Was removed by Wyqer in commit [3c3307e05feb827d138f6e0eb9153f9eb9a8e81e](https://github.com/moistbois/Moist-Liberation-APR/commit/3c3307e05feb827d138f6e0eb9153f9eb9a8e81e)
		- Why?
- [ ] Add FFE into `init.sqf`
	- [ ] Consider `class addArtyToSupport` L7 in `Missionframework\CfgFunctions.hpp`
- [ ] Change flags in `Missionframework\res\flag_kp_co.paa`
- [ ] Is it worth re-implementing persistent storage in `Missionframework/functions/fn_getSaveData.sqf`?
- [ ] Are we still doing toolkits on every vehicle spawn? Couldn't it be done via the objectInit script?
	- [ ] `Missionframework\functions\fn_spawnVehicle.sqf` L75-76

#### Presets:
- [ ] Add presets to:
	- [ ] `Missionframework/KPLIB_config.sqf`
	- [ ] `Missionframework/scripts/client/init_client.sqf` - This is where server initializes all of the presets to pick via KPLIB Config
- [ ] All `case` instances will have to be updated.
	- L77 in `Missionframework\scripts\server\init_server.sqf` to L110 use the Opfor loadout case defined in "Missionframework\KPLIB_config.sqf"
- [ ] Move things from old player presets to new format.

#### Multiple MSP Stuff:
- [ ] Remove isTouchingGround and surfaceIsWater restrictions from `fn_getMobileRespawns.sqf`
- [ ] Add multiple types of mobile respawns. Intended to be truck, boat, then helicopter in `KPLIB_b_mobileRespawn`
	- [ ] Affected files will be
		- [ ] `Missionframework\presets\init_presets.sqf`
		- [ ] `Missionframework\scripts\client\build\open_build_menu.sqf`
		- [ ] `Missionframework\scripts\client\misc\playerNamespace.sqf`
		- [ ] Every preset file
- [ ] Change `Missionframework\scripts\client\markers\fob_markers.sqf`, `Missionframework\scripts\client\spawn\redeploy_manager.sqf`, to use new multiple types of mobile respawns
- [ ] `KPLIB_b_mobileRespawn` in `presets/players` arsenals needs to be updated for the Multiple MSP types system.
	- [ ] Previous implementation used `Respawn_truck_typename`
		- Example: `Respawn_truck_typename = ["B_LINGOR_Unimog_Transport", "rhsgref_hidf_rhib", "B_LINGOR_CH_34D"];                           // This is the mobile respawn (and medical) truck.`
	- [ ] Implement case system as well. Previous implementation had extra cases in `support_vehicles = [` (L251 in old build presets)
		- This is now `KPLIB_b_vehSupport` in the player presets SQF.
	- [ ] Double check local files as they may have a newer implementation.



CHANGELOG:
- [x] Implement Doxus build system
- [x] Translate `Missionframework\GREUH\GREUH_config.sqf`
- [x] Add FFE base
	- Still need to do Init.sqf stuff!
- [x] Server specific `stringtable.xml` changes
- [x] Remove civilian names from `stringtable.xml`.
- [x] Add global chat kill blame for allied AI and civilian kills.
	- `Missionframework\stringtable.xml`
	- `Missionframework\scripts\shared\kill_manager.sqf`
	- `Missionframework\functions\fn_crGlobalMsg.sqf`
- [x] Remove radio from `Missionframework\onPlayerRespawn.sqf`.
- [x] Disable engine artillery for players in `Missionframework\onPlayerRespawn.sqf`. [NEEDS TESTING]
- [x] Server specific changes to`Missionframework\description.ext`

- [x] Update `Missionframework\ui\liberation_titles.hpp` to make it easier to tell if it's loading or broken
- [x] Bake Moistbois Parameters
- `fn_addActionsPlayer.sqf`
	- [x] Remove Tutorial System, HALO system, Squad management
- [x] Fixed awkward title in `Missionframework\scripts\client\ui\cinematic_camera.sqf`
- [x] Add Chongo presets:
	- `Missionframework\scripts\client\misc\fn_initArsenal.sqf`
	- `Missionframework\presets\init_presets.sqf`
	- `Missionframework\presets\players\african_militia.sqf`
	- `Missionframework\presets\enemies\african_militia.sqf`
	- `Missionframework\presets\arsenal\central_africa.sqf`
	- `Missionframework\KPLIB_config.sqf`
- [x] Add more transport configs to `Missionframework\KPLIB_transportConfigs.sqf`
- [x] Added vehicles and buildings to `Missionframework\KPLIB_classnameLists.sqf`
	- Also replaced `Land_Communication_F` with `TFAR_Land_Communication_F` as it's supposed to interact with TFAR.
- [x] Added Chongo mission source to `Missionbasefiles\`
- [x] Add Africa FOB Templates

