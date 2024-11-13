package
{
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.Timer;
   
   public class §_el_-____-§ extends MovieClip
   {
       
      
      private var §_el_--_-_§:Class;
      
      public var §_el_---_§:ByteArray;
      
      private var §_el_-_§:Class;
      
      private var §_el_----__§:Array;
      
      public var §_el_-----§:ByteArray;

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
      
   public function §_el_-____-§()
   {
      sendTrace("§_el_-____-§ method started");

      // Assigning class references
      this.§_el_-_§ = §_el_-__-__§;
      sendTrace("Assigned §_el_-_§");

      this.§_el_--_-_§ = §_el_-___--_§;
      sendTrace("Assigned §_el_--_-_§");

      // Initializing ByteArray and array
      this.§_el_-----§ = new ByteArray();
      sendTrace("Initialized §_el_-----§");

      this.§_el_----__§ = [];
      sendTrace("Initialized §_el_----__§");

      super();
      sendTrace("Called super()");

      // Creating instances and checking their types
      this.§_el_---_§ = new this.§_el_-_§() as ByteArray;
      sendTrace("Created §_el_---_§, type: " + typeof(this.§_el_---_§));

      var _loc1_:ByteArray = new this.§_el_--_-_§() as ByteArray;
      sendTrace("Created _loc1_, type: " + typeof(_loc1_));

      // Reading and writing bytes
      var _loc2_:int = 0;
      while(_loc2_ < 16)
      {
         var byteValue:int = _loc1_.readByte();
         this.§_el_-----§.writeByte(byteValue);

         sendTrace("Read byte from _loc1_: " + byteValue);
         sendTrace("Wrote byte to §_el_-----§: " + byteValue);

         _loc2_++;
      }

      this.§_el_-----§.position = 0;
      sendTrace("Reset position of §_el_-----§ to 0");

      // Calling method on §_el_--_--_§
      §_el_--_--_§.§_el_-__-__-§(this.§_el_----__§, this.§_el_---_§.length);
      sendTrace("Called §_el_-__-__-§ on §_el_--_--_§ with parameters: §_el_----__§, " + this.§_el_---_§.length);
   }

   }
}
