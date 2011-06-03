package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageDisplayState;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	
	[SWF(framerate="30")]
	
	public class Main extends Sprite
	{
		//properties
		private var soundSet:SetSound = new SetSound();
		private var setDraw:SetDraw = new SetDraw();
		
		//constructor
		public function Main()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.EXACT_FIT;
			
			addChild(soundSet);
			addChild(setDraw);
			
			stage.addEventListener(MouseEvent.DOUBLE_CLICK, clickHandler);
			stage.doubleClickEnabled = true;
			
			
		}
		
		//methodes
			//MIC
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
		
		
		
	}
}
