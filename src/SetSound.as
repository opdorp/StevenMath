package
{
	import com.greensock.TweenLite;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.SampleDataEvent;
	import flash.media.Microphone;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.media.SoundTransform;
	import flash.system.Security;
	import flash.system.SecurityPanel;
	import flash.utils.ByteArray;
	
	public class SetSound extends Sprite
	{
		//properties
		private var micSound:Sound;
		private var micBytes:ByteArray;
		public var soundBytes:ByteArray = new ByteArray();
		
		private var setDraw:SetDraw = new SetDraw();
		private var mic:Microphone = Microphone.getMicrophone();
		
		public function SetSound()
		{
			
			setMic();
			setSound();

			addEventListener(Event.ENTER_FRAME, drawLines);
			
		}
		
		//methodes
		//MIC
		private function setMic():void
		{	
			
			
			
			if(mic)
			{
				
				//Security.showSettings(SecurityPanel.MICROPHONE);
				mic.setLoopBack(false);	
				mic.gain = 100;
				mic.rate = 84;
				mic.addEventListener(SampleDataEvent.SAMPLE_DATA, micSampleDataHandler);
			}
			else
			{
				trace('no mic');
			}
			
		}
		
		private function micSampleDataHandler(e:SampleDataEvent):void
		{
			
			micBytes = e.data;
			micSound.play();
		}
		
		
		//SOUND
		
		private function setSound():void
		{
			micSound = new Sound();
			
			micSound.addEventListener(SampleDataEvent.SAMPLE_DATA, soundDataHandler);
		}
		
		
		private function soundDataHandler(e:SampleDataEvent):void
		{
			for (var i:int = 0; i < 8192 && micBytes.bytesAvailable > 0; i++) {
				var sample:Number = micBytes.readFloat();
				e.data.writeFloat(sample);
				e.data.writeFloat(sample);
			}
		}
		
		private function drawLines(e:Event):void
		{
			
			SoundMixer.computeSpectrum(soundBytes, true);
			
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
			
			
			TweenLite.to(setDraw.holder, 0.1, {scaleY:scaleAm, scaleX:scaleAm, rotation:rotAm});
				
				
				
			}
			
			
		}
	}
}