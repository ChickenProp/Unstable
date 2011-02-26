package  
{
import net.flashpunk.*;
import Box2D.Dynamics.*;
import Box2D.Common.Math.*;

import flash.display.Sprite;

public class GameWorld extends World
{
	public static var physics:b2World = new b2World(new b2Vec2(0,0), true);
	public var dbgDraw:b2DebugDraw = null;
	
	public function GameWorld() 
	{
		StaticBodies.init();

		add(new Player);
		add(new Platform(3, 7, 10, 40));
	}

	// FP.stage isn't set when we call the constructor, so we have to have
	// this outside it.
	public function setDebugDraw () : void {
		if (dbgDraw)
			return;

		dbgDraw = new b2DebugDraw();

		var sprite:Sprite = new Sprite();
		FP.console.log(FP.stage || "bah");
		FP.stage.addChild(sprite);
		dbgDraw.SetSprite(sprite);
		dbgDraw.SetDrawScale(30.0);
		dbgDraw.SetFillAlpha(0.3);
		dbgDraw.SetLineThickness(1.0);
		dbgDraw.SetFlags(b2DebugDraw.e_shapeBit
		                 | b2DebugDraw.e_jointBit);
		physics.SetDebugDraw(dbgDraw);
	}

	override public function update () : void {
		super.update();
		physics.Step(1/60, 1, 1);
		physics.ClearForces();
	}

	override public function render () : void {
		super.render();

		setDebugDraw();
		physics.DrawDebugData();
	}
}

}
