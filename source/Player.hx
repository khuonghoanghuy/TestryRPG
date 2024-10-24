package;

import flixel.FlxSprite;

class Player extends FlxSprite
{
	public function new()
	{
		super(0, 0);
		loadGraphic("assets/images/character/player-tesgt.png");
	}
}