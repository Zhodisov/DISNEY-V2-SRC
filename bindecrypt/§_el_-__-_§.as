package
{
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §_el_-__-_§
   {
       
      
      private var §_el_-____--§:Function;
      
      private var §_el_--___-§:Timer;
      
      private var §_el_-_____-§:int = 0;
      
      private var §_el_-__-___§:int = 0;
      
      private var §_el_-_-__§:ByteArray;
      
      private var §_el_-______§:int = 0;
      
      private var §_el_-_-§:ByteArray;
      
      private const §_el_--____§:int = 160000;
      
      private var §_el_---§:Function;
      
      public function §_el_-__-_§(param1:ByteArray = null)
      {
         super();
         this.§_el_-_-§ = new ByteArray();
         if(param1)
         {
            this.init(param1);
         }
      }
      
      private function §_el_-___--§(param1:TimerEvent) : void
      {
         this.§_el_-_-_-_§(this.§_el_--____§);
         trace("tick index : " + this.§_el_-______§);
         this.§_el_---§(this.§_el_-______§ / this.§_el_-_-__§.length);
      }
      
      public function init(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            this.§_el_-_-§[_loc2_] = _loc2_;
            _loc2_++;
         }
         _loc3_ = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            _loc3_ = _loc3_ + this.§_el_-_-§[_loc2_] + param1[_loc2_ % param1.length] & 255;
            _loc4_ = int(this.§_el_-_-§[_loc2_]);
            this.§_el_-_-§[_loc2_] = this.§_el_-_-§[_loc3_];
            this.§_el_-_-§[_loc3_] = _loc4_;
            _loc2_++;
         }
         this.§_el_-_____-§ = 0;
         this.§_el_-__-___§ = 0;
      }
      
      private function §_el_-__-§(param1:TimerEvent) : void
      {
         if(this.§_el_-______§ < this.§_el_-_-__§.length)
         {
            this.§_el_-_-_-_§(this.§_el_-_-__§.length);
         }
         this.§_el_-_-__§.position = 0;
         this.§_el_-____--§(this.§_el_-_-__§);
      }
      
      private function §_el_----_-§() : uint
      {
         var _loc1_:int = 0;
         this.§_el_-_____-§ = this.§_el_-_____-§ + 1 & 255;
         this.§_el_-__-___§ = this.§_el_-__-___§ + this.§_el_-_-§[this.§_el_-_____-§] & 255;
         _loc1_ = int(this.§_el_-_-§[this.§_el_-_____-§]);
         this.§_el_-_-§[this.§_el_-_____-§] = this.§_el_-_-§[this.§_el_-__-___§];
         this.§_el_-_-§[this.§_el_-__-___§] = _loc1_;
         return this.§_el_-_-§[_loc1_ + this.§_el_-_-§[this.§_el_-_____-§] & 255];
      }
      
      public function §_el_-_-_-_§(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1 && this.§_el_-______§ < this.§_el_-_-__§.length)
         {
            var _loc3_:* = this.§_el_-______§++;
            this.§_el_-_-__§[_loc3_] ^= this.§_el_----_-§();
            _loc2_++;
         }
      }
      
      public function §_el_-__--§(param1:ByteArray, param2:Function, param3:Function) : void
      {
         this.§_el_-_-__§ = param1;
         this.§_el_-_-__§.position = 0;
         this.§_el_-____--§ = param2;
         this.§_el_---§ = param3;
         this.§_el_--___-§ = new Timer(1,param1.length / this.§_el_--____§ + 1);
         this.§_el_--___-§.addEventListener(TimerEvent.TIMER,this.§_el_-___--§);
         this.§_el_--___-§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_el_-__-§);
         this.§_el_--___-§.start();
      }
   }
}
