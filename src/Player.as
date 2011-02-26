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
		image = Image.createRect(32, 32, 0xFF0000);

		var bodyDef:b2BodyDef = new b2BodyDef;
		bodyDef.position = new b2Vec2(4, 5);
		bodyDef.type = b2Body.b2_dynamicBody;
		bodyDef.linearDamping = 0;
		body = GameWorld.physics.CreateBody(bodyDef);
		body.CreateFixture2(new b2CircleShape(1), 1);
	}
		
	override public function update():void 
	{
/*		trace(vel.x);
		if (Input.pressed(Key.LEFT)) {
			vel.x -= 5;
		}
		if (Input.pressed(Key.RIGHT)) {
			vel.x += 5;
		}
			
		FP.clamp(vel.x, -30, +30);
		
		x += vel.x * FP.elapsed;*/
		
		super.update();
	}
		
}

}
