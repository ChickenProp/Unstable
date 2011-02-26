package {

import net.flashpunk.*;
import net.flashpunk.graphics.*;
import Box2D.Dynamics.*;
import Box2D.Common.Math.*;

public class Platform extends Obj {
	[Embed(source = '../media/platform.png')]
	private const PLATFORM:Class;

	public var length:Number = 20;

	public function Platform(_x:Number, _y:Number,
	                         _length:Number, _angle:Number)
	{
		x = _x;
		y = _y;
		length = _length;

		image = new Image(PLATFORM);
		image.centerOO();
		type = "platform";
	}

	override public function added () : void {
		var bodyDef:b2BodyDef = new b2BodyDef;
		bodyDef.position = new b2Vec2(x, y);
		bodyDef.type = b2Body.b2_dynamicBody;
		bodyDef.linearVelocity = new b2Vec2(12, 100);
		var w:GameWorld = world as GameWorld;
		body = w.physics.CreateBody(bodyDef);
	}
}

}
