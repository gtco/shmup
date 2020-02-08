package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.group.FlxGroup;


class PlayState extends FlxState
{
	public var playerBullets:FlxTypedGroup<Bullet>;
	public var player:Player;

	override public function create():Void
	{
		super.create();
		playerBullets = new FlxTypedGroup<Bullet>();
		add(playerBullets);

		player = new Player(100,100, playerBullets);
		add(player);

	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
