package
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class Menu extends Sprite
	{
		//properties
		private var tekst:TextField = new TextField();
		private var format:TextFormat = new TextFormat();
		
		//CONSTRUCTOR
		public function Menu(x:int, y:int, w:uint, h:uint, label:String)
		{
			this.x = x;
			this.y = y;
			
			this.graphics.beginFill(0x000000, 0.9);
			this.graphics.drawRect(0,0,w,h);
			this.graphics.endFill();
			
			this.buttonMode = true;
			this.mouseChildren = false;
			
			this.name = label;
			tekst.selectable = false;
			
			tekst.defaultTextFormat = format;
			tekst.text = label;
			tekst.textColor = 0xffffff;
			
			addChild( tekst );
			
		}
		
		//METHODES
	}
}