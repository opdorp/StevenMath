package
{
	import flash.display.Sprite;
	
	public class Functions extends Sprite
	{
		public function Functions()
		{
			
		}
		
		
		//METHODES
		
		public function superFormulle (a:Number, b:Number, m:Number, n1:Number, n2:Number, n3:Number,color:uint, size:Number, detail:Number):Sprite
		{
			var r:Number;
			var ang:Number=0;
			var coor:Array=[];
			var arg1:Number;
			var arg2:Number;
			var graph:Sprite=new Sprite;
			for (ang=0; ang < 360; ang+=detail)
			{
				arg1=(Math.cos((m * ang) / 4)) / a;
				arg2=(Math.sin((m * ang) / 4)) / b;
				r=Math.pow(Math.pow(Math.abs(arg1), n2) + Math.pow(Math.abs(arg2), n3), -1 / n1)
				coor.push(ang, r);
				if (ang == 0)
				{
					graph.graphics.lineStyle(1, color);
					graph.graphics.moveTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				}
				graph.graphics.lineTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				
			}
			return graph;
		}
		
		
		
		public function lussen(a:Number, detail:Number):Sprite
		{
			var graph:Sprite=new Sprite;
			var ang:Number=0;
			var r:Number;
			
			for(ang=0; ang < 360; ang+=detail)
			{
				r = Math.sin((a * ang)); 
			}
			//r = sin 3t
			
			return graph;
		}
		
		
		
	}
}