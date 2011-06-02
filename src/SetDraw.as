package
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Back;
	
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	import flash.media.SoundMixer;
	import flash.sampler.NewObjectSample;
	import flash.utils.ByteArray;
	
	
	public class SetDraw extends Sprite
	{
		public var holder:Sprite = new Sprite();
		public var soundBytes:ByteArray;
		
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
			addEventListener(Event.ENTER_FRAME, frameHandler);
			
			
			
		}
		
		private function frameHandler(e:Event):void
		{
			
			//trace(soundBytes);	
			holder.graphics.clear();
			//removeChild(holder);
			
			if(soundBytes != null)
			{   
				holder = f.superFormulle(3, 5, 2, 5, 6,1, 0x000000, 10, 6);
				f.lussen(3);
				var scaleAm:Number = soundBytes.readFloat()*10;	
				var rotAm:Number = soundBytes.readFloat()*10;	
				addChild(holder);
				 	
			}
			holder.x = mouseX - holder.width * .5;
			holder.y = mouseY - holder.height * .5;
			
			//trace('jaaa');
			
			TweenLite.to(holder, 0.01, {scaleY:scaleAm, rotation:rotAm, ease:Back.easeInOut });
			
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