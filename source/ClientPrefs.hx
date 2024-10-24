package;

class ClientPrefs
{
	public static var checkUpdated:Bool = true;
	public static var uiGameplay:String = "Complex";
	public static var moneyboy:Int = 0;
	public static var playerLv:Int = 1;
	public static var playerHP:Int = 20;
	public static var playerMP:Int = 20;
	public static var playerItemHave:Array<String> = ["Nothing"];
	public static var playerName:String = "...";
	public static function init() {}

	public static function load() {}
}