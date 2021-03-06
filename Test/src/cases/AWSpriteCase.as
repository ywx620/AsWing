package cases
{
	import org.aswing.AWSprite;
	import flash.display.Sprite;
	import org.aswing.event.*;

	public class AWSpriteCase extends Sprite
	{
		public function AWSpriteCase()
		{
			super();
			
			var container:AWSprite = new AWSprite();
			container.name = "container";
			container.graphics.beginFill(0xff0000);
			container.graphics.drawCircle(200, 200, 40);
			container.graphics.endFill();
			
			
			var concon:AWSprite = new AWSprite();
			concon.name = "concon";
			concon.graphics.beginFill(0x00ff00);
			concon.graphics.drawCircle(200, 200, 100);
			concon.graphics.endFill();
			
			concon.addChild(container);
			addChild(concon);
			
			addEventListener(ReleaseEvent.RELEASE_OUT_SIDE, __outSide, false);
			container.addEventListener(ReleaseEvent.RELEASE_OUT_SIDE, __outSideContainer, false);
			concon.addEventListener(ReleaseEvent.RELEASE_OUT_SIDE, __outSideConcon, false);
		}
		
		private function __outSide(e:AWEvent):void{
			trace("__outSide " + e.target);
		}
		
		private function __outSideContainer(e:AWEvent):void{
			trace("__outSideContainer " + e.target);
		}
		
		private function __outSideConcon(e:AWEvent):void{
			trace("__outSideConcon " + e.target);
		}
	}
}