package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	
	
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
			
			
			
		}
		
		//methodes
			//MIC
		
		
		
		
	}
}
