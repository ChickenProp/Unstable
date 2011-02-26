package {

import net.flashpunk.*;
import net.flashpunk.graphics.*;
import Box2D.Collision.Shapes.*;
import Box2D.Dynamics.*;
import Box2D.Common.Math.*;

public class Platform extends Obj {
	[Embed(source = '../media/platform.png')]
	private const PLATFORM:Class;

	public var length:Number = 20;

	public function Platform(_x:Number, _y:Number,
	                         _length:Number, _angle:Number)
	{
		length = _length;

		var bodyDef:b2BodyDef = new b2BodyDef;
		bodyDef.position = new b2Vec2(x, y);
		bodyDef.type = b2Body.b2_dynamicBody;
		bodyDef.linearDamping = 0;
		body = GameWorld.physics.CreateBody(bodyDef);
		body.CreateFixture2(new b2CircleShape(1), 1);

		body.ApplyImpulse(new b2Vec2(2, 2), new b2Vec2(10, 0));

		image = new Image(PLATFORM);
		image.centerOO();
		type = "platform";
	}
}

}
