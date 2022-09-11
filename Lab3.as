package {
	import flash.display.*;
	import flash.events.*;

	public class Lab3 extends MovieClip {
		// GAME ELEMENTS
		private var myArrow: Arrow;
		private var target: Target;


		public function Lab3() {
			trace ("hello");
			
			// TASK 1: CREATE AND ADD THE TARGET AND ARROW TO THE STAGE
			myArrow = new Arrow();
			addChild(myArrow);
			target = new Target();
			addChild(target);

			addEventListener(Event.ENTER_FRAME, activateMotive);
		}

		function activateMotive(event: Event) {
			// TASK 1: POSITION THE TARGET AT THE MOUSE LOCATION
			target.x = mouseX;
			target.y = mouseY;
			
			// TASK 2: GET THE ARROW TO TURN TOWARDS THE TARGET
			myArrow.turn(target.x, target.y);
			
		}

	}

}