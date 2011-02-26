package {
import Box2D.Dynamics.*;
import Box2D.Common.Math.*;

public class StaticBodies {
	public static var platformHost:b2Body;

	public static function init () : void {
		var bodyDef:b2BodyDef = new b2BodyDef;
		bodyDef.position = new b2Vec2(0,0);
		platformHost = GameWorld.physics.CreateBody(bodyDef);
	}
}

}
