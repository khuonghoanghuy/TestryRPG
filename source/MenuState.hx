package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;

class MenuState extends FlxState
{
	override function create()
	{
		super.create();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
	}
	function justPressed(key:FlxKey)
	{
		return FlxG.keys.anyJustPressed([key]);
	}
}