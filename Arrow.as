package {
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class Arrow extends MovieClip {

		public function Arrow() {
			this.x = 200;
			this.y = 200;
		}

		function turn(tx, ty: Number) {
			var dx: Number = this.x - tx;
			var dy: Number = this.y - ty;
			var dist: Number = Math.sqrt(Math.pow(dx, 2) + Math.pow(dy, 2));

			// COMPUTE THE ANGLE BETWEEN THE TWO POINTS
			var angleRadians: Number = Math.atan2(dy, dx);

			// CONVERT RADIANS TO DEGREES
			var rotationDegrees: Number = angleRadians * 180 / Math.PI;
			this.rotation = rotationDegrees;
		}
	}
}