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
			var pos:b2Vec2 = body.GetPosition();
			x = pos.x;
			y = pos.y;

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
