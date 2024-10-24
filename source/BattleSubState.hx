package;

import flixel.FlxG;
import flixel.FlxSubState;
import flixel.input.keyboard.FlxKey;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxBar;

class BattleSubState extends FlxSubState
{
	var player:Player;
	var playerInFight:Bool = false;
	var mpBar:FlxBar;
	var hpBar:FlxBar;

	override function create()
	{
		super.create();
		player = new Player();
		player.setPosition(50, 100);
		player.scale.set(2, 2);
		player.updateHitbox();
		add(player);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (justPressed(SPACE) /* && !playerInFight*/)
		{
			// playerInFight = true;
			// FlxTween.cancelTweensOf(player);
			// FlxTween.tween(player, {x: }, 1, {
			// 	ease: FlxEase.sineIn,
			// 	onComplete: function(tween:FlxTween)
			// 	{
			// 		FlxTween.tween(player, {x: 0}, 1, {ease: FlxEase.sineOut});
			// 		playerInFight = false;
			// 	}
			// });
			trace("using animate instead");
		}
	}

	function justPressed(key:FlxKey)
	{
		return FlxG.keys.anyJustPressed([key]);
	}
}