package {
import flash.geom.Point;
import net.flashpunk.Entity;
import net.flashpunk.FP;
import net.flashpunk.graphics.Image;
import net.flashpunk.utils.Input;
import net.flashpunk.utils.Key;
import Box2D.Dynamics.*;
import Box2D.Common.Math.*;
import Box2D.Collision.Shapes.*;

public class Player extends Obj {
		
	public function Player() 
	{
		image = Image.createRect(12, 30, 0xFF0000);
		image.centerOO();

		var bodyDef:b2BodyDef = new b2BodyDef;
		bodyDef.position = new b2Vec2(4, 12);
		bodyDef.type = b2Body.b2_dynamicBody;
		//bodyDef.linearDamping = 1;
		bodyDef.angularDamping = 1;
		//bodyDef.friction = 0.5;
		body = GameWorld.physics.CreateBody(bodyDef);
		body.CreateFixture2(b2PolygonShape.AsBox(.2, .5), 1);
		body.GetFixtureList().SetFriction(300);
		body.SetFixedRotation(true);
	}
		
	override public function update():void {
		var force:b2Vec2 = new b2Vec2(0,0);
		
		if (Input.check(Key.LEFT)) {
			force.Add(new b2Vec2(-1, 0));
		}
		if (Input.check(Key.RIGHT)) {
			force.Add(new b2Vec2(1, 0));
		}
		if (Input.check(Key.UP)) {
			force.Add(new b2Vec2(0, -1));
		}
		if (Input.check(Key.DOWN)) {
			force.Add(new b2Vec2(0, 1));
		}

		force.Multiply(60);

		body.ApplyForce(force, body.GetWorldCenter());
			
		super.update();
	}
		
}

}
