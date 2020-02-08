package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxObject;

class Bullet extends FlxSprite
{
    private static inline var BULLET:String = "assets/images/blue_bullet.png";
    private var speed:Float;
    private var direction:Int;
    private var damage:Float;

    public function new(X:Float, Y:Float, Speed:Float, Direction:Int, Damage:Float) {
        super(X,Y);
        speed = Speed;
        direction = Direction;
        damage = Damage;
        loadGraphic(BULLET, true, 6, 6, true, "bullet");        
    }

    override public function update(elapsed:Float):Void {
        super.update(elapsed);
        if (direction == FlxObject.LEFT) {
            velocity.x = -speed;
        }
        if (direction == FlxObject.RIGHT) {
            velocity.x = speed;
        }
        if (direction == FlxObject.FLOOR) {
            velocity.y = speed;
        }
        if (direction == FlxObject.CEILING) {
            velocity.y = -speed;
        }
    }

    override public function destroy():Void {
        super.destroy();
    }
}