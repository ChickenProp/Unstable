package {
import net.flashpunk.*;
import net.flashpunk.graphics.*;
import Box2D.Dynamics.*;
import Box2D.Common.Math.*;

public class Obj extends Entity {
	public var body:b2Body;

	override public function update () : void {
		super.update();

		if (body) {
			// Box2D doesn't like to work in units of pixels.
			var pos:b2Vec2 = body.GetPosition();
			x = pos.x*30;
			y = pos.y*30;

			image.angle = -body.GetAngle() * 180 / Math.PI;
		}
	}

        public function get image() : Image {
                return _image;
        }
        public function set image(i:Image) : void {
                _image = i;
                graphic = i;
        }

        internal var _image:Image;
}

}
