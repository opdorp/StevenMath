package
{
	import flash.display.Sprite;
	import flash.utils.Timer;
	
	public class Functions extends Sprite
	{
		//PROPERTIES
		private var timer:Timer = new Timer(1000);
		
		public function Functions()
		{
			
		}
		
		
		//METHODES
		
		
		
		public function superFormulle (a:Number, b:Number, m:Number, n1:Number, n2:Number, n3:Number,color:uint, size:Number, detail:Number):Sprite
		{
			//trace(b);
			var graph:Sprite=new Sprite;
			graph.graphics.clear();
			var r:Number;
			var ang:Number=0;
			var coor:Array=[];
			var arg1:Number;
			var arg2:Number;
			
			
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
		
		
		
		public function lussen(a:Number, detail:Number, color:uint, size:Number):Sprite
		{  
			
			var graph:Sprite=new Sprite;
			graph.graphics.clear();
			var ang:Number=0;
			var r:Number;
			var coor:Array=[];
			
			for(ang=0; ang < 360; ang+=detail)
			{
				r = Math.sin((a * ang));
				coor.push(ang, r);
			
				if (ang == 0)
				{
					graph.graphics.lineStyle(1, color);
					graph.graphics.moveTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				}
				graph.graphics.lineTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				
			}
			//r = sin 3t
			
			return graph;
		}
		
		
		public function lemniscaat(a:Number, detail:Number, color:uint, size:Number):Sprite
		{
			
			var graph:Sprite=new Sprite;
			graph.graphics.clear();
			var ang:Number=0;
			var r:Number;
			var coor:Array=[];
			
			for(ang=0; ang < 360; ang+=detail)
			{
				//r = Math.sin((a * ang));
				r =( a * Math.sqrt(Math.cos(2 * ang)));
				coor.push(ang, r);
				
				if (ang == 0)
				{
					graph.graphics.lineStyle(1, color);
					graph.graphics.moveTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				}
				graph.graphics.lineTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				
			}
			// r = a V cos 2 ang
			
			return graph;
		}
		
		public function bisschopsstaf(a:Number, detail:Number, color:uint, size:Number):Sprite
		{
			
			var graph:Sprite=new Sprite;
			graph.graphics.clear();
			var ang:Number=0;
			var r:Number;
			var coor:Array=[];
			
			for(ang=0; ang < 360; ang+=detail)
			{
				//r = a/ V ang
				r = a / Math.sqrt(ang);
				coor.push(ang, r);
				
				if (ang == 0)
				{
					graph.graphics.lineStyle(1, color);
					graph.graphics.moveTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				}
				graph.graphics.lineTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				
			}
			// r = a V cos 2 ang
			
			return graph;
		}
		
		
		public function formulla(a:Number, detail:Number, color:uint, size:Number, b:Number):Sprite
		{
			
			var graph:Sprite=new Sprite;
			graph.graphics.clear();
			var ang:Number=0;
			var r:Number;
			var coor:Array=[];
			
			for(ang=0; ang < 360; ang+=detail)
			{
				//3 + cos(8 t)
				r = 3 + Math.cos(b * ang);
				coor.push(ang, r);
				
				if (ang == 0)
				{
					graph.graphics.lineStyle(1, color);
					graph.graphics.moveTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				}
				graph.graphics.lineTo(size * r * Math.cos(ang), size * r * Math.sin(ang));
				
			}
			// r = a V cos 2 ang
			
			return graph;
		}
		
		
		
	}
}