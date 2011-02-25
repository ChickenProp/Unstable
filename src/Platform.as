package {

import net.flashpunk.*;
import net.flashpunk.graphics.*;

public class Platform extends Obj {
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
	
		image = new Image(PLATFORM);
		image.centerOO();
		type = "platform";
	}
}

}
