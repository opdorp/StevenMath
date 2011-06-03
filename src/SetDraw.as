package
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Back;
	import com.greensock.easing.Cubic;
	
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.geom.ColorTransform;
	import flash.geom.Point;
	import flash.media.SoundMixer;
	import flash.sampler.NewObjectSample;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	
	import org.osmf.events.TimeEvent;
	
	
	public class SetDraw extends Sprite
	{
		public var holder:Sprite = new Sprite();
		public var soundBytes:ByteArray;
		
		private var timer:Timer = new Timer(2000);
		private var f:Functions = new Functions();
		//private var pow:int = 0;
		
		public function SetDraw()
		
		{
			addChild(f);
			
			/*holder.graphics.beginFill(Math.random() * 0xFFFFFF);
			
			
			holder.graphics.drawRect(0, 0, 20000,10);
			holder.graphics.endFill();
			
			addChild(holder);
			holder.x = 0;
			holder.y = 0;*/
			//addChild(holder);
			
			
			timer.start();
			timer.addEventListener(TimerEvent.TIMER, timerHandler);
			addEventListener(Event.ENTER_FRAME, frameHandler);
			
			
			
		}
		
		private function timerHandler(e:TimerEvent):void
		{	holder.graphics.clear();
			var color:uint = Math.random() * 0xffffff;
			holder = f.superFormulle(3, 5, 2, 5, 6,1, color, 10, 6);
			holder = f.lussen(6,0.01,color, 20);
			holder = f.lemniscaat(4, 0.4, color,200);
			holder = f.bisschopsstaf(4, 0.4, color,200);
			holder = f.formulla(4,0.3, color,100, 3);
			var xPos:int = stage.stageWidth/2; //mouseX + holder.width/2;
			var yPos:int = stage.stageHeight/2; //mouseY + holder.height/2;
			addChild(holder);
			
			holder.x = xPos;
			holder.y = yPos;
			
		}
		
		
		private function frameHandler(e:Event):void
		{
			
			//trace(soundBytes);	
			
			//removeChild(holder);
			
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
			
			
			
			//trace('jaaa');
			//trace(holder);
			TweenLite.to(holder, 0.1, {scaleY:scaleAm, scaleX:scaleAm, rotation:rotAm});
			
		}
		
		
	}
}