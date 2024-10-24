package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{
	var player:Player;
	var playerInFight:Bool = false;

	override public function create()
	{
		super.create();
		add(player);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (justPressed(SPACE) && !playerInFight)
		{
			playerInFight = true;
			FlxTween.cancelTweensOf(player);
			FlxTween.tween(player, {x: 20}, 1, {
				ease: FlxEase.sineIn,
				onComplete: function(tween:FlxTween)
				{
					FlxTween.tween(player, {x: 0}, 1, {ease: FlxEase.sineOut});
					playerInFight = false;
				}
			});
		}
	}

	function justPressed(key:FlxKey)
	{
		return FlxG.keys.anyJustPressed([key]);
	}
}
