package;

import flixel.FlxG;
import flixel.FlxSubState;
import flixel.input.keyboard.FlxKey;

class OptionsSubState extends FlxSubState
{
	override function create()
	{
		super.create();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
	}
	function changeSelection(change:Int = 0) {}

	function justPressed(key:FlxKey)
	{
		return FlxG.keys.anyJustPressed([key]);
	}
}