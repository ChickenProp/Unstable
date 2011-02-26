package  
{
import net.flashpunk.*;
import Box2D.Dynamics.b2World;
import Box2D.Common.Math.*;

public class GameWorld extends World
{
	public var gravity:b2Vec2 = new b2Vec2(0, 10);
	public var physics:b2World;
	
	public function GameWorld() 
	{
		physics = new b2World(gravity, true);
		physics;

		add(new Player);
		add(new Platform(3, 7, 10, 40));
	}

	override public function update () : void {
		super.update();
		physics.Step(20, 1, 1);
	}

	override public function render () : void {
		super.render();
		physics.DrawDebugData();
	}
}

}
