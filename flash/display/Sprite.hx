package flash.display;


import js.Browser;


class Sprite extends DisplayObjectContainer {
	
	
	public var graphics (get, null):Graphics;
	
	private var __graphics:Graphics;
	
	
	public function new () {
		
		super ();
		
		if (element == null) {
			
			element = Browser.document.createElement ("div");
			element.style.position = "absolute";
			
		}
		
	}
	
	
	private function get_graphics ():Graphics {
		
		if (__graphics == null) {
			
			__graphics = new Graphics ();
			
			if (element.children.length == 0) {
				
				element.appendChild (__graphics.element);
				
			} else {
				
				element.insertBefore (__graphics.element, element.firstElementChild);
				
			}
			
		}
		
		return __graphics;
		
	}
	
	
}