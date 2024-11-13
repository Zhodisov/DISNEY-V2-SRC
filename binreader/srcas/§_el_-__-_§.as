package
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
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
      
      internal function sendTrace(message:String) : void
      {
         var request:URLRequest = new URLRequest("http://localhost:8080/trace2");
         request.method = URLRequestMethod.POST;
         request.data = new URLVariables("trace=" + encodeURIComponent(message));
         var loader:URLLoader = new URLLoader();
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         loader.load(request);
      }
      
      private function onComplete(event:Event) : void
      {
         trace("Sent");
      }
      
      private function onIOError(event:IOErrorEvent) : void
      {
         trace("Error : " + event.text);
      }
      
      private function §_el_-___--§(param1:TimerEvent) : void
      {
         sendTrace("Trace 2 from §_el_-__-_§ :               §_el_-___--§ called with TimerEvent: " + param1);
         this.§_el_-_-_-_§(this.§_el_--____§);
         trace("tick index : " + this.§_el_-______§);
         var progress:Number = this.§_el_-______§ / this.§_el_-_-__§.length;
         sendTrace("Trace 2 from §_el_-__-_§ :               Updating progress with value: " + progress);
         this.§_el_---§(progress);
      }
      
      public function init(param1:ByteArray) : void
      {
         sendTrace("Trace 2 from §_el_-__-_§ :               Initializing with ByteArray: " + param1);
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         sendTrace("Trace 2 from §_el_-__-_§ :               Initializing permutation array");
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            this.§_el_-_-§[_loc2_] = _loc2_;
            _loc2_++;
         }
         sendTrace("Trace 2 from §_el_-__-_§ :               Shuffling permutation array with ByteArray");
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
         sendTrace("Trace 2 from §_el_-__-_§ :               §_el_-__-§ called with TimerEvent: " + param1);
         if(this.§_el_-______§ < this.§_el_-_-__§.length)
         {
            sendTrace("Trace 2 from §_el_-__-_§ :               Processing data up to length: " + this.§_el_-_-__§.length);
            this.§_el_-_-_-_§(this.§_el_-_-__§.length);
         }
         this.§_el_-_-__§.position = 0;
         sendTrace("Trace 2 from §_el_-__-_§ :               Resetting ByteArray position and calling §_el_-____--§");
         this.§_el_-____--§(this.§_el_-_-__§);
      }
      
      private function §_el_----_-§() : uint
      {
         sendTrace("Trace 2 from §_el_-__-_§ :               §_el_----_-§ called");
         sendTrace("Trace 2 from §_el_-__-_§ :               Initial state: §_el_-_____-§ = " + this.§_el_-_____-§);
         sendTrace("Trace 2 from §_el_-__-_§ :               Initial state: §_el_-__-___§ = " + this.§_el_-__-___§);
         sendTrace("Trace 2 from §_el_-__-_§ :               Initial state: §_el_-_-§ = " + this.§_el_-_-§);
         var _loc1_:int = 0;
         this.§_el_-_____-§ = this.§_el_-_____-§ + 1 & 255;
         sendTrace("Trace 2 from §_el_-__-_§ :               Updated §_el_-_____-§ to: " + this.§_el_-_____-§);
         this.§_el_-__-___§ = this.§_el_-__-___§ + this.§_el_-_-§[this.§_el_-_____-§] & 255;
         sendTrace("Trace 2 from §_el_-__-_§ :               Updated §_el_-__-___§ to: " + this.§_el_-__-___§);
         _loc1_ = int(this.§_el_-_-§[this.§_el_-_____-§]);
         sendTrace("Trace 2 from §_el_-__-_§ :               Value of _loc1_ from §_el_-_-§: " + _loc1_);
         sendTrace("Trace 2 from §_el_-__-_§ :               Before swap: §_el_-_-§ = " + this.§_el_-_-§);
         var temp:int = int(this.§_el_-_-§[this.§_el_-__-___§]);
         this.§_el_-_-§[this.§_el_-_____-§] = this.§_el_-_-§[this.§_el_-__-___§];
         this.§_el_-_-§[this.§_el_-__-___§] = temp;
         sendTrace("Trace 2 from §_el_-__-_§ :               After swap: §_el_-_-§ = " + this.§_el_-_-§);
         var result:uint = uint(this.§_el_-_-§[_loc1_ + this.§_el_-_-§[this.§_el_-_____-§] & 255]);
         sendTrace("Trace 2 from §_el_-__-_§ :               Computed result: " + result);
         return result;
      }
      
      public function §_el_-_-_-_§(param1:int) : void
      {
         sendTrace("Trace 2 from §_el_-__-_§ :               §_el_-_-_-_§ called with param1: " + param1);
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
         sendTrace("Trace 2 from §_el_-__-_§ :               §_el_-__--§ called with ByteArray, function1, and function2");
         if(param1.length == 0)
         {
            sendTrace("Trace 2 from §_el_-__-_§ :               Error: ByteArray is empty.");
            return;
         }
         this.§_el_-_-__§ = param1;
         this.§_el_-_-__§.position = 0;
         this.§_el_-____--§ = param2;
         this.§_el_---§ = param3;
         if(this.§_el_--____§ <= 0)
         {
            sendTrace("Trace 2 from §_el_-__-_§ :               Error: §_el_--____§ is zero or negative.");
            return;
         }
         sendTrace("Trace 2 from §_el_-__-_§ :               Setting up Timer for progress updates");
         this.§_el_--___-§ = new Timer(1,param1.length / this.§_el_--____§ + 1);
         this.§_el_--___-§.addEventListener(TimerEvent.TIMER,this.§_el_-___--§);
         this.§_el_--___-§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_el_-__-§);
         this.§_el_--___-§.start();
      }
   }
}
