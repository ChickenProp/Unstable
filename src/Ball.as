package {
import Box2D.Dynamics.*;
import Box2D.Collision.Shapes.*;
import Box2D.Common.Math.*;
import net.flashpunk.graphics.*;

public class Ball extends Obj {
	public function Ball () {
		image = Image.createCircle(15, 0x00FF00);
		image.centerOO();

		var bodyDef:b2BodyDef = new b2BodyDef;
		bodyDef.position = new b2Vec2(4, 5);
		bodyDef.type = b2Body.b2_dynamicBody;
		//bodyDef.linearDamping = 1;
		bodyDef.angularDamping = 1;
		//bodyDef.friction = 0.5;
		body = GameWorld.physics.CreateBody(bodyDef);
		body.CreateFixture2(new b2CircleShape(.5), 1);
		//body.GetFixtureList().SetFriction(300);
		//body.SetFixedRotation(true);
	}
}

}
