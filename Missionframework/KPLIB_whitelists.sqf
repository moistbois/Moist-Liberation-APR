/*
    File: KPLIB_whitelists.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-07-06
    Last Update: 2020-07-06
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Arrays of steam IDs for granting access to several features/mechanics.
        All IDs have to be added as string.

        To retrieve steam IDs this site might be handy: https://steamid.io/

    Example:
        KPLIB_whitelist_cmdrSlot = [
            "123445245",
            "235245345",
            "456454443"
        ];
*/

// Access to the commander slot.
KPLIB_whitelist_cmdrSlot = [
"76561197987024260",
"76561198008312874",
"76561198000385969",
"76561197985376062",
"76561198043778465",
"76561198005172581",
"76561198025788274",
"76561197992368817",
"76561198264938295",
"76561198264938295"
];

// Access the commander actions (rights, production, etc.), even if the corresponding player is not in the commander slot.
KPLIB_whitelist_cmdrActions = [
"76561197987024260",
"76561198008312874",
"76561198000385969",
"76561197985376062",
"76561198043778465",
"76561198005172581",
"76561198025788274",
"76561197992368817",
"76561198264938295",
"76561198264938295"
];

// Whitelist for BI support framework access.
KPLIB_whitelist_supportModule = [
"76561197987024260",
"76561198008312874",
"76561198000385969",
"76561197985376062",
"76561198043778465",
"76561198005172581",
"76561198025788274",
"76561197992368817",
"76561198264938295",
"76561198264938295"
];
