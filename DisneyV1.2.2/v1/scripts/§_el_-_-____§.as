package
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   
   public class §_el_-_-____§ extends Sprite
   {
       
      
      private var §_el_--_--§:Class;
      
      private var §_el_---__§:Array;
      
      private var §_el_----§:int = 0;
      
      private var §_el_-__--_§:Class;
      
      private var §_el_--§:Number = 1;
      
      private var §_el_---_--§:String = "";
      
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
      
      public function §_el_-_-____§(param1:uint, param2:uint)
      {
         var l:Loader;
         var w:uint = param1;
         var h:uint = param2;
         this.§_el_-__--_§ = §_el_-__-_--§;
         this.§_el_--___§ = §_el_-__---_§;
         this.§_el_--_--§ = §_el_-__----§;
         this.§_el_-_--§ = §_el_-_-___-§;
         this.§_el_-_-_--§ = §_el_-__--_-§;
         this.§_el_-___§ = §_el_-__--__§;
         this.§_el_--_-_-§ = new MovieClip();
         this.§_el_-_-__-§ = new Sprite();
         this.§_el_--_§ = new Sprite();
         this.§_el_---__§ = [];
         this.§_el_----__§ = [];
         super();
         this.w = w;
         this.h = h;
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            linkBmp = (param1.target as LoaderInfo).content as Bitmap;
            init();
         });
         l.loadBytes(new this.§_el_--_--§() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            linkOverBmp = (param1.target as LoaderInfo).content as Bitmap;
            init();
         });
         l.loadBytes(new this.§_el_-_--§() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            startBmp = (param1.target as LoaderInfo).content as Bitmap;
            init();
         });
         l.loadBytes(new this.§_el_-_-_--§() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            startOverBmp = (param1.target as LoaderInfo).content as Bitmap;
            init();
         });
         l.loadBytes(new this.§_el_-___§() as ByteArray);
         l = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            backgroundBmp = (param1.target as LoaderInfo).content as Bitmap;
            init();
         });
         l.loadBytes(new this.§_el_-__--_§() as ByteArray);
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
         if(this.backgroundBmp == null || this.startOverBmp == null || this.startBmp == null || this.linkOverBmp == null || this.linkBmp == null)
         {
            return;
         }
         trace(§_el_-----_§.VERSION + "t00");
         var _loc1_:ByteArray = new this.§_el_--___§();
         this.§_el_-__§ = new XML(_loc1_.readUTFBytes(_loc1_.length));
         var _loc2_:Bitmap = this.backgroundBmp;
         this.§_el_-_-__-§.graphics.beginBitmapFill(_loc2_.bitmapData,null,true,true);
         this.§_el_-_-__-§.graphics.drawRect(0,0,this.w,this.h);
         this.§_el_-_-__-§.graphics.endFill();
         this.§_el_-_-__-§.addChild(this.§_el_--_§);
         addChild(this.§_el_-_-__-§);
         this.§_el_---___§(this.§_el_-__§[0]);
      }
      
      public function §_el_-_____§() : void
      {
         var _loc1_:* = undefined;
         trace("doing hosts now");
         this.§_el_---_--§ = loaderInfo.loaderURL;
         this.§_el_---_--§ = this.§_el_---_--§.match(/((\w|\-|_)+\.)+\w*/gi)[0];
         trace("doing hosts now: " + this.§_el_---_--§);
         for(_loc1_ in this.§_el_---__§)
         {
            _loc1_["url"] = String(_loc1_["url"]).replace(/{%host%}/gi,this.§_el_---_--§);
         }
      }
      
      private function §_el_-__-_-_§(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.target as Sprite;
         var _loc3_:Bitmap = _loc2_["img"] as Bitmap;
         _loc2_.graphics.clear();
         _loc2_.graphics.beginBitmapFill(_loc3_.bitmapData,null,true,true);
         _loc2_.graphics.drawRect(0,0,_loc3_.width,_loc3_.height);
         _loc2_.graphics.endFill();
      }
      
      public function §_el_--__-_§(param1:Number) : void
      {
         var _loc2_:Number = param1 / 100 * (this.§_el_--§ - 2);
         this.§_el_--_§.graphics.clear();
         this.§_el_--_§.graphics.lineStyle(2,this.§_el_-§);
         this.§_el_--_§.graphics.beginFill(this.§_el_-___-_§);
         this.§_el_--_§.graphics.drawRect(0,0,this.§_el_--§,this.§_el_--__-§);
         this.§_el_--_§.graphics.endFill();
         this.§_el_--_§.graphics.lineStyle();
         this.§_el_--_§.graphics.beginFill(this.§_el_----§);
         this.§_el_--_§.graphics.drawRect(1,1,_loc2_,this.§_el_--__-§ - 2);
         this.§_el_--_§.graphics.endFill();
         if(param1 >= 100)
         {
            if(this.§_el_-_--_-§)
            {
               this.§_el_--_-_-§.visible = true;
            }
            else
            {
               this.§_el_--_-__§();
            }
         }
      }
      
      private function §_el_------§(param1:MouseEvent) : void
      {
         if(this.§_el_--_-__§ == null)
         {
            trace(§_el_-----_§.VERSION + "t20");
            return;
         }
         this.§_el_--_-__§();
      }
      
      private function §_el_-_---§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         var _loc3_:String = String(_loc2_["url"]);
         navigateToURL(new URLRequest(_loc3_),"_blank");
         trace(§_el_-----_§.VERSION + "t30:" + _loc3_);
      }
      
      public function §_el_---___§(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Bitmap = null;
         var _loc7_:MovieClip = null;
         §_el_--_--_§.§_el_-__-__-§(this.§_el_----__§,loaderInfo.bytesTotal);
         if(param1["playButton"].length() > 0)
         {
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
               this.§_el_--_-_-§.addEventListener(MouseEvent.MOUSE_OVER,this.§_el_-___-__§);
               this.§_el_--_-_-§.addEventListener(MouseEvent.MOUSE_OUT,this.§_el_-__-_-_§);
            }
            this.§_el_--_-_-§.addEventListener(MouseEvent.CLICK,this.§_el_------§);
            this.§_el_-_--_-§ = true;
         }
         this.§_el_-_-__-§.addChild(this.§_el_--_-_-§);
         var _loc2_:XMLList = param1["link"];
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            _loc6_ = this.linkBmp;
            (_loc7_ = new MovieClip())["img"] = _loc6_;
            _loc7_["imgOver"] = this.linkOverBmp;
            _loc7_.x = _loc4_.@x;
            _loc7_.y = _loc4_.@y;
            if(this.§_el_---_--§.length > 0)
            {
               _loc7_["url"] = String(_loc4_.@url).replace(/{%host%}/gi,this.§_el_---_--§);
            }
            else
            {
               _loc7_["url"] = String(_loc4_.@url);
            }
            _loc7_.graphics.beginBitmapFill(_loc6_.bitmapData,null,true,true);
            _loc7_.graphics.drawRect(0,0,_loc6_.width,_loc6_.height);
            _loc7_.graphics.endFill();
            if(_loc4_.@hasOver == true)
            {
               _loc7_.addEventListener(MouseEvent.MOUSE_OVER,this.§_el_-___-__§);
               _loc7_.addEventListener(MouseEvent.MOUSE_OUT,this.§_el_-__-_-_§);
            }
            _loc7_.addEventListener(MouseEvent.CLICK,this.§_el_-_---§);
            _loc7_.buttonMode = true;
            this.§_el_---__§.push(_loc7_);
            this.§_el_-_-__-§.addChild(_loc7_);
            _loc3_++;
         }
         this.§_el_--_§.x = param1["progressbar"][0].@x;
         this.§_el_--_§.y = param1["progressbar"][0].@y;
         this.§_el_--§ = param1["progressbar"][0].@width;
         this.§_el_--__-§ = param1["progressbar"][0].@height;
         this.§_el_----§ = parseInt(param1["progressbar"][0].@foreColor);
         this.§_el_-___-_§ = parseInt(param1["progressbar"][0].@backColor);
         this.§_el_-§ = parseInt(param1["progressbar"][0].@outLineColor);
         trace(§_el_-----_§.VERSION + "t51");
      }
      
      public function set §_el_---_-§(param1:Function) : void
      {
         this.§_el_--_-__§ = param1;
      }
   }
}
