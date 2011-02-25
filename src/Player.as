package  
{
	import flash.geom.Point;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * ...
	 * @author Brumby
	 */
	public class Player extends Entity
	{
		
		public var vel:Point = new Point(0, 0);
		public var image:Image;
		
		public function Player() 
		{
			image = Image.createRect(32, 32, 0xFF0000);
			x = 50;
			y = 50;
			graphic = image;
		}
		
		override public function update():void 
		{
			trace(vel.x);
			if (Input.pressed(Key.LEFT)) {
				vel.x -= 5;
			}
			if (Input.pressed(Key.RIGHT)) {
				vel.x += 5;
			}
			
			FP.clamp(vel.x, -30, +30);
			
			x += vel.x * FP.elapsed;
				
			super.update();
		}
		
	}

}