package
{
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.Timer;
   
   public class KCS___Main extends Sprite
   {
       
      
      private var §_el_-___---§:§_el_-_-____§;
      
      private var §_el_-_----§:ByteArray;
      
      private var §_el_----__§:Array;
      
      private var §_el_----_§:Boolean = true;
      
      private var §_el_-_-_-§:Boolean = true;
      
      private var §_el_-____§:§_el_-----_§;
      
      public function KCS___Main(param1:§_el_-_-____§, param2:§_el_-----_§)
      {
         this.§_el_----__§ = [];
         super();
         trace(§_el_-----_§.VERSION + "m00");
         this.§_el_-___---§ = param1;
         param1.§_el_---_-§ = this.§_el_-_--_§;
         this.§_el_-____§ = param2;
         this.§_el_--__§();
      }
      
      private function §_el_--_-§(param1:TimerEvent) : void
      {
         Timer(param1.target).stop();
         var _loc2_:§_el_-____-§ = new §_el_-____-§();
         this.§_el_-_----§ = _loc2_.§_el_---_§;
         §_el_--_--_§.§_el_-__-__-§(this.§_el_----__§,this.§_el_-_----§.length);
         trace(§_el_-----_§.VERSION + "m20");
         this.§_el_-_----§.uncompress();
         this.§_el_-_----§.endian = Endian.LITTLE_ENDIAN;
         var _loc3_:§_el_-__-_§ = new §_el_-__-_§(_loc2_.§_el_-----§);
         _loc3_.§_el_-__--§(this.§_el_-_----§,this.§_el_-____-_§,this.§_el_-_--__§);
      }
      
      private function §_el_--__--§(param1:TimerEvent) : void
      {
         this.§_el_-___---§.alpha -= 0.01;
      }
      
      private function §_el_-_--__§(param1:Number) : void
      {
         this.§_el_-___---§.§_el_--__-_§(param1 * 25 + 74);
      }
      
      private function §_el_---_-_§() : void
      {
         trace(§_el_-----_§.VERSION + "m90");
         this.§_el_-_-_-§ = true;
         trace(§_el_-----_§.VERSION + "m100");
         this.§_el_-_---_§();
      }
      
      private function §_el_--__§() : void
      {
         var _loc1_:Timer = new Timer(100,0);
         _loc1_.addEventListener(TimerEvent.TIMER,this.§_el_--_-§);
         _loc1_.start();
      }
      
      private function §_el_-____-_§(param1:ByteArray) : void
      {
         trace(§_el_-----_§.VERSION + "m70");
         this.§_el_-___---§.§_el_--__-_§(99);
         this.§_el_-_----§ = param1;
         this.§_el_----_§ = true;
         this.§_el_---_-_§();
      }
      
      private function §_el_-_---_§() : void
      {
         trace(§_el_-----_§.VERSION + "m105");
         this.§_el_-___---§.§_el_--__-_§(100);
      }
      
      private function §_el_-_--_§() : void
      {
         trace(§_el_-----_§.VERSION + "m110");
         var _loc1_:Timer = new Timer(750,1);
         var _loc2_:Timer = new Timer(5,85);
         _loc2_.addEventListener(TimerEvent.TIMER,this.§_el_--__--§);
         _loc2_.start();
         _loc1_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_el_-__-_-§);
         _loc1_.start();
      }
      
      private function §_el_-__-_-§(param1:TimerEvent) : void
      {
         this.§_el_-____§.§_el_-_----§ = this.§_el_-_----§;
         this.§_el_-____§.§_el_-__-_-§();
      }
   }
}
