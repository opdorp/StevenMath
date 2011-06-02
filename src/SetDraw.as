package
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Back;
	
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	import flash.media.SoundMixer;
	import flash.utils.ByteArray;
	
	
	public class SetDraw extends Sprite
	{
		public var holder:Sprite = new Sprite();
		public var soundBytes:ByteArray;
		//private var pow:int = 0;
		
		public function SetDraw()
		
		{
			holder.graphics.beginFill(Math.random() * 0xFFFFFF);
			
			
			holder.graphics.drawRect(0, 0, 20000,10);
			holder.graphics.endFill();
			
			addChild(holder);
			holder.x = 0;
			holder.y = 0;
			
			addEventListener(Event.ENTER_FRAME, frameHandler);
			
			
			
		}
		
		private function frameHandler(e:Event):void
		{
			
			//trace(soundBytes);	
			if(soundBytes != null)
			{
				var scaleAm:Number = soundBytes.readFloat()*100;	
					
			}
			
			
			//trace('jaaa');
			
			TweenLite.to(holder, 0.1, {scaleY:scaleAm, ease:Back.easeInOut});
			
		}
		
		
		/*public function drawLines (Yscale:Number):void
		{
			SoundMixer.computeSpectrum(soundBytes, true);
			holder.graphics.clear();
			holder.graphics.lineStyle(2,0xabc241);
			
			for(var i:uint; i<300; i++)
			{
				pow = soundBytes.readFloat()*200;
				pow=Math.abs(pow);
				holder.graphics.drawRect(i*2, 0, 2,pow);
				addChild(holder);
				
				trace(pow);
				
				TweenLite.to( holder, 1, {scaleY:Yscale});	
			}
			
			
			
		}*/
		
	}
}