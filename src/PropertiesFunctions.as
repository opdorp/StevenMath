package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class PropertiesFunctions extends Sprite
	{	//PROPERTIES
		public var output:Number;
		private var slider:Sprite;
		private var button:Sprite;
		private var sliding:Boolean;
		
		public var procent:Number = 0.5;
		
		public function PropertiesFunctions()
		{
			
		}
		
		//METHODES
		
		public function addSlider(x:Number):void
		{
			
			this.x = x;
			this.graphics.beginFill(0x000000, 0.5);
			this.graphics.drawRect(0,0,10, 110);
			this.graphics.endFill();
			this.buttonMode = true;
			
			
			slider = new Sprite();
			
			
			slider.graphics.beginFill(0x000000, 1);
			slider.graphics.drawRect(0, 0, 2, 100);
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
			
			this.addEventListener(Event.ADDED_TO_STAGE, stageHandler);
			
			
		}
		
		private function stageHandler(e:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, stageHandler);
			this.addEventListener(Event.ENTER_FRAME, frameHandler);
			this.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			this.addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
		}
		
		private function frameHandler(e:Event):void
		{
			sliding = true;
		}
		
		private function mouseDownHandler(e:MouseEvent):void
		{
			sliding = false;
		}
		
		private function mouseUpHandler(e:MouseEvent):void
		{
			if(sliding)
			{
				button.y = mouseY;
				
				if (button.y < slider.y)
				{
					button.y = slider.y;
				}
				
				if (button.y > slider.y + slider.height - button.height)
				{
					button.y=slider.y + slider.height - button.height;
				}
				
				procent = button.y / (slider.y + slider.height - button.height);
			}
		}
		
		
		
	}
}