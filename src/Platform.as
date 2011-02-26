package {

import net.flashpunk.*;
import net.flashpunk.graphics.*;
import Box2D.Collision.Shapes.*;
import Box2D.Dynamics.*;
import Box2D.Dynamics.Joints.*;
import Box2D.Common.Math.*;

public class Platform extends Obj {
	[Embed(source = '../media/platform.png')]
	private const PLATFORM:Class;

	public var length:Number = 20;

	public function Platform(_x:Number, _y:Number,
	                         _length:Number, _angle:Number)
	{
		length = _length;

		image = new Image(PLATFORM);
		image.centerOO();
		type = "platform";

		var bodyDef:b2BodyDef = new b2BodyDef;
		bodyDef.position = new b2Vec2(_x, _y);
		bodyDef.type = b2Body.b2_dynamicBody;
		bodyDef.angularDamping = 1;
		body = GameWorld.physics.CreateBody(bodyDef);
		body.CreateFixture2(b2PolygonShape.AsBox(1, 0.1), 4);
		FP.console.log(body.GetLinearDamping());

		

		var jointDef:b2RevoluteJointDef = new b2RevoluteJointDef();
		jointDef.Initialize(StaticBodies.platformHost, body,
		                    body.GetWorldCenter());
		GameWorld.physics.CreateJoint(jointDef);
	}
}

}
