package {

import net.flashpunk.*;
import net.flashpunk.graphics.*;

public class Platform extends Entity {
	[Embed(source = '../media/platform.png')]
	private const PLATFORM:Class;

	public var angle:Number = 0; // angle from horizontal
	public var length:Number = 20;

	public function Platform(_x:Number, _y:Number,
	                         _length:Number, _angle:Number)
	{
		x = _x;
		y = _y;
		length = _length;
		angle = _angle;
	
		var img:Image = new Image(PLATFORM);
		img.centerOO();
		graphic = img;
		type = "platform";
	}
}

}
