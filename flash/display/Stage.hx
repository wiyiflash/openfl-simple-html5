package flash.display;


import js.Browser;


class Stage extends Sprite {
	
	
	public var stageHeight (default, null):Int;
	public var stageWidth (default, null):Int;
	
	
	public function new (width:Int, height:Int) {
		
		super ();
		
		Browser.document.body.appendChild (element);
		
		stageWidth = width;
		stageHeight = height;
		
		element.style.width = width + "px";
		element.style.height = height + "px";
		element.style.overflow = "hidden";
		
	}
	
	
	private override function get_stage ():Stage {
		
		return this;
		
	}
	
	
}