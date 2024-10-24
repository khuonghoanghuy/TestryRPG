package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (justPressed(Z))
			openSubState(new BattleSubState());
	}

	function justPressed(key:FlxKey)
	{
		return FlxG.keys.anyJustPressed([key]);
	}
}
