package
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   public class §_el_-----_§ extends MovieClip
   {
      
      public static const VERSION:String = "CSCT220710:";
       
      
      private var §_el_-___---§:§_el_-_-____§;
      
      public var §_el_-_----§:ByteArray;
      
      private var §_el_----__§:Array;
      
      private var §_el_--_---§:*;
      
      private var §_el_-___-§:Loader;
      
      private var §_el_-_-_§:Boolean = true;
      
      public function §_el_-----_§()
      {
         this.§_el_----__§ = [];
         super();
         Security.allowInsecureDomain("*");
         Security.allowDomain("*");
         trace(VERSION + "l01");
         this.§_el_-___---§ = new §_el_-_-____§(stage.stageWidth,stage.stageHeight);
         addChild(this.§_el_-___---§);
         addEventListener(Event.ENTER_FRAME,this.§_el_-_-___§);
      }
      
      private function §_el_---__-§(param1:Event) : void
      {
         this.§_el_-___-§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_el_---__-§);
         var _loc2_:Sprite = this.§_el_-___-§.content as Sprite;
         this.addChildAt(_loc2_,0);
         this.removeChild(this.§_el_-___-§);
         this.§_el_-___-§ = null;
         removeChild(this.§_el_-___---§);
         this.§_el_--_---§ = null;
         this.§_el_-___---§ = null;
         trace(VERSION + "l20");
      }
      
      private function §_el_-_-___§(param1:Event) : void
      {
         if(this.§_el_-_-_§)
         {
            this.§_el_-___---§.§_el_-_____§();
            this.§_el_-_-_§ = false;
         }
         var _loc2_:int = this.loaderInfo.bytesLoaded / this.loaderInfo.bytesTotal * 75;
         this.§_el_-___---§.§_el_--__-_§(_loc2_);
         if(this.loaderInfo.bytesLoaded == this.loaderInfo.bytesTotal)
         {
            removeEventListener(Event.ENTER_FRAME,this.§_el_-_-___§);
            §_el_--_--_§.§_el_-__-__-§(this.§_el_----__§,loaderInfo.bytesTotal);
            this.§_el_-__---§();
         }
      }
      
      public function §_el_-__-_-§() : void
      {
         trace(VERSION + "l10");
         this.§_el_-___-§ = new Loader();
         this.§_el_-___-§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_el_---__-§);
         addChild(this.§_el_-___-§);
         this.§_el_-___-§.loadBytes(this.§_el_-_----§);
      }
      
      private function §_el_-__---§() : void
      {
         trace(VERSION + "l05");
         this.stop();
         var _loc1_:Class = getDefinitionByName("KCS___Main") as Class;
         this.§_el_--_---§ = new _loc1_(this.§_el_-___---§,this);
      }
   }
}
