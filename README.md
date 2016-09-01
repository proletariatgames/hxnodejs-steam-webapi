# Haxe/hxnodejs externs for the [steam-webapi](https://www.npmjs.com/package/steam-webapi) npm library

Tested using `steam-webapi` version **0.6.5**

Example:
```haxe
import js.npm.Steam;

Steam.key = "YOUR API KEY";

Steam.ready(function(err) {
    if (err != null) { trace(err); return; }

    var steam = new Steam();

    // Retrieve the steam ID from a steam username/communityID 
    steam.resolveVanityURL({vanityurl:'jonbo'}, function(err, data) {
        trace(data);
        // data -> { steamid: '76561197968620915', success: 1 } 
 
        // Get the Player's TF2 Backpack items 
        data.gameid = Steam.TF2;
 
        // getPlayerItems requires { gameid, steamid } 
        steam.getPlayerItems(data, function (err, data) {
            trace(data);
            // data -> { status: 1, num_backpack_slots: 1100, items: [...], ...} 
        });
    });
});
```
