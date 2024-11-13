package
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   
   public class DecryptedSafeMarket4 extends Sprite
   {
       
      
      private var §_el_--_--§:Class;
      
      private var §_el_---__§:Array;
      
      private var §_el_----§:int = 0;
      
      private var §_el_-__--_§:Class;
      
      private var §_el_--§:Number = 1;
      
      private var §_el_---_--§:String = "http://localhost:8080/";
      
      private var linkBmp:Bitmap;
      
      private var §_el_-_-__-§:Sprite;
      
      private var §_el_--___§:Class;
      
      private var §_el_-___-_§:int = 0;
      
      private var linkOverBmp:Bitmap;
      
      private var §_el_-_--_-§:Boolean = false;
      
      private var §_el_--__-§:Number = 0;
      
      private var §_el_-_--§:Class;
      
      private var startBmp:Bitmap;
      
      private var startOverBmp:Bitmap;
      
      private var §_el_--_§:Sprite;
      
      private var §_el_-_-_--§:Class;
      
      private var §_el_-__§:XML;
      
      private var §_el_----__§:Array;
      
      private var h:uint;
      
      private var §_el_--_-__§:Function;
      
      private var §_el_--_-_-§:MovieClip;
      
      private var backgroundBmp:Bitmap;
      
      private var §_el_-___§:Class;
      
      private var §_el_-§:int = 0;
      
      private var w:uint;
      
      public function DecryptedSafeMarket4(param1:uint, param2:uint)
      {
         var l:Loader;
         var w:uint = param1;
         var h:uint = param2;
         this.§_el_-__--_§ = DecryptedSafeMarket9;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set §_el_-__--_§");
         this.§_el_--___§ = DecryptedSafeMarket6;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set §_el_--___§");
         this.§_el_--_--§ = DecryptedSafeMarket5;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set §_el_--_--§");
         this.§_el_-_--§ = DecryptedSafeMarket3;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set §_el_-_--§");
         this.§_el_-_-_--§ = DecryptedSafeMarket;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set §_el_-_-_--");
         this.§_el_-___§ = DecryptedSafeMarket7;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set §_el_-___§ ");
         this.§_el_--_-_-§ = new MovieClip();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Created new MovieClip");
         this.§_el_-_-__-§ = new Sprite();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Created new Sprite for §_el_-_-__-§");
         this.§_el_--_§ = new Sprite();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Created new Sprite for §_el_--_§");
         this.§_el_---__§ = [];
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Initialized §_el_---__§ array");
         this.§_el_----__§ = [];
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Initialized §_el_----__§ array");
         super();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Called super constructor");
         this.w = w;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set width to " + w);
         this.h = h;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Set height to " + h);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            linkBmp = (param1.target as LoaderInfo).content as Bitmap;
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loaded linkBmp");
            init();
         });
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loading bytes for §_el_--_--§");
         l.loadBytes(new this.§_el_--_--§() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            linkOverBmp = (param1.target as LoaderInfo).content as Bitmap;
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loaded linkOverBmp");
            init();
         });
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loading bytes for §_el_-_--§");
         l.loadBytes(new this.§_el_-_--§() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            startBmp = (param1.target as LoaderInfo).content as Bitmap;
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loaded startBmp");
            init();
         });
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loading bytes for DecryptedSafeMarket");
         l.loadBytes(new this.DecryptedSafeMarket() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            startOverBmp = (param1.target as LoaderInfo).content as Bitmap;
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loaded startOverBmp");
            init();
         });
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loading bytes for §_el_-___§");
         l.loadBytes(new this.§_el_-___§() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            backgroundBmp = (param1.target as LoaderInfo).content as Bitmap;
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loaded backgroundBmp");
            init();
         });
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Loading bytes for §_el_-__--_§");
         l.loadBytes(new this.§_el_-__--_§() as ByteArray);
      }
      
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

      
      private function §_el_-___-__§(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.target as Sprite;
         var _loc3_:Bitmap = _loc2_["imgOver"] as Bitmap;
         _loc2_.graphics.clear();
         _loc2_.graphics.beginBitmapFill(_loc3_.bitmapData,null,true,true);
         _loc2_.graphics.drawRect(0,0,_loc3_.width,_loc3_.height);
         _loc2_.graphics.endFill();
      }
      
      private function init() : void
      {
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               init() called");
         if(this.backgroundBmp == null || this.startOverBmp == null || this.startBmp == null || this.linkOverBmp == null || this.linkBmp == null)
         {
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Some bitmaps are still null, returning");
            return;
         }
         trace(DecryptedSafeMarket2.VERSION + "t00");
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Version: " + DecryptedSafeMarket2.VERSION + "t00");
         var _loc1_:ByteArray = new this.§_el_--___§();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               ByteArray created for §_el_--___§");
         this.§_el_-__§ = new XML(_loc1_.readUTFBytes(_loc1_.length));
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               XML created from ByteArray");
         var _loc2_:Bitmap = this.backgroundBmp;
         this.§_el_-_-__-§.graphics.beginBitmapFill(_loc2_.bitmapData,null,true,true);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Bitmap fill started for backgroundBmp");
         this.§_el_-_-__-§.graphics.drawRect(0,0,this.w,this.h);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics drawn for backgroundBmp");
         this.§_el_-_-__-§.graphics.endFill();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics fill ended for backgroundBmp");
         this.§_el_-_-__-§.addChild(this.§_el_--_§);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Added §_el_--_§ to §_el_-_-__-§");
         addChild(this.§_el_-_-__-§);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Added §_el_-_-__-§ to display list");
         this.§_el_---___§(this.§_el_-__§[0]);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Called §_el_---___§ with XML data");
      }
      
      public function §_el_-_____§() : void
      {
         var _loc1_:* = undefined;
         trace("doing hosts now");
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               doing hosts now");
         this.§_el_---_--§ = "http://localhost:8080/";
         trace("doing hosts now: " + this.§_el_---_--§);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               doing hosts now" + this.§_el_---_--§);
         for(_loc1_ in this.§_el_---__§)
         {
            _loc1_["url"] = "http://localhost:8080/";
         }
      }
      
      private function §_el_-__-_-_§(param1:MouseEvent) : void
      {
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_-__-_-_§ called with MouseEvent: " + param1);
         var _loc2_:Sprite = param1.target as Sprite;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Target sprite: " + _loc2_);
         var _loc3_:Bitmap = _loc2_["img"] as Bitmap;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Bitmap image: " + _loc3_);
         _loc2_.graphics.clear();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics cleared for sprite");
         _loc2_.graphics.beginBitmapFill(_loc3_.bitmapData,null,true,true);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Bitmap fill started for sprite");
         _loc2_.graphics.drawRect(0,0,_loc3_.width,_loc3_.height);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics drawn for sprite with dimensions: " + _loc3_.width + "x" + _loc3_.height);
         _loc2_.graphics.endFill();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics fill ended for sprite");
      }
      
      public function §_el_--__-_§(param1:Number) : void
      {
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_--__-_§ called with parameter: " + param1);
         var _loc2_:Number = param1 / 100 * (this.§_el_--§ - 2);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Calculated _loc2_: " + _loc2_);
         this.§_el_--_§.graphics.clear();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics cleared for §_el_--_§");
         this.§_el_--_§.graphics.lineStyle(2,this.§_el_-§);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Line style set with color: " + this.§_el_-§);
         this.§_el_--_§.graphics.beginFill(this.§_el_-___-_§);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics fill started with color: " + this.§_el_-___-_§);
         this.§_el_--_§.graphics.drawRect(0,0,this.§_el_--§,this.§_el_--__-§);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics drawn with dimensions: " + this.§_el_--§ + "x" + this.§_el_--__-§);
         this.§_el_--_§.graphics.endFill();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics fill ended");
         this.§_el_--_§.graphics.lineStyle();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Line style reset");
         this.§_el_--_§.graphics.beginFill(this.§_el_----§);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics fill started with foreColor: " + this.§_el_----§);
         this.§_el_--_§.graphics.drawRect(1,1,_loc2_,this.§_el_--__-§ - 2);
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics drawn with dimensions: " + _loc2_ + "x" + (this.§_el_--__-§ - 2));
         this.§_el_--_§.graphics.endFill();
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Graphics fill ended");
         if(param1 >= 100)
         {
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Parameter is 100 or greater");
            if(this.§_el_-_--_-§)
            {
               sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_-_--_-§ is true, making §_el_--_-_-§ visible");
               this.§_el_--_-_-§.visible = true;
            }
            else
            {
               sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_-_--_-§ is false, calling §_el_--_-__§()");
               this.§_el_--_-__§();
            }
         }
      }
      
      private function §_el_------§(param1:MouseEvent) : void
      {
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_------§ called with MouseEvent: " + param1);
         if(this.§_el_--_-__§ == null)
         {
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_--_-__§ is null, returning");
            trace(DecryptedSafeMarket2.VERSION + "t20");
            return;
         }
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Calling §_el_--_-__§()");
         this.§_el_--_-__§();
      }
      
      private function §_el_-_---§(param1:MouseEvent) : void
      {
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_-_---§ called with MouseEvent: " + param1);
         var _loc2_:MovieClip = param1.target as MovieClip;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Target MovieClip: " + _loc2_);
         navigateToURL(new URLRequest("http://localhost:8080/"),"_blank");
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Navigating to URL: http://localhost:8080/");
         trace(DecryptedSafeMarket2.VERSION + "t30:" + "http://localhost:8080/");
      }
      
      public function §_el_---___§(param1:XML) : void
      {
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               §_el_---___§ called with XML: " + param1);
         var _loc4_:XML = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Bitmap = null;
         var _loc7_:MovieClip = null;
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Updating progress bar");
         DecryptedSafeMarket1.§_el_-__-__-§(this.§_el_----__§,loaderInfo.bytesTotal);
         if(param1["playButton"].length() > 0)
         {
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Play button found in XML");
            _loc5_ = this.startBmp as Bitmap;
            this.§_el_--_-_-§.graphics.beginBitmapFill(_loc5_.bitmapData,null,true,true);
            this.§_el_--_-_-§.graphics.drawRect(0,0,_loc5_.width,_loc5_.height);
            this.§_el_--_-_-§.graphics.endFill();
            this.§_el_--_-_-§["img"] = this.startBmp;
            this.§_el_--_-_-§["imgOver"] = this.startOverBmp;
            this.§_el_--_-_-§.buttonMode = true;
            this.§_el_--_-_-§.visible = false;
            this.§_el_--_-_-§.x = param1["playButton"][0].@x;
            this.§_el_--_-_-§.y = param1["playButton"][0].@y;
            if(param1["playButton"][0].@hasOver == true)
            {
               sendTrace("Trace 1 from DecryptedSafeMarket4 :               Adding MOUSE_OVER and MOUSE_OUT listeners to play button");
               this.§_el_--_-_-§.addEventListener(MouseEvent.MOUSE_OVER,this.§_el_-___-__§);
               this.§_el_--_-_-§.addEventListener(MouseEvent.MOUSE_OUT,this.§_el_-__-_-_§);
            }
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Adding CLICK listener to play button");
            this.§_el_--_-_-§.addEventListener(MouseEvent.CLICK,this.§_el_------§);
            this.§_el_-_--_-§ = true;
         }
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Adding play button to display list");
         this.§_el_-_-__-§.addChild(this.§_el_--_-_-§);
         var _loc2_:XMLList = param1["link"];
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Processing link element: " + _loc4_);
            _loc6_ = this.linkBmp;
            (_loc7_ = new MovieClip())["img"] = _loc6_;
            _loc7_["imgOver"] = this.linkOverBmp;
            _loc7_.x = _loc4_.@x;
            _loc7_.y = _loc4_.@y;
            if(this.§_el_---_--§.length > 0)
            {
               sendTrace("Trace 1 from DecryptedSafeMarket4 :               Setting URL for link (existing length > 0)");
               _loc7_["url"] = "http://localhost:8080/";
            }
            else
            {
               sendTrace("Trace 1 from DecryptedSafeMarket4 :               Setting URL for link (default)");
               _loc7_["url"] = "http://localhost:8080/";
            }
            _loc7_.graphics.beginBitmapFill(_loc6_.bitmapData,null,true,true);
            _loc7_.graphics.drawRect(0,0,_loc6_.width,_loc6_.height);
            _loc7_.graphics.endFill();
            if(_loc4_.@hasOver == true)
            {
               sendTrace("Trace 1 from DecryptedSafeMarket4 :               Adding MOUSE_OVER and MOUSE_OUT listeners to link");
               _loc7_.addEventListener(MouseEvent.MOUSE_OVER,this.§_el_-___-__§);
               _loc7_.addEventListener(MouseEvent.MOUSE_OUT,this.§_el_-__-_-_§);
            }
            sendTrace("Trace 1 from DecryptedSafeMarket4 :               Adding CLICK listener to link");
            _loc7_.addEventListener(MouseEvent.CLICK,this.§_el_-_---§);
            _loc7_.buttonMode = true;
            this.§_el_---__§.push(_loc7_);
            this.§_el_-_-__-§.addChild(_loc7_);
            _loc3_++;
         }
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Setting progress bar properties");
         this.§_el_--_§.x = param1["progressbar"][0].@x;
         this.§_el_--_§.y = param1["progressbar"][0].@y;
         this.§_el_--§ = param1["progressbar"][0].@width;
         this.§_el_--__-§ = param1["progressbar"][0].@height;
         this.§_el_----§ = parseInt(param1["progressbar"][0].@foreColor);
         this.§_el_-___-_§ = parseInt(param1["progressbar"][0].@backColor);
         this.§_el_-§ = parseInt(param1["progressbar"][0].@outLineColor);
         trace(DecryptedSafeMarket2.VERSION + "t51");
      }
      
      public function set §_el_---_-§(param1:Function) : void
      {
         sendTrace("Trace 1 from DecryptedSafeMarket4 :               Setting §_el_---_-§ with function: " + param1);
         this.§_el_--_-__§ = param1;
      }
   }
}
