package  
{
import net.flashpunk.*;
import Box2D.Dynamics.b2World;
import Box2D.Common.Math.*;

public class GameWorld extends World
{
	public static var physics:b2World = new b2World(new b2Vec2(0, 10),true);
	
	public function GameWorld() 
	{
		add(new Player);
		add(new Platform(3, 7, 10, 40));
	}

	override public function update () : void {
		super.update();
		physics.Step(1/60, 1, 1);
	}

	override public function render () : void {
		super.render();
		physics.DrawDebugData();
	}
}

}
