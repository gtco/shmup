package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.group.FlxGroup;

class Player extends FlxSprite {

    private static inline var PLAYER:String = "assets/images/player.png";
	private static var SPEED:Float = 250;

	private var bulletArray:FlxTypedGroup<Bullet>;

	public function new(X:Float, Y:Float, playerBulletArray:FlxTypedGroup<Bullet>) {
		super(X, Y);
		loadGraphic(PLAYER, true, 32, 32, true, "player");
		bulletArray = playerBulletArray;
	}

	override public function update(elapsed:Float):Void {
		velocity.x = 0;
		velocity.y = 0;

		// Input
		if (FlxG.keys.pressed.LEFT) {
			moveLeft();
		}

		if (FlxG.keys.pressed.RIGHT) {
			moveRight();
		}

		if (FlxG.keys.pressed.UP) {
			moveUp();
		}

		if (FlxG.keys.pressed.DOWN) {
			moveDown();
		}

		if (FlxG.keys.justPressed.A) {
			attack();
		}

		super.update(elapsed);
	}

	override public function destroy():Void {
		super.destroy();
	}

	private function attack():Void {
		var newBullet = new Bullet(x + 32, y + 15, 500, FlxObject.RIGHT, 10);
		bulletArray.add(newBullet);
	}

	private function moveRight():Void {
		velocity.x += SPEED;
	}

	private function moveLeft():Void {
		velocity.x -= SPEED;
	}

	private function moveUp():Void {
		velocity.y -= SPEED;
	}

	private function moveDown():Void {
		velocity.y += SPEED;
	}
}
