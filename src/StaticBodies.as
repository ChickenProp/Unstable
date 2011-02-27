package {
import Box2D.Dynamics.*;
import Box2D.Common.Math.*;
import Box2D.Collision.Shapes.*;

public class StaticBodies {
	public static var platformHost:b2Body;

	public static function init () : void {
		var phBd:b2BodyDef = new b2BodyDef;
		phBd.position = new b2Vec2(0,0);
		platformHost = GameWorld.physics.CreateBody(phBd);

		var floorBd:b2BodyDef = new b2BodyDef;
		floorBd.position = new b2Vec2(0, 375/30);
		var floor:b2Body = GameWorld.physics.CreateBody(floorBd);
		floor.CreateFixture2(b2PolygonShape.AsEdge(new b2Vec2(0,0), new b2Vec2(500/30, 0)), 0);
	}
}

}
