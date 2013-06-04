package flash.display;


import js.html.Element;


class DisplayObject {
	
	
	public var parent (default, null):DisplayObject;
	public var stage (get, null):Stage;
	public var x (get, set):Float;
	public var y (get, set):Float;
	
	private var element:Element;
	private var __x:Float;
	private var __y:Float;
	
	
	public function new () {
		
		__x = 0;
		__y = 0;
		
	}
	
	
	private function get_stage ():Stage {
		
		if (parent != null) {
			
			return parent.stage;
			
		}
		
		return null;
		
	}
	
	
	private function get_x ():Float {
		
		return __x;
		
	}
	
	
	private function set_x (value:Float):Float {
		
		__x = value;
		
		if (element != null) {
			
			element.style.left = __x + "px";
			
		}
		
		return __x;
		
	}
	
	
	private function get_y ():Float {
		
		return __y;
		
	}
	
	
	private function set_y (value:Float):Float {
		
		__y = value;
		
		if (element != null) {
			
			element.style.top = __y + "px";
			
		}
		
		return __y;
		
	}
	
	
}