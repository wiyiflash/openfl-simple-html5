package flash.display;


class DisplayObjectContainer extends InteractiveObject {
	
	
	private var children:Array<DisplayObject>;
	
	
	public function new () {
		
		super ();
		
		children = new Array<DisplayObject> ();
		
	}
	
	
	public function addChild (child:DisplayObject):DisplayObject {
		
		if (child != null) {
			
			children.push (child);
			child.parent = this;
			
			if (child.element != null && element != null) {
				
				element.appendChild (child.element);
				
			}
			
		}
		
		return child;
		
	}
	
	
	public function removeChild (child:DisplayObject):DisplayObject {
		
		if (child != null && child.parent == this) {
			
			children.remove (child);
			
			if (child.element != null && element != null) {
				
				element.removeChild (child.element);
				
			}
			
		}
		
		return child;
		
	}
	
	
}