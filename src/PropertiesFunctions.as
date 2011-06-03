package
{
	import flash.display.Sprite;
	
	public class PropertiesFunctions extends Sprite
	{	//PROPERTIES
		public var output:Number;
		
		
		public function PropertiesFunctions()
		{
			
		}
		
		//METHODES
		
		public function addSlider():void
		{
			var slider:Sprite;
			var button:Sprite;
			var sliding:Boolean;
			
			this.graphics.beginFill(0x000000, 0.5);
			this.graphics.drawRect(0,0,10, 210);
			this.graphics.endFill();
			this.buttonMode = true;
			
			
			slider = new Sprite();
			
			
			slider.graphics.beginFill(0x000000, 1);
			slider.graphics.drawRect(0, 0, 2, 200);
			slider.graphics.endFill();
			
			var xSlider:int = this.width * .5 - slider.width * .5;
			var ySlider:int = this.height * .5 - slider.height * .5;
			slider.x = xSlider;
			slider.y = ySlider;
			addChild(slider);
			
			button = new Sprite();
			button.graphics.beginFill(0xffffff);
			button.graphics.drawRect(0, 0, 5, 5);
			button.graphics.endFill();
			
			
			var xButton:int = this.width * .5 - button.width * .5;
			var yButton:int = this.height * .5 - button.height * .5;
			button.x = xButton;
			button.y = yButton;
			
			
			addChild(button);
			button.buttonMode = true;
			button.mouseChildren = false;
			
			
			
			
		}
	}
}