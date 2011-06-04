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
		public var formullA:Number = 1;
		
		public var soundBytes:ByteArray;
		
		private var timer:Timer = new Timer(200);
		private var f:Functions = new Functions();
		private var s:PropertiesFunctions = new PropertiesFunctions();
		private var s1:PropertiesFunctions = new PropertiesFunctions();
		private var s2:PropertiesFunctions = new PropertiesFunctions();
		private var s3:PropertiesFunctions = new PropertiesFunctions();
		
		
		public function SetDraw()
		
		{
			s.addSlider(10);
			addChild(s);
			
			s1.addSlider(30);
			addChild(s1);
			
			addEventListener(Event.ADDED, addedHandler);
			
		}
		
		private function addedHandler(e:Event):void
		{
			addChildAt(holder,0);
			timer.start();
			timer.addEventListener(TimerEvent.TIMER, timerHandler);	
		}
		
		private function timerHandler(e:TimerEvent):void
		{	
			
			var num:Number = s.procent * 10;
			var num1:Number = s1.procent * 5;
			for(var i:int; i < holder.numChildren; i++)
			{
				holder.removeChildAt(i);
				
			}
			//trace(formullA);
			switch (formullA)
			{
				case 1:
					var color:uint = Math.random() * 0xffffff;
					var vis:Sprite = f.superFormulle(num1/10, 20, 60, 500, 30,10, color, 90, num);
					holder.addChild(vis);
					break;
				case 2:
					color = Math.random() * 0xffffff;
					var vis2:Sprite = f.lussen(num1,num,color, 80);
					holder.addChild(vis2);
					//trace(formullA + ' jaa');
					break;
				case 3:
					color = Math.random() * 0xffffff;
					var vis3:Sprite = f.lemniscaat(num1, num, color,130);
					holder.addChild(vis3);
					break;
				case 4:
					color = Math.random() * 0xffffff;
					var vis4:Sprite = f.bisschopsstaf(num1, num/2, color,170);
					holder.addChild(vis4);
					break;
				case 5:
					color = Math.random() * 0xffffff;
					var vis5:Sprite = f.formulla(20,num, color,60, num1);
					holder.addChild(vis5);
					break;
				
			}
			
			
			
		
			
			
			
			
			
			
			holder.x = stage.stageWidth / 2;
			holder.y = stage.stageHeight / 2;
			
			
		}
		
	}
}