package
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   public class DecryptedSafeMarket2 extends MovieClip
   {
      
      public static const VERSION:String = "CSCT220710:";
       
      
      private var IDKOne:IDKone_;
      
      public var tser:ByteArray;
      
      private var §_el_----__§:Array;
      
      private var shees:*;
      
      private var tsas:Loader;
      
      private var §_el_-_-_§:Boolean = true;
      
      public function DecryptedSafeMarket2()
      {
         this.§_el_----__§ = [];
         super();
         Security.allowInsecureDomain("*");
         Security.allowDomain("*");
         trace(VERSION + "l01");
         this.IDKOne = new IDKone_(stage.stageWidth,stage.stageHeight);
         addChild(this.IDKOne);
         addEventListener(Event.ENTER_FRAME,this.§_el_-_-___§);
      }
      
      private function §_el_---__-§(param1:Event) : void
      {
         this.tsas.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_el_---__-§);
         var _loc2_:Sprite = this.tsas.content as Sprite;
         this.addChildAt(_loc2_,0);
         this.removeChild(this.tsas);
         this.tsas = null;
         removeChild(this.IDKOne);
         this.shees = null;
         this.IDKOne = null;
         trace(VERSION + "l20");
      }
      
      private function §_el_-_-___§(param1:Event) : void
      {
         if(this.§_el_-_-_§)
         {
            this.IDKOne.§_el_-_____§();
            this.§_el_-_-_§ = false;
         }
         var _loc2_:int = this.loaderInfo.bytesLoaded / this.loaderInfo.bytesTotal * 75;
         this.IDKOne.§_el_--__-_§(_loc2_);
         if(this.loaderInfo.bytesLoaded == this.loaderInfo.bytesTotal)
         {
            removeEventListener(Event.ENTER_FRAME,this.§_el_-_-___§);
            DecryptedSafeMarket1.§_el_-__-__-§(this.§_el_----__§,loaderInfo.bytesTotal);
            this.aze();
         }
      }
      
      public function §_el_-__-_-§() : void
      {
         trace(VERSION + "l10");
         this.tsas = new Loader();
         this.tsas.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_el_---__-§);
         addChild(this.tsas);
         this.tsas.loadBytes(this.tser);
      }
      
      private function aze() : void
      {
         trace(VERSION + "l05");
         this.stop();
         var _loc1_:Class = getDefinitionByName("DecryptedSafeMarket0") as Class;
         this.shees = new _loc1_(this.IDKOne,this);
      }
   }
}
