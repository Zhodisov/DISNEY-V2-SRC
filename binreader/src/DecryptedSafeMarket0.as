package
{
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.Timer;
   
   public class DecryptedSafeMarket0 extends Sprite
   {
       
      
      private var DecryptedSafeMarket4_:DecryptedSafeMarket4;
      
      private var ByteArray_:ByteArray;
      
      private var Array_:Array;
      
      private var Boolean_:Boolean = true;
      
      private var Boolean__:Boolean = true;
      
      private var DecryptedSafeMarket2_:DecryptedSafeMarket2;
      
      public function DecryptedSafeMarket0(param1:DecryptedSafeMarket4, param2:DecryptedSafeMarket2)
      {
         this.Array_ = [];
         super();
         trace(DecryptedSafeMarket2.VERSION + "m00");
         this.DecryptedSafeMarket4_ = param1;
         param1.§_el_---_-§ = this.IDKVersion;
         this.DecryptedSafeMarket2_ = param2;
         this.§_el_--__§();
      }
      
      private function §_el_--_-§(param1:TimerEvent) : void
      {
         Timer(param1.target).stop();
         var _loc2_:DecryptedSafeMarket12 = new DecryptedSafeMarket12();
         this.ByteArray_ = _loc2_.§_el_---_§;
         DecryptedSafeMarket1.§_el_-__-__-§(this.Array_,this.ByteArray_.length);
         trace(DecryptedSafeMarket2.VERSION + "m20");
         this.ByteArray_.uncompress();
         this.ByteArray_.endian = Endian.LITTLE_ENDIAN;
         var _loc3_:DecryptedSafeMarket8 = new DecryptedSafeMarket8(_loc2_.§_el_-----§);
         _loc3_.§_el_-__--§(this.ByteArray_,this.§_el_-____-_§,this.§_el_-_--__§);
      }
      
      private function §_el_--__--§(param1:TimerEvent) : void
      {
         this.DecryptedSafeMarket4_.alpha -= 0.01;
      }
      
      private function §_el_-_--__§(param1:Number) : void
      {
         this.DecryptedSafeMarket4_.§_el_--__-_§(param1 * 25 + 74);
      }
      
      private function §_el_---_-_§() : void
      {
         trace(DecryptedSafeMarket2.VERSION + "m90");
         this.Boolean__ = true;
         trace(DecryptedSafeMarket2.VERSION + "m100");
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
         trace(DecryptedSafeMarket2.VERSION + "m70");
         this.DecryptedSafeMarket4_.§_el_--__-_§(99);
         this.ByteArray_ = param1;
         this.Boolean_ = true;
         this.§_el_---_-_§();
      }
      
      private function §_el_-_---_§() : void
      {
         trace(DecryptedSafeMarket2.VERSION + "m105");
         this.DecryptedSafeMarket4_.§_el_--__-_§(100);
      }
      
      private function IDKVersion() : void
      {
         trace(DecryptedSafeMarket2.VERSION + "m110");
         var _loc1_:Timer = new Timer(750,1);
         var _loc2_:Timer = new Timer(5,85);
         _loc2_.addEventListener(TimerEvent.TIMER,this.§_el_--__--§);
         _loc2_.start();
         _loc1_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_el_-__-_-§);
         _loc1_.start();
      }
      
      private function §_el_-__-_-§(param1:TimerEvent) : void
      {
         this.DecryptedSafeMarket2_.ByteArray_ = this.ByteArray_;
         this.DecryptedSafeMarket2_.§_el_-__-_-§();
      }
   }
}
