package  
{
import net.flashpunk.World;
import Box2D.Dynamics.b2World;
import Box2D.Common.Math.*;

public class GameWorld extends World
{
	public var gravity:b2Vec2 = new b2Vec2(0, 10);
	public var physics:b2World;
	
	public function GameWorld() 
	{
		physics = new b2World(gravity, true)

		add(new Player);
		add(new Platform(90, 70, 10, 40));
	}
		
}

}
