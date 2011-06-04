package 
{
	import com.greensock.TweenLite;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageDisplayState;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.utils.ByteArray;
	
	[SWF(framerate="30")]
	
	public class Main extends Sprite
	{
		//properties
		private var soundSet:SetSound = new SetSound();
		private var setDraw:SetDraw = new SetDraw();
		private var formulleA:int = 1;
		
		
		//constructor
		public function Main()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.EXACT_FIT;
			
			addChild(soundSet);
			addChild(setDraw);
			
			
			
			addEventListener(Event.ENTER_FRAME, frameHandler);
			
			addbuttons();
		}
		
		//methodes
		private function frameHandler(e:Event):void
		{
			
			var soundBytes:ByteArray = soundSet.soundBytes;
			
			if(soundBytes.bytesAvailable)
			{
				
				if(soundBytes != null)
				{
					var scaleAm:Number;
					var rotAm:Number
					
					if(soundBytes.readFloat() == 0)
					{
						scaleAm = rotAm = 1;
					}
					else
					{
						scaleAm = soundBytes.readFloat()*10;	
						rotAm = soundBytes.readFloat()*40;	
						
					}
				}
				
			}
			TweenLite.to(setDraw.holder, 0.2, {scaleY:scaleAm, scaleX:scaleAm, rotation:rotAm});
		}
		
		private function clickHandler(e:MouseEvent):void
		{
			if(stage.displayState == 'normal')
			{
				stage.displayState = StageDisplayState.FULL_SCREEN;	
			}
			else
			{
				stage.displayState = StageDisplayState.NORMAL;	
			}
			
		}
		
		
		private function addbuttons():void
		{
			var menu:Menu = new Menu(50, 10, 90, 15, 'click voor een andere formulle');
			addChild(menu);
			menu.addEventListener(MouseEvent.CLICK, formulleHanler);
			
			var full:Menu = new Menu(50, 30, 120, 15, 'volledig scherm / normaal');
			addChild(full);
			
			full.addEventListener(MouseEvent.CLICK, clickHandler);
			full.doubleClickEnabled = true;
		}
		
		
		private function formulleHanler(e:MouseEvent):void
		{
					if(formulleA == 5)
					{
						formulleA = 1;
						setDraw.formullA = formulleA;
					}
					else
					{
						formulleA += 1;
						trace('formulleA = ' + formulleA);
						setDraw.formullA = formulleA;
					}
		}
		
		
		
	}
}
