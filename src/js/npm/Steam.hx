package js.npm;
import js.Error;

@:jsRequire('steam-webapi')
extern class Steam {
  static var key:String;

  static var TF2:Int;
  static var DOTA2:Int;
  static var PORTAL2:Int;
  static var CSGO:Int;

  /**
   * Retrieve the current set of Steam WebAPI methods from the API itself
   *
   * @param {String} (optional) key A Steam API key
   * @param {Function} callback After the methods are retrieved and compiled for reference
   */
  @:overload(function(callback:Null<Error>->Void):Void {})
  static function ready(key:String, callback:Null<Error>->Void):Void;

  static var devMode:Bool;

  @:overload(function():Void {})
  function new(args:SteamArgs);

  /**
    version 1 {ISteamWebAPIUtil}
   **/
  function getSupportedAPIList(args:{ > SteamArgs,
    /**
      access key
     */
    @:optional var key(default, null) : String;
  }, callback:Null<Error>->SteamSupportedApiList->Void):Void;

  /**
    version 1 {ICSGOPlayers_730}
   **/
  function getPlayerProfileCoin(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The steam ID
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The coin
     **/
     var coin(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICSGOServers_730}
   **/
  function getGameServersStatus(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICSGOTournaments_730}
   **/
  function getTournamentFantasyLineup(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The event ID
     **/
     var event(default, null) : UInt;
    /**
      The SteamID of the user inventory
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Authentication obtained from the SteamID
     **/
     var steamidkey(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICSGOTournaments_730}
   **/
  function getTournamentItems(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The event ID
     **/
     var event(default, null) : UInt;
    /**
      The SteamID of the user inventory
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Authentication obtained from the SteamID
     **/
     var steamidkey(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICSGOTournaments_730}
   **/
  function getTournamentLayout(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The event ID
     **/
     var event(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICSGOTournaments_730}
   **/
  function getTournamentPredictions(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The event ID
     **/
     var event(default, null) : UInt;
    /**
      The SteamID of the user inventory
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Authentication obtained from the SteamID
     **/
     var steamidkey(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICSGOTournaments_730}
   **/
  function uploadTournamentFantasyLineup(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The event ID
     **/
     var event(default, null) : UInt;
    /**
      The SteamID of the user inventory
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Authentication obtained from the SteamID
     **/
     var steamidkey(default, null) : String;
    /**
      Event section id
     **/
     var sectionid(default, null) : UInt;
    /**
      PickID to select for the slot
     **/
     var pickid0(default, null) : UInt;
    /**
      ItemID to lock in for the pick
     **/
     var itemid0(default, null) : Float /* uint64 */;
    /**
      PickID to select for the slot
     **/
     var pickid1(default, null) : UInt;
    /**
      ItemID to lock in for the pick
     **/
     var itemid1(default, null) : Float /* uint64 */;
    /**
      PickID to select for the slot
     **/
     var pickid2(default, null) : UInt;
    /**
      ItemID to lock in for the pick
     **/
     var itemid2(default, null) : Float /* uint64 */;
    /**
      PickID to select for the slot
     **/
     var pickid3(default, null) : UInt;
    /**
      ItemID to lock in for the pick
     **/
     var itemid3(default, null) : Float /* uint64 */;
    /**
      PickID to select for the slot
     **/
     var pickid4(default, null) : UInt;
    /**
      ItemID to lock in for the pick
     **/
     var itemid4(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICSGOTournaments_730}
   **/
  function uploadTournamentPredictions(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The event ID
     **/
     var event(default, null) : UInt;
    /**
      The SteamID of the user inventory
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Authentication obtained from the SteamID
     **/
     var steamidkey(default, null) : String;
    /**
      Event section id
     **/
     var sectionid(default, null) : UInt;
    /**
      Event group id
     **/
     var groupid(default, null) : UInt;
    /**
      Index in group
     **/
     var index(default, null) : UInt;
    /**
      Pick ID to select
     **/
     var pickid(default, null) : UInt;
    /**
      ItemID to lock in for the pick
     **/
     var itemid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Fantasy_205790}
   **/
  function getFantasyPlayerStats(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The fantasy league ID
     **/
     var FantasyLeagueID(default, null) : UInt;
    /**
      An optional filter for minimum timestamp
     **/
    @:optional  var StartTime(default, null) : UInt;
    /**
      An optional filter for maximum timestamp
     **/
    @:optional  var EndTime(default, null) : UInt;
    /**
      An optional filter for a specific match
     **/
    @:optional  var matchid(default, null) : Float /* uint64 */;
    /**
      An optional filter for a specific series
     **/
    @:optional  var SeriesID(default, null) : UInt;
    /**
      An optional filter for a specific player
     **/
    @:optional  var PlayerAccountID(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Fantasy_205790}
   **/
  function getPlayerOfficialInfo(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The account ID to look up
     **/
     var accountid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Fantasy_205790}
   **/
  function getProPlayerList(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2MatchStats_205790}
   **/
  function getRealtimeStats(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**

     **/
     var server_steam_id(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getLeagueListing(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getLiveLeagueGames(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Only show matches of the specified league id
     **/
    @:optional  var league_id(default, null) : UInt;
    /**
      Only show matches of the specified match id
     **/
    @:optional  var match_id(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getMatchDetails(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Match id
     **/
     var match_id(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getMatchHistory(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The ID of the hero that must be in the matches being queried
     **/
    @:optional  var hero_id(default, null) : UInt;
    /**
      Which game mode to return matches for
     **/
    @:optional  var game_mode(default, null) : UInt;
    /**
      The average skill range of the match, these can be [1-3] with lower numbers being lower skill. Ignored if an account ID is specified
     **/
    @:optional  var skill(default, null) : UInt;
    /**
      Minimum number of human players that must be in a match for it to be returned
     **/
    @:optional  var min_players(default, null) : String;
    /**
      An account ID to get matches from. This will fail if the user has their match history hidden
     **/
    @:optional  var account_id(default, null) : String;
    /**
      The league ID to return games from
     **/
    @:optional  var league_id(default, null) : String;
    /**
      The minimum match ID to start from
     **/
    @:optional  var start_at_match_id(default, null) : Float /* uint64 */;
    /**
      The number of requested matches to return
     **/
    @:optional  var matches_requested(default, null) : String;
    /**
      Whether or not tournament games should only be returned
     **/
    @:optional  var tournament_games_only(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getMatchHistoryBySequenceNum(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**

     **/
    @:optional  var start_at_match_seq_num(default, null) : Float /* uint64 */;
    /**

     **/
    @:optional  var matches_requested(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getScheduledLeagueGames(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The starting time stamp to collect scheduled games from. If ignored, it will use the current time
     **/
    @:optional  var date_min(default, null) : UInt;
    /**
      The ending time stamp. If this is more than 7 days past the starting time stamp, it will be clamped to 7 days.
     **/
    @:optional  var date_max(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getTeamInfoByTeamID(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**

     **/
    @:optional  var start_at_team_id(default, null) : Float /* uint64 */;
    /**

     **/
    @:optional  var teams_requested(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Match_205790}
   **/
  function getTopLiveGame(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Which partner's games to use.
     **/
     var partner(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 2 {IDOTA2Match_205790}
   **/
  function getTournamentPlayerStats(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**

     **/
     var account_id(default, null) : String;
    /**

     **/
    @:optional  var league_id(default, null) : String;
    /**

     **/
    @:optional  var hero_id(default, null) : String;
    /**

     **/
    @:optional  var time_frame(default, null) : String;
    /**

     **/
    @:optional  var match_id(default, null) : Float /* uint64 */;
    /**

     **/
    @:optional  var phase_id(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2StreamSystem_205790}
   **/
  function getBroadcasterInfo(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      64-bit Steam ID of the broadcaster
     **/
     var broadcaster_steam_id(default, null) : Float /* uint64 */;
    /**
      LeagueID to use if we aren't in a lobby
     **/
    @:optional  var league_id(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Teams_205790}
   **/
  function getTeamInfo(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Team ID that you're requesting info about
     **/
    @:optional  var team_id(default, null) : UInt;
    /**
      League ID for which you're requesting all regisered teams info
     **/
    @:optional  var league_id(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Ticket_205790}
   **/
  function setSteamAccountPurchased(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Event ID
     **/
     var eventid(default, null) : UInt;
    /**
      The 64-bit Steam ID
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Ticket_205790}
   **/
  function steamAccountValidForEvent(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Event ID
     **/
     var eventid(default, null) : UInt;
    /**
      The 64-bit Steam ID
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Ticket_570}
   **/
  function claimBadgeReward(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Event ID
     **/
     var eventid(default, null) : UInt;
    /**
      The badge ID
     **/
     var BadgeID(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IDOTA2Ticket_570}
   **/
  function getSteamIDForBadgeID(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The badge ID
     **/
     var BadgeID(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconDOTA2_205790}
   **/
  function getEventStatsForAccount(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The League ID of the compendium you're looking for.
     **/
     var eventid(default, null) : UInt;
    /**
      The account ID to look up.
     **/
     var accountid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconDOTA2_205790}
   **/
  function getGameItems(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconDOTA2_205790}
   **/
  function getHeroes(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      Return a list of itemized heroes only.
     **/
    @:optional  var itemizedonly(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconDOTA2_205790}
   **/
  function getItemIconPath(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The item icon name to get the CDN path of
     **/
     var iconname(default, null) : String;
    /**
      The type of image you want. 0 = normal, 1 = large, 2 = ingame
     **/
    @:optional  var icontype(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconDOTA2_205790}
   **/
  function getRarities(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconDOTA2_205790}
   **/
  function getTournamentPrizePool(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The ID of the league to get the prize pool of
     **/
    @:optional  var leagueid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconItems_205790}
   **/
  function getPlayerItems(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The Steam ID to fetch items for
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconItems_205790}
   **/
  function getSchema(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconItems_205790}
   **/
  function getSchemaURL(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconItems_205790}
   **/
  function getStoreMetaData(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconItems_440}
   **/
  function getStoreStatus(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconItems_570}
   **/
  function getEquippedPlayerItems(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The Steam ID to fetch items for
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Return items equipped for this class id
     **/
     var class_id(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameInventory}
   **/
  function getHistoryCommandDetails(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      The steam ID of the account to operate on
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The command to run on that asset
     **/
     var command(default, null) : String;
    /**
      The context to fetch history for
     **/
     var contextid(default, null) : Float /* uint64 */;
    /**
      The arguments that were provided with the command in the first place
     **/
     var arguments(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameInventory}
   **/
  function getUserHistory(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      The Steam ID to fetch history for
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The context to fetch history for
     **/
     var contextid(default, null) : Float /* uint64 */;
    /**
      Start time of the history range to collect
     **/
     var starttime(default, null) : UInt;
    /**
      End time of the history range to collect
     **/
     var endtime(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameInventory}
   **/
  function historyExecuteCommands(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      The asset ID to operate on
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The context to fetch history for
     **/
     var contextid(default, null) : Float /* uint64 */;
    /**
      A unique 32 bit ID for the support person executing the command
     **/
     var actorid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameInventory}
   **/
  function supportGetAssetHistory(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      The asset ID to operate on
     **/
     var assetid(default, null) : Float /* uint64 */;
    /**
      The context to fetch history for
     **/
     var contextid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGCVersion_205790}
   **/
  function getClientVersion(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGCVersion_205790}
   **/
  function getServerVersion(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPortal2Leaderboards_620}
   **/
  function getBucketizedData(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The leaderboard name to fetch data for.
     **/
     var leaderboardName(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getAppBetas(args:{ > SteamArgs,

    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getAppBuilds(args:{ > SteamArgs,

    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
    /**
      # of builds to retrieve (default 10)
     **/
    @:optional  var count(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getAppDepotVersions(args:{ > SteamArgs,

    /**
      AppID of depot
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getAppList(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getCheatingReports(args:{ > SteamArgs,

    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
    /**
      Time range begin
     **/
     var timebegin(default, null) : UInt;
    /**
      Time range end
     **/
     var timeend(default, null) : UInt;
    /**
      include reports that were not bans
     **/
     var includereports(default, null) : Bool;
    /**
      include reports that were bans
     **/
     var includebans(default, null) : Bool;
    /**
      minimum report id
     **/
    @:optional  var reportidmin(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getPlayersBanned(args:{ > SteamArgs,

    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getServerList(args:{ > SteamArgs,

    /**
      Query filter string
     **/
    @:optional  var filter(default, null) : String;
    /**
      Limit number of servers in the response
     **/
    @:optional  var limit(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function getServersAtAddress(args:{ > SteamArgs,

    /**
      IP or IP:queryport to list
     **/
     var addr(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function setAppBuildLive(args:{ > SteamArgs,

    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
    /**
      BuildID
     **/
     var buildid(default, null) : UInt;
    /**
      beta key, required. Use public for default branch
     **/
     var betakey(default, null) : String;
    /**
      optional description for this build
     **/
    @:optional  var description(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamApps}
   **/
  function upToDateCheck(args:{ > SteamArgs,

    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamBitPay}
   **/
  function bitPayPaymentNotification(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamCDN}
   **/
  function setClientFilters(args:{ > SteamArgs,

    /**
      Steam name of CDN property
     **/
     var cdnname(default, null) : String;
    /**
      comma-separated list of allowed IP address blocks in CIDR format - blank for not used
     **/
    @:optional  var allowedipblocks(default, null) : String;
    /**
      comma-separated list of allowed client network AS numbers - blank for not used
     **/
    @:optional  var allowedasns(default, null) : String;
    /**
      comma-separated list of allowed client IP country codes in ISO 3166-1 format - blank for not used
     **/
    @:optional  var allowedipcountries(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamCDN}
   **/
  function setPerformanceStats(args:{ > SteamArgs,

    /**
      Steam name of CDN property
     **/
     var cdnname(default, null) : String;
    /**
      Outgoing network traffic in Mbps
     **/
    @:optional  var mbps_sent(default, null) : UInt;
    /**
      Incoming network traffic in Mbps
     **/
    @:optional  var mbps_recv(default, null) : UInt;
    /**
      Percent CPU load
     **/
    @:optional  var cpu_percent(default, null) : UInt;
    /**
      Percent cache hits
     **/
    @:optional  var cache_hit_percent(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamCommunity}
   **/
  function reportAbuse(args:{ > SteamArgs,

    /**
      SteamID of user doing the reporting
     **/
     var steamidActor(default, null) : Float /* uint64 */;
    /**
      SteamID of the entity being accused of abuse
     **/
     var steamidTarget(default, null) : Float /* uint64 */;
    /**
      AppID to check for ownership
     **/
     var appid(default, null) : UInt;
    /**
      Abuse type code (see EAbuseReportType enum)
     **/
     var abuseType(default, null) : UInt;
    /**
      Content type code (see ECommunityContentType enum)
     **/
     var contentType(default, null) : UInt;
    /**
      Narrative from user
     **/
     var description(default, null) : String;
    /**
      GID of related record (depends on content type)
     **/
    @:optional  var gid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamDirectory}
   **/
  function getCMList(args:{ > SteamArgs,

    /**
      Client's Steam cell ID
     **/
     var cellid(default, null) : UInt;
    /**
      Max number of servers to return
     **/
    @:optional  var maxcount(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function canTrade(args:{ > SteamArgs,

    /**
      That the key is associated with. Must be a steam economy app.
     **/
     var appid(default, null) : UInt;
    /**
      SteamID of user attempting to initiate a trade
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      SteamID of user that is the target of the trade invitation
     **/
     var targetid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function finalizeAssetTransaction(args:{ > SteamArgs,

    /**
      The app ID the user is buying assets for
     **/
     var appid(default, null) : UInt;
    /**
      SteamID of the user making a purchase
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The transaction ID
     **/
     var txnid(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function getAssetClassInfo(args:{ > SteamArgs,

    /**
      Must be a steam economy app.
     **/
     var appid(default, null) : UInt;
    /**
      Number of classes requested. Must be at least one.
     **/
     var class_count(default, null) : UInt;
    /**
      Class ID of the nth class.
     **/
     var classid0(default, null) : Float /* uint64 */;
    /**
      Instance ID of the nth class.
     **/
    @:optional  var instanceid0(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function getAssetPrices(args:{ > SteamArgs,

    /**
      Must be a steam economy app.
     **/
     var appid(default, null) : UInt;
    /**
      The currency to filter for
     **/
    @:optional  var currency(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function getExportedAssetsForUser(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The app to get exported items from.
     **/
     var appid(default, null) : UInt;
    /**
      The context in the app to get exported items from.
     **/
     var contextid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function getMarketPrices(args:{ > SteamArgs,

    /**
      Must be a steam economy app.
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function startAssetTransaction(args:{ > SteamArgs,

    /**
      The app ID the user is buying assets for
     **/
     var appid(default, null) : UInt;
    /**
      SteamID of user making a purchase
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The ID of the first asset the user is buying - there must be at least one
     **/
     var assetid0(default, null) : String;
    /**
      The quantity of assetid0's the the user is buying
     **/
     var assetquantity0(default, null) : UInt;
    /**
      The local currency for the user
     **/
     var currency(default, null) : String;
    /**
      The user's IP address
     **/
     var ipaddress(default, null) : String;
    /**
      The referring URL
     **/
    @:optional  var referrer(default, null) : String;
    /**
      If true (default is false), the authorization will appear in the user's steam client overlay, rather than as a web page - useful for stores that are embedded in products.
     **/
    @:optional  var clientauth(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEconomy}
   **/
  function startTrade(args:{ > SteamArgs,

    /**
      That the key is associated with. Must be a steam economy app.
     **/
     var appid(default, null) : UInt;
    /**
      SteamID of first user in the trade
     **/
     var partya(default, null) : Float /* uint64 */;
    /**
      SteamID of second user in the trade
     **/
     var partyb(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEnvoy}
   **/
  function paymentOutNotification(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamEnvoy}
   **/
  function paymentOutReversalNotification(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamGameServerStats}
   **/
  function getGameServerPlayerStatsForGame(args:{ > SteamArgs,

    /**
      game id to get stats for, if not a mod, it's safe to use appid here
     **/
     var gameid(default, null) : Float /* uint64 */;
    /**
      appID of the game
     **/
     var appid(default, null) : UInt;
    /**
      range start date/time (Format: YYYY-MM-DD HH:MM:SS, seattle local time
     **/
     var rangestart(default, null) : String;
    /**
      range end date/time (Format: YYYY-MM-DD HH:MM:SS, seattle local time
     **/
     var rangeend(default, null) : String;
    /**
      Max number of results to return (up to 1000)
     **/
    @:optional  var maxresults(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamLeaderboards}
   **/
  function deleteLeaderboard(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      name of the leaderboard to delete
     **/
     var name(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamLeaderboards}
   **/
  function findOrCreateLeaderboard(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      name of the leaderboard to create
     **/
     var name(default, null) : String;
    /**
      sort method to use for this leaderboard (defaults to Ascending)
     **/
    @:optional  var sortmethod(default, null) : String;
    /**
      display type for this leaderboard (defaults to Numeric)
     **/
    @:optional  var displaytype(default, null) : String;
    /**
      if this is true the leaderboard will be created if it doesn't exist. Defaults to true.
     **/
    @:optional  var createifnotfound(default, null) : Bool;
    /**
      if this is true the leaderboard scores cannot be set by clients, and can only be set by publisher via SetLeaderboardScore WebAPI. Defaults to false.
     **/
    @:optional  var onlytrustedwrites(default, null) : Bool;
    /**
      if this is true the leaderboard scores can only be read for friends by clients, scores can always be read by publisher. Defaults to false.
     **/
    @:optional  var onlyfriendsreads(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamLeaderboards}
   **/
  function getLeaderboardEntries(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      range start or 0
     **/
     var rangestart(default, null) : Int;
    /**
      range end or max LB entries
     **/
     var rangeend(default, null) : Int;
    /**
      SteamID used for friend & around user requests
     **/
    @:optional  var steamid(default, null) : Float /* uint64 */;
    /**
      ID of the leaderboard to view
     **/
     var leaderboardid(default, null) : Int;
    /**
      type of request: RequestGlobal, RequestAroundUser, RequestFriends
     **/
     var datarequest(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamLeaderboards}
   **/
  function getLeaderboardsForGame(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamLeaderboards}
   **/
  function resetLeaderboard(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      numeric ID of the target leaderboard. Can be retrieved from GetLeaderboardsForGame
     **/
     var leaderboardid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamLeaderboards}
   **/
  function setLeaderboardScore(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      numeric ID of the target leaderboard. Can be retrieved from GetLeaderboardsForGame
     **/
     var leaderboardid(default, null) : UInt;
    /**
      steamID to set the score for
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      the score to set for this user
     **/
     var score(default, null) : Int;
    /**
      update method to use. Can be "KeepBest" or "ForceUpdate"
     **/
     var scoremethod(default, null) : String;
    /**
      game-specific details for how the score was earned. Up to 256 bytes.
     **/
    @:optional  var details(default, null) : js.node.Buffer;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function adjustAgreement(args:{ > SteamArgs,

    /**
      SteamID of user with the agreement
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      ID of agreement
     **/
     var agreementid(default, null) : Float /* uint64 */;
    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
    /**
      Date for next process
     **/
     var nextprocessdate(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function cancelAgreement(args:{ > SteamArgs,

    /**
      SteamID of user with the agreement
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      ID of agreement
     **/
     var agreementid(default, null) : Float /* uint64 */;
    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function finalizeTxn(args:{ > SteamArgs,

    /**
      3rd party ID for transaction
     **/
     var orderid(default, null) : Float /* uint64 */;
    /**
      AppID of game this transaction is for
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function getReport(args:{ > SteamArgs,

    /**
      AppID of game this transaction is for
     **/
     var appid(default, null) : UInt;
    /**
      Report type (GAMESALES, STEAMSTORE, SETTLEMENT)
     **/
    @:optional  var type(default, null) : String;
    /**
      Beginning time to start report from (RFC 3339 UTC format)
     **/
     var time(default, null) : String;
    /**
      Max number of results to return (up to 1000)
     **/
    @:optional  var maxresults(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function getUserAgreementInfo(args:{ > SteamArgs,

    /**
      SteamID of user making purchase
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function getUserInfo(args:{ > SteamArgs,

    /**
      SteamID of user making purchase
     **/
    @:optional  var steamid(default, null) : Float /* uint64 */;
    /**
      ip address of user in string format (xxx.xxx.xxx.xxx). Only required if usersession=web
     **/
    @:optional  var ipaddress(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function initTxn(args:{ > SteamArgs,

    /**
      3rd party ID for transaction
     **/
     var orderid(default, null) : Float /* uint64 */;
    /**
      SteamID of user making purchase
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      AppID of game this transaction is for
     **/
     var appid(default, null) : UInt;
    /**
      Number of items in cart
     **/
     var itemcount(default, null) : UInt;
    /**
      ISO 4217 currency code
     **/
     var currency(default, null) : String;
    /**
      session where user will authorize the transaction. client or web (defaults to client)
     **/
    @:optional  var usersession(default, null) : String;
    /**
      ip address of user in string format (xxx.xxx.xxx.xxx). Only required if usersession=web
     **/
    @:optional  var ipaddress(default, null) : String;
    /**
      3rd party ID for item
     **/
     var itemid(default, null) : Array<UInt>;
    /**
      Quantity of this item
     **/
     var qty(default, null) : Array<UInt>;
    /**
      Total cost (in cents) of item(s)
     **/
     var amount(default, null) : Array<Int>;
    /**
      Description of item
     **/
     var description(default, null) : Array<String>;
    /**
      Optional category grouping for item
     **/
    @:optional  var category(default, null) : Array<String>;
    /**
      Optional bundleid of associated bundle
     **/
    @:optional  var associated_bundle(default, null) : Array<UInt>;
    /**
      Optional recurring billing type
     **/
    @:optional  var billingtype(default, null) : Array<String>;
    /**
      Optional start date for recurring billing
     **/
    @:optional  var startdate(default, null) : Array<String>;
    /**
      Optional end date for recurring billing
     **/
    @:optional  var enddate(default, null) : Array<String>;
    /**
      Optional period for recurring billing
     **/
    @:optional  var period(default, null) : Array<String>;
    /**
      Optional frequency for recurring billing
     **/
    @:optional  var frequency(default, null) : Array<UInt>;
    /**
      Optional recurring billing amount
     **/
    @:optional  var recurringamt(default, null) : Array<String>;
    /**
      Number of bundles in cart
     **/
    @:optional  var bundlecount(default, null) : UInt;
    /**
      3rd party ID of the bundle. This shares the same ID space as 3rd party items.
     **/
    @:optional  var bundleid(default, null) : Array<UInt>;
    /**
      Quantity of this bundle
     **/
    @:optional  var bundle_qty(default, null) : Array<UInt>;
    /**
      Description of bundle
     **/
    @:optional  var bundle_desc(default, null) : Array<String>;
    /**
      Optional category grouping for bundle
     **/
    @:optional  var bundle_category(default, null) : Array<String>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function processAgreement(args:{ > SteamArgs,

    /**
      3rd party ID for transaction
     **/
     var orderid(default, null) : Float /* uint64 */;
    /**
      SteamID of user with the agreement
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      ID of agreement
     **/
     var agreementid(default, null) : Float /* uint64 */;
    /**
      AppID of game
     **/
     var appid(default, null) : UInt;
    /**
      Total cost (in cents) to charge
     **/
     var amount(default, null) : Int;
    /**
      ISO 4217 currency code
     **/
     var currency(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function queryTxn(args:{ > SteamArgs,

    /**
      AppID of game this transaction is for
     **/
     var appid(default, null) : UInt;
    /**
      3rd party ID for transaction
     **/
    @:optional  var orderid(default, null) : Float /* uint64 */;
    /**
      Steam transaction ID
     **/
    @:optional  var transid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamMicroTxn}
   **/
  function refundTxn(args:{ > SteamArgs,

    /**
      3rd party ID for transaction
     **/
     var orderid(default, null) : Float /* uint64 */;
    /**
      AppID of game this transaction is for
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamNews}
   **/
  function getNewsForApp(args:{ > SteamArgs,

    /**
      AppID to retrieve news for
     **/
     var appid(default, null) : UInt;
    /**
      Maximum length for the content to return, if this is 0 the full content is returned, if it's less then a blurb is generated to fit.
     **/
    @:optional  var maxlength(default, null) : UInt;
    /**
      Retrieve posts earlier than this date (unix epoch timestamp)
     **/
    @:optional  var enddate(default, null) : UInt;
    /**
      # of posts to retrieve (default 20)
     **/
    @:optional  var count(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamNews}
   **/
  function getNewsForAppAuthed(args:{ > SteamArgs,

    /**
      AppID to retrieve news for
     **/
     var appid(default, null) : UInt;
    /**
      Maximum length for the content to return, if this is 0 the full content is returned, if it's less then a blurb is generated to fit.
     **/
    @:optional  var maxlength(default, null) : UInt;
    /**
      Retrieve posts earlier than this date (unix epoch timestamp)
     **/
    @:optional  var enddate(default, null) : UInt;
    /**
      # of posts to retrieve (default 20)
     **/
    @:optional  var count(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamPayPalPaymentsHub}
   **/
  function payPalPaymentsHubPaymentNotification(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamPublishedItemSearch}
   **/
  function rankedByPublicationOrder(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
    /**
      Starting index in the result set (0 based)
     **/
     var startidx(default, null) : UInt;
    /**
      Number Requested
     **/
     var count(default, null) : UInt;
    /**
      Number of Tags Specified
     **/
     var tagcount(default, null) : UInt;
    /**
      Number of User specific tags requested
     **/
     var usertagcount(default, null) : UInt;
    /**
      Whether the user making the request is an admin for the app and can see private files
     **/
    @:optional  var hasappadminaccess(default, null) : Bool;
    /**
      EPublishedFileInfoMatchingFileType, defaults to k_PFI_MatchingFileType_Items
     **/
    @:optional  var fileType(default, null) : UInt;
    /**
      Tag to filter result set
     **/
    @:optional  var tag(default, null) : Array<String>;
    /**
      A user specific tag
     **/
    @:optional  var usertag(default, null) : Array<String>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamPublishedItemSearch}
   **/
  function rankedByTrend(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
    /**
      Starting index in the result set (0 based)
     **/
     var startidx(default, null) : UInt;
    /**
      Number Requested
     **/
     var count(default, null) : UInt;
    /**
      Number of Tags Specified
     **/
     var tagcount(default, null) : UInt;
    /**
      Number of User specific tags requested
     **/
     var usertagcount(default, null) : UInt;
    /**
      Whether the user making the request is an admin for the app and can see private files
     **/
    @:optional  var hasappadminaccess(default, null) : Bool;
    /**
      EPublishedFileInfoMatchingFileType, defaults to k_PFI_MatchingFileType_Items
     **/
    @:optional  var fileType(default, null) : UInt;
    /**
      [1,7] number of days for the trend period, including today
     **/
    @:optional  var days(default, null) : UInt;
    /**
      Tag to filter result set
     **/
    @:optional  var tag(default, null) : Array<String>;
    /**
      A user specific tag
     **/
    @:optional  var usertag(default, null) : Array<String>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamPublishedItemSearch}
   **/
  function rankedByVote(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
    /**
      Starting index in the result set (0 based)
     **/
     var startidx(default, null) : UInt;
    /**
      Number Requested
     **/
     var count(default, null) : UInt;
    /**
      Number of Tags Specified
     **/
     var tagcount(default, null) : UInt;
    /**
      Number of User specific tags requested
     **/
     var usertagcount(default, null) : UInt;
    /**
      Whether the user making the request is an admin for the app and can see private files
     **/
    @:optional  var hasappadminaccess(default, null) : Bool;
    /**
      EPublishedFileInfoMatchingFileType, defaults to k_PFI_MatchingFileType_Items
     **/
    @:optional  var fileType(default, null) : UInt;
    /**
      Tag to filter result set
     **/
    @:optional  var tag(default, null) : Array<String>;
    /**
      A user specific tag
     **/
    @:optional  var usertag(default, null) : Array<String>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamPublishedItemSearch}
   **/
  function resultSetSummary(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID relevant to all subsequent tags
     **/
     var appid(default, null) : Float /* uint64 */;
    /**
      Number of Tags Specified
     **/
     var tagcount(default, null) : UInt;
    /**
      Number of User specific tags requested
     **/
     var usertagcount(default, null) : UInt;
    /**
      Whether the user making the request is an admin for the app and can see private files
     **/
    @:optional  var hasappadminaccess(default, null) : Bool;
    /**
      EPublishedFileInfoMatchingFileType, defaults to k_PFI_MatchingFileType_Items
     **/
    @:optional  var fileType(default, null) : UInt;
    /**
      Tag to filter result set
     **/
    @:optional  var tag(default, null) : Array<String>;
    /**
      A user specific tag
     **/
    @:optional  var usertag(default, null) : Array<String>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamPublishedItemVoting}
   **/
  function itemVoteSummary(args:{ > SteamArgs,

    /**
      Steam ID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
    /**
      Count of how many items we are querying
     **/
     var count(default, null) : UInt;
    /**
      The Published File ID who's vote details are required
     **/
    @:optional  var publishedfileid(default, null) : Array<Float /* uint64 */>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamPublishedItemVoting}
   **/
  function userVoteSummary(args:{ > SteamArgs,

    /**
      Steam ID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Count of how many items we are querying
     **/
     var count(default, null) : UInt;
    /**
      A Specific Published Item
     **/
    @:optional  var publishedfileid(default, null) : Array<Float /* uint64 */>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function enumerateUserPublishedFiles(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function enumerateUserSubscribedFiles(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
    /**
      EUCMListType
     **/
    @:optional  var listtype(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function getCollectionDetails(args:{ > SteamArgs,

    /**
      Number of collections being requested
     **/
     var collectioncount(default, null) : UInt;
    /**
      collection ids to get the details for
     **/
     var publishedfileids(default, null) : Array<Float /* uint64 */>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function getPublishedFileDetails(args:{ > SteamArgs,

    /**
      Number of items being requested
     **/
     var itemcount(default, null) : UInt;
    /**
      published file id to look up
     **/
     var publishedfileids(default, null) : Array<Float /* uint64 */>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function getUGCFileDetails(args:{ > SteamArgs,

    /**
      If specified, only returns details if the file is owned by the SteamID specified
     **/
    @:optional  var steamid(default, null) : Float /* uint64 */;
    /**
      ID of UGC file to get info for
     **/
     var ugcid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function setUGCUsedByGC(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      ID of UGC file whose bits are being fiddled with
     **/
     var ugcid(default, null) : Float /* uint64 */;
    /**
      appID of product to change updating state for
     **/
     var appid(default, null) : UInt;
    /**
      New state of flag
     **/
     var used(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function subscribePublishedFile(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
    /**
      published file id to subscribe to
     **/
     var publishedfileid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamRemoteStorage}
   **/
  function unsubscribePublishedFile(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of product
     **/
     var appid(default, null) : UInt;
    /**
      published file id to unsubscribe from
     **/
     var publishedfileid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamSpecialSurvey}
   **/
  function checkUserStatus(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      ID of the survey being taken
     **/
     var surveyid(default, null) : UInt;
    /**
      SteamID of the user taking the survey
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Survey identity verification token for the user
     **/
     var token(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamSpecialSurvey}
   **/
  function setUserFinished(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      ID of the survey being taken
     **/
     var surveyid(default, null) : UInt;
    /**
      SteamID of the user taking the survey
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Survey identity verification token for the user
     **/
     var token(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function checkAppOwnership(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      AppID to check for ownership
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function getAppPriceInfo(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Comma-delimited list of appids (max: 100)
     **/
     var appids(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function getFriendList(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      relationship type (ex: friend)
     **/
    @:optional  var relationship(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function getPlayerBans(args:{ > SteamArgs,

    /**
      Comma-delimited list of SteamIDs
     **/
     var steamids(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function getPlayerSummaries(args:{ > SteamArgs,

    /**
      Comma-delimited list of SteamIDs
     **/
     var steamids(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function getPublisherAppOwnership(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function getUserGroupList(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function grantPackage(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      PackageID to grant
     **/
     var packageid(default, null) : UInt;
    /**
      ip address of user in string format (xxx.xxx.xxx.xxx).
     **/
    @:optional  var ipaddress(default, null) : String;
    /**
      Optionally associate third party key during grant. 'thirdpartyappid' will have to be set.
     **/
    @:optional  var thirdpartykey(default, null) : String;
    /**
      Has to be set if 'thirdpartykey' is set. The appid associated with the 'thirdpartykey'.
     **/
    @:optional  var thirdpartyappid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUser}
   **/
  function resolveVanityURL(args:{ > SteamArgs,

    /**
      The vanity URL to get a SteamID for
     **/
     var vanityurl(default, null) : String;
    /**
      The type of vanity URL. 1 (default): Individual profile, 2: Group, 3: Official game group
     **/
    @:optional  var url_type(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserAuth}
   **/
  function authenticateUser(args:{ > SteamArgs,

    /**
      Should be the users steamid, unencrypted.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Should be a 32 byte random blob of data, which is then encrypted with RSA using the Steam system's public key.  Randomness is important here for security.
     **/
     var sessionkey(default, null) : js.node.Buffer;
    /**
      Should be the users hashed loginkey, AES encrypted with the sessionkey.
     **/
     var encrypted_loginkey(default, null) : js.node.Buffer;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserAuth}
   **/
  function authenticateUserTicket(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      Ticket from GetAuthSessionTicket.
     **/
     var ticket(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserOAuth}
   **/
  function getTokenDetails(args:{ > SteamArgs,

    /**
      OAuth2 token for which to return details
     **/
     var access_token(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserStats}
   **/
  function getGlobalAchievementPercentagesForApp(args:{ > SteamArgs,

    /**
      GameID to retrieve the achievement percentages for
     **/
     var gameid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserStats}
   **/
  function getGlobalStatsForGame(args:{ > SteamArgs,

    /**
      AppID that we're getting global stats for
     **/
     var appid(default, null) : UInt;
    /**
      Number of stats get data for
     **/
     var count(default, null) : UInt;
    /**
      Names of stat to get data for
     **/
     var name(default, null) : Array<String>;
    /**
      Start date for daily totals (unix epoch timestamp)
     **/
    @:optional  var startdate(default, null) : UInt;
    /**
      End date for daily totals (unix epoch timestamp)
     **/
    @:optional  var enddate(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserStats}
   **/
  function getNumberOfCurrentPlayers(args:{ > SteamArgs,

    /**
      AppID that we're getting user count for
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserStats}
   **/
  function getPlayerAchievements(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      AppID to get achievements for
     **/
     var appid(default, null) : UInt;
    /**
      Language to return strings for
     **/
    @:optional  var l(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserStats}
   **/
  function getSchemaForGame(args:{ > SteamArgs,

    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      localized langauge to return (english, french, etc.)
     **/
    @:optional  var l(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserStats}
   **/
  function getUserStatsForGame(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appid of game
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamUserStats}
   **/
  function setUserStatsForGame(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appid of game
     **/
     var appid(default, null) : UInt;
    /**
      Number of stats and achievements to set a value for (name/value param pairs)
     **/
     var count(default, null) : UInt;
    /**
      Name of stat or achievement to set
     **/
     var name(default, null) : Array<String>;
    /**
      Value to set
     **/
     var value(default, null) : Array<UInt>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamVideo}
   **/
  function addVideo(args:{ > SteamArgs,

    /**
      SteamID of user
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      appID of the video
     **/
     var appid(default, null) : UInt;
    /**
      ID of the video on the provider's site
     **/
     var videoid(default, null) : String;
    /**
      Account name of the video's owner on the provider's site
     **/
     var accountname(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamWebAPIUtil}
   **/
  function getServerInfo(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamWebUserPresenceOAuth}
   **/
  function pollStatus(args:{ > SteamArgs,

    /**
      Steam ID of the user
     **/
     var steamid(default, null) : String;
    /**
      UMQ Session ID
     **/
     var umqid(default, null) : Float /* uint64 */;
    /**
      Message that was last known to the user
     **/
     var message(default, null) : UInt;
    /**
      Caller-specific poll id
     **/
    @:optional  var pollid(default, null) : UInt;
    /**
      Long-poll timeout in seconds
     **/
    @:optional  var sectimeout(default, null) : UInt;
    /**
      How many seconds is client considering itself idle, e.g. screen is off
     **/
    @:optional  var secidletime(default, null) : UInt;
    /**
      Boolean, 0 (default): return steamid_from in output, 1: return accountid_from
     **/
    @:optional  var use_accountids(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamWorkshop}
   **/
  function associateWorkshopItems(args:{ > SteamArgs,

    /**
      AppID of game this transaction is for
     **/
     var appid(default, null) : UInt;
    /**
      Number of items to associate
     **/
     var itemcount(default, null) : UInt;
    /**
      the workshop published file id
     **/
    @:optional  var publishedfileid(default, null) : Array<Float /* uint64 */>;
    /**
      3rd party ID for item
     **/
    @:optional  var gameitemid(default, null) : Array<UInt>;
    /**
      Percentage of revenue the owners of the workshop item will get from the sale of the item [0.0, 100.0].  For bundle-like items, send over an entry for each item in the bundle (gameitemid = bundle id) with different publishedfileids and with the revenue percentage pre-split amongst the items in the bundle (i.e. 30% / 10 items in the bundle)
     **/
    @:optional  var revenuepercentage(default, null) : Array<Float>;
    /**
      Game's description of the game item
     **/
    @:optional  var gameitemdescription(default, null) : Array<String>;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ISteamWorkshop}
   **/
  function getContributors(args:{ > SteamArgs,

    /**
      AppID of game this transaction is for
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 2 {ITFItems_440}
   **/
  function getGoldenWrenches(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ITFPromos_205790}
   **/
  function getItemID(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The Steam ID to fetch items for
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The promo ID to grant an item for
     **/
     var promoid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ITFPromos_205790}
   **/
  function grantItem(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
    /**
      The Steam ID to fetch items for
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The promo ID to grant an item for
     **/
     var promoid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ITFSystem_440}
   **/
  function getWorldStatus(args:{ > SteamArgs,

    /**
      The game ID
     **/
    var gameid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function getAccountList(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function createAccount(args:{ > SteamArgs,

    /**
      The app to use the account for
     **/
     var appid(default, null) : UInt;
    /**
      The memo to set on the new account
     **/
     var memo(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function setMemo(args:{ > SteamArgs,

    /**
      The SteamID of the game server to set the memo on
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The memo to set on the new account
     **/
     var memo(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function resetLoginToken(args:{ > SteamArgs,

    /**
      The SteamID of the game server to reset the login token of
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function deleteAccount(args:{ > SteamArgs,

    /**
      The SteamID of the game server account to delete
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function getAccountPublicInfo(args:{ > SteamArgs,

    /**
      The SteamID of the game server to get info on
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function queryLoginToken(args:{ > SteamArgs,

    /**
      Login token to query
     **/
     var login_token(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function setBanStatus(args:{ > SteamArgs,

     var steamid(default, null) : Float /* uint64 */;
     var banned(default, null) : Bool;
     var ban_seconds(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function getServerSteamIDsByIP(args:{ > SteamArgs,

     var server_ips(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameServersService}
   **/
  function getServerIPsBySteamID(args:{ > SteamArgs,

     var server_steamids(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IBroadcastService}
   **/
  function postGameDataFrame(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var steamid(default, null) : Float /* uint64 */;
     var broadcast_id(default, null) : Float /* uint64 */;
     var frame_data(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPublishedFileService}
   **/
  function queryFiles(args:{ > SteamArgs,

    /**
      enumeration EPublishedFileQueryType in clientenums.h
     **/
     var query_type(default, null) : UInt;
    /**
      Current page
     **/
     var page(default, null) : UInt;
    /**
      (Optional) The number of results, per page to return.
     **/
    @:optional  var numperpage(default, null) : UInt;
    /**
      App that created the files
     **/
     var creator_appid(default, null) : UInt;
    /**
      App that consumes the files
     **/
     var appid(default, null) : UInt;
    /**
      Tags to match on. See match_all_tags parameter below
     **/
     var requiredtags(default, null) : String;
    /**
      (Optional) Tags that must NOT be present on a published file to satisfy the query.
     **/
     var excludedtags(default, null) : String;
    /**
      If true, then items must have all the tags specified, otherwise they must have at least one of the tags.
     **/
    @:optional  var match_all_tags(default, null) : Bool;
    /**
      Required flags that must be set on any returned items
     **/
     var required_flags(default, null) : String;
    /**
      Flags that must not be set on any returned items
     **/
     var omitted_flags(default, null) : String;
    /**
      Text to match in the item's title or description
     **/
     var search_text(default, null) : String;
    /**
      EPublishedFileInfoMatchingFileType
     **/
     var filetype(default, null) : UInt;
    /**
      Find all items that reference the given item.
     **/
     var child_publishedfileid(default, null) : Float /* uint64 */;
    /**
      If query_type is k_PublishedFileQueryType_RankedByTrend, then this is the number of days to get votes for [1,7].
     **/
     var days(default, null) : UInt;
    /**
      If query_type is k_PublishedFileQueryType_RankedByTrend, then limit result set just to items that have votes within the day range given
     **/
     var include_recent_votes_only(default, null) : Bool;
    /**
      Allow stale data to be returned for the specified number of seconds.
     **/
    @:optional  var cache_max_age_seconds(default, null) : UInt;
    /**
      Required key-value tags to match on.
     **/
     var required_kv_tags(default, null) : Dynamic /* {message} */;
    /**
      (Optional) If true, only return the total number of files that satisfy this query.
     **/
     var totalonly(default, null) : Bool;
    /**
      (Optional) If true, only return the published file ids of files that satisfy this query.
     **/
     var ids_only(default, null) : Bool;
    /**
      Return vote data
     **/
     var return_vote_data(default, null) : Bool;
    /**
      Return tags in the file details
     **/
     var return_tags(default, null) : Bool;
    /**
      Return key-value tags in the file details
     **/
     var return_kv_tags(default, null) : Bool;
    /**
      Return preview image and video details in the file details
     **/
     var return_previews(default, null) : Bool;
    /**
      Return child item ids in the file details
     **/
     var return_children(default, null) : Bool;
    /**
      Populate the short_description field instead of file_description
     **/
     var return_short_description(default, null) : Bool;
    /**
      Return pricing information, if applicable
     **/
     var return_for_sale_data(default, null) : Bool;
    /**
      Populate the metadata
     **/
    @:optional  var return_metadata(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPublishedFileService}
   **/
  function setDeveloperMetadata(args:{ > SteamArgs,

     var publishedfileid(default, null) : Float /* uint64 */;
     var appid(default, null) : UInt;
     var metadata(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPublishedFileService}
   **/
  function updateTags(args:{ > SteamArgs,

     var publishedfileid(default, null) : Float /* uint64 */;
     var appid(default, null) : UInt;
     var add_tags(default, null) : String;
     var remove_tags(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function flushInventoryCache(args:{ > SteamArgs,

    /**
      User to clear cache for.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      App to clear cache for.
     **/
     var appid(default, null) : UInt;
    /**
      Context to clear cache for.
     **/
     var contextid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function flushAssetAppearanceCache(args:{ > SteamArgs,

     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function getTradeHistory(args:{ > SteamArgs,

    /**
      The number of trades to return information for
     **/
     var max_trades(default, null) : UInt;
    /**
      The time of the last trade shown on the previous page of results, or the time of the first trade if navigating back
     **/
     var start_after_time(default, null) : UInt;
    /**
      The tradeid shown on the previous page of results, or the ID of the first trade if navigating back
     **/
     var start_after_tradeid(default, null) : Float /* uint64 */;
    /**
      The user wants the previous page of results, so return the previous max_trades trades before the start time and ID
     **/
     var navigating_back(default, null) : Bool;
    /**
      If set, the item display data for the items included in the returned trades will also be returned
     **/
     var get_descriptions(default, null) : Bool;
     var include_failed(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function getTradeOffers(args:{ > SteamArgs,

    /**
      Request the list of sent offers.
     **/
     var get_sent_offers(default, null) : Bool;
    /**
      Request the list of received offers.
     **/
     var get_received_offers(default, null) : Bool;
    /**
      If set, the item display data for the items included in the returned trade offers will also be returned.
     **/
     var get_descriptions(default, null) : Bool;
    /**
      Indicates we should only return offers which are still active, or offers that have changed in state since the time_historical_cutoff
     **/
     var active_only(default, null) : Bool;
    /**
      Indicates we should only return offers which are not active.
     **/
     var historical_only(default, null) : Bool;
    /**
      When active_only is set, offers updated since this time will also be returned
     **/
     var time_historical_cutoff(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function getTradeOffer(args:{ > SteamArgs,

     var tradeofferid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function getTradeOffersSummary(args:{ > SteamArgs,

    /**
      The time the user last visited.  If not passed, will use the time the user last visited the trade offer page.
     **/
     var time_last_visit(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function declineTradeOffer(args:{ > SteamArgs,

     var tradeofferid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconService}
   **/
  function cancelTradeOffer(args:{ > SteamArgs,

     var tradeofferid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPlayerService}
   **/
  function recordOfflinePlaytime(args:{ > SteamArgs,

     var steamid(default, null) : Float /* uint64 */;
     var ticket(default, null) : String;
     var play_sessions(default, null) : Dynamic /* {message} */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPlayerService}
   **/
  function getRecentlyPlayedGames(args:{ > SteamArgs,

    /**
      The player we're asking about
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The number of games to return (0/unset: all)
     **/
     var count(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPlayerService}
   **/
  function getOwnedGames(args:{ > SteamArgs,

    /**
      The player we're asking about
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      true if we want additional details (name, icon) about each game
     **/
     var include_appinfo(default, null) : Bool;
    /**
      Free games are excluded by default.  If this is set, free games the user has played will be returned.
     **/
     var include_played_free_games(default, null) : Bool;
    /**
      if set, restricts result set to the passed in apps
     **/
     var appids_filter(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPlayerService}
   **/
  function getSteamLevel(args:{ > SteamArgs,

    /**
      The player we're asking about
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPlayerService}
   **/
  function getBadges(args:{ > SteamArgs,

    /**
      The player we're asking about
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPlayerService}
   **/
  function getCommunityBadgeProgress(args:{ > SteamArgs,

    /**
      The player we're asking about
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The badge we're asking about
     **/
     var badgeid(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IPlayerService}
   **/
  function isPlayingSharedGame(args:{ > SteamArgs,

    /**
      The player we're asking about
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The game player is currently playing
     **/
     var appid_playing(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameNotificationsService}
   **/
  function createSession(args:{ > SteamArgs,

    /**
      The appid to create the session for.
     **/
     var appid(default, null) : UInt;
    /**
      Game-specified context value the game can used to associate the session with some object on their backend.
     **/
     var context(default, null) : Float /* uint64 */;
    /**
      The title of the session to be displayed within each user's list of sessions.
     **/
     var title(default, null) : Dynamic /* {message} */;
    /**
      The initial state of all users in the session.
     **/
     var users(default, null) : Dynamic /* {message} */;
    /**
      (Optional) steamid to make the request on behalf of -- if specified, the user must be in the session and all users being added to the session must be friends with the user.
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameNotificationsService}
   **/
  function updateSession(args:{ > SteamArgs,

    /**
      The sessionid to update.
     **/
     var sessionid(default, null) : Float /* uint64 */;
    /**
      The appid of the session to update.
     **/
     var appid(default, null) : UInt;
    /**
      (Optional) The new title of the session.  If not specified, the title will not be changed.
     **/
     var title(default, null) : Dynamic /* {message} */;
    /**
      (Optional) A list of users whose state will be updated to reflect the given state. If the users are not already in the session, they will be added to it.
     **/
     var users(default, null) : Dynamic /* {message} */;
    /**
      (Optional) steamid to make the request on behalf of -- if specified, the user must be in the session and all users being added to the session must be friends with the user.
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameNotificationsService}
   **/
  function enumerateSessionsForApp(args:{ > SteamArgs,

    /**
      The sessionid to request details for. Optional. If not specified, all the user's sessions will be returned.
     **/
     var appid(default, null) : UInt;
    /**
      The user whose sessions are to be enumerated.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      (Optional) Boolean determining whether the message for all users should be included. Defaults to false.
     **/
     var include_all_user_messages(default, null) : Bool;
    /**
      (Optional) Boolean determining whether the message for the authenticated user should be included. Defaults to false.
     **/
     var include_auth_user_message(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameNotificationsService}
   **/
  function getSessionDetailsForApp(args:{ > SteamArgs,

     var sessions(default, null) : Dynamic /* {message} */;
    /**
      The appid for the sessions.
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameNotificationsService}
   **/
  function requestNotifications(args:{ > SteamArgs,

    /**
      The steamid to request notifications for.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid to request notifications for.
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameNotificationsService}
   **/
  function deleteSession(args:{ > SteamArgs,

    /**
      The sessionid to delete.
     **/
     var sessionid(default, null) : Float /* uint64 */;
    /**
      The appid of the session to delete.
     **/
     var appid(default, null) : UInt;
    /**
      (Optional) steamid to make the request on behalf of -- if specified, the user must be in the session.
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IGameNotificationsService}
   **/
  function deleteSessionBatch(args:{ > SteamArgs,

    /**
      The sessionid to delete.
     **/
     var sessionid(default, null) : Float /* uint64 */;
    /**
      The appid of the session to delete.
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IInventoryService}
   **/
  function addItem(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var itemdefid(default, null) : Float /* uint64 */;
     var itempropsjson(default, null) : String;
     var steamid(default, null) : Float /* uint64 */;
    /**
      Should notify the user that the item was added to their Steam Inventory.
     **/
     var notify(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IInventoryService}
   **/
  function addPromoItem(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var itemdefid(default, null) : Float /* uint64 */;
     var itempropsjson(default, null) : String;
     var steamid(default, null) : Float /* uint64 */;
    /**
      Should notify the user that the item was added to their Steam Inventory.
     **/
     var notify(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IInventoryService}
   **/
  function exchangeItem(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var steamid(default, null) : Float /* uint64 */;
     var materialsitemid(default, null) : Float /* uint64 */;
     var materialsquantity(default, null) : UInt;
     var outputitemdefid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IInventoryService}
   **/
  function getInventory(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IInventoryService}
   **/
  function getItemDefs(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var modifiedsince(default, null) : String;
     var itemdefids(default, null) : Float /* uint64 */;
     var workshopids(default, null) : Float /* uint64 */;
    /**
      Allow stale data to be returned for the specified number of seconds.
     **/
    @:optional  var cache_max_age_seconds(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IInventoryService}
   **/
  function getPriceSheet(args:{ > SteamArgs,

     var ecurrency(default, null) : Int;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconMarketService}
   **/
  function getMarketEligibility(args:{ > SteamArgs,

    /**
      The SteamID of the user to check
     **/
     var steamid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconMarketService}
   **/
  function cancelAppListingsForUser(args:{ > SteamArgs,

    /**
      The app making the request
     **/
     var appid(default, null) : UInt;
    /**
      The SteamID of the user whose listings should be canceled
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      Whether or not to wait until all listings have been canceled before returning the response
     **/
     var synchronous(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconMarketService}
   **/
  function getAssetID(args:{ > SteamArgs,

    /**
      The app that's asking. Must match the app of the listing and must belong to the publisher group that owns the API key making the request
     **/
     var appid(default, null) : UInt;
    /**
      The identifier of the listing to get information for
     **/
     var listingid(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IEconMarketService}
   **/
  function getPopular(args:{ > SteamArgs,

    /**
      Number of rows per page
     **/
    @:optional  var rows(default, null) : UInt;
    /**
      The result number to start at
     **/
     var start(default, null) : UInt;
    /**
      If present, the app ID to limit results to
     **/
     var filter_appid(default, null) : UInt;
    /**
      If present, prices returned will be represented in this currency
     **/
     var ecurrency(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ITestExternalPrivilegeService}
   **/
  function callPublisherKey(args:{ > SteamArgs,
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ITestExternalPrivilegeService}
   **/
  function callPublisherKeyOwnsApp(args:{ > SteamArgs,

     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICheatReportingService}
   **/
  function reportPlayerCheating(args:{ > SteamArgs,

    /**
      steamid of the user who is reported as cheating.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid.
     **/
     var appid(default, null) : UInt;
    /**
      (Optional) steamid of the user or game server who is reporting the cheating.
     **/
     var steamidreporter(default, null) : Float /* uint64 */;
    /**
      (Optional) App specific data about the cheating.
     **/
     var appdata(default, null) : Float /* uint64 */;
    /**
      (Optional) extra information about the source of the cheating - was it a heuristic.
     **/
     var heuristic(default, null) : Bool;
    /**
      (Optional) extra information about the source of the cheating - was it a detection.
     **/
     var detection(default, null) : Bool;
    /**
      (Optional) extra information about the source of the cheating - was it a player report.
     **/
     var playerreport(default, null) : Bool;
    /**
      (Optional) dont return report id
     **/
     var noreportid(default, null) : Bool;
    /**
      (Optional) extra information about state of game - was it a specific type of game play (0 = generic)
     **/
     var gamemode(default, null) : UInt;
    /**
      (Optional) extra information indicating how far back the game thinks is interesting for this user
     **/
     var suspicionstarttime(default, null) : UInt;
    /**
      (Optional) level of severity of bad action being reported
     **/
     var severity(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICheatReportingService}
   **/
  function requestPlayerGameBan(args:{ > SteamArgs,

    /**
      steamid of the user who is reported as cheating.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid.
     **/
     var appid(default, null) : UInt;
    /**
      The reportid originally used to report cheating.
     **/
     var reportid(default, null) : Float /* uint64 */;
    /**
      Text describing cheating infraction.
     **/
     var cheatdescription(default, null) : String;
    /**
      Ban duration requested in seconds.
     **/
     var duration(default, null) : UInt;
    /**
      Delay the ban according to default ban delay rules.
     **/
     var delayban(default, null) : Bool;
    /**
      Additional information about the ban request.
     **/
     var flags(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICheatReportingService}
   **/
  function removePlayerGameBan(args:{ > SteamArgs,

    /**
      steamid of the user who is reported as cheating.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid.
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICheatReportingService}
   **/
  function requestVacStatusForUser(args:{ > SteamArgs,

    /**
      steamid of the user.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid the user is playing.
     **/
     var appid(default, null) : UInt;
    /**
      session id
     **/
     var session_id(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICheatReportingService}
   **/
  function startSecureMultiplayerSession(args:{ > SteamArgs,

    /**
      steamid of the user.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid the user is playing.
     **/
     var appid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICheatReportingService}
   **/
  function endSecureMultiplayerSession(args:{ > SteamArgs,

    /**
      steamid of the user.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid the user is playing.
     **/
     var appid(default, null) : UInt;
    /**
      session id
     **/
     var session_id(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {ICheatReportingService}
   **/
  function reportCheatData(args:{ > SteamArgs,

    /**
      steamid of the user running and reporting the cheat.
     **/
     var steamid(default, null) : Float /* uint64 */;
    /**
      The appid.
     **/
     var appid(default, null) : UInt;
    /**
      path and file name of the cheat executable.
     **/
     var pathandfilename(default, null) : String;
    /**
      web url where the cheat was found and downloaded.
     **/
     var webcheaturl(default, null) : String;
    /**
      local system time now.
     **/
     var time_now(default, null) : Float /* uint64 */;
    /**
      local system time when cheat process started. ( 0 if not yet run )
     **/
     var time_started(default, null) : Float /* uint64 */;
    /**
      local system time when cheat process stopped. ( 0 if still running )
     **/
     var time_stopped(default, null) : Float /* uint64 */;
    /**
      descriptive name for the cheat.
     **/
     var cheatname(default, null) : String;
    /**
      process ID of the running game.
     **/
     var game_process_id(default, null) : UInt;
    /**
      process ID of the cheat process that ran
     **/
     var cheat_process_id(default, null) : UInt;
    /**
      cheat param 1
     **/
     var cheat_param_1(default, null) : Float /* uint64 */;
    /**
      cheat param 2
     **/
     var cheat_param_2(default, null) : Float /* uint64 */;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IAccountRecoveryService}
   **/
  function reportAccountRecoveryData(args:{ > SteamArgs,

     var loginuser_list(default, null) : String;
     var install_config(default, null) : String;
     var shasentryfile(default, null) : String;
     var machineid(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IAccountRecoveryService}
   **/
  function retrieveAccountRecoveryData(args:{ > SteamArgs,

     var requesthandle(default, null) : String;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IWorkshopService}
   **/
  function setItemPaymentRules(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var gameitemid(default, null) : UInt;
     var associated_workshop_files(default, null) : Dynamic /* {message} */;
     var partner_accounts(default, null) : Dynamic /* {message} */;
    /**
      Only validates the rules and does not persist them.
     **/
    @:optional  var validate_only(default, null) : Bool;
     var make_workshop_files_subscribable(default, null) : Bool;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IWorkshopService}
   **/
  function getFinalizedContributors(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var gameitemid(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IWorkshopService}
   **/
  function getItemDailyRevenue(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var item_id(default, null) : UInt;
     var date_start(default, null) : UInt;
     var date_end(default, null) : UInt;
  }, callback:Null<Error>->Dynamic->Void):Void;

  /**
    version 1 {IWorkshopService}
   **/
  function populateItemDescriptions(args:{ > SteamArgs,

     var appid(default, null) : UInt;
     var languages(default, null) : Dynamic /* {message} */;
  }, callback:Null<Error>->Dynamic->Void):Void;


}

typedef SteamArgs = {
  ?key:String,
  ?version:String,
  ?language:String
};

typedef SteamSupportedApiList = {
 apilist: {
  interfaces: Array<{
   name: String,
   methods: Array<{
    name: String,
    parameters: Array<{
     name: String,
     type: String,
     description: String,
     optional: Bool
    }>,
    httpmethod: String,
    version: Int
   }>
  }>
 }
}
