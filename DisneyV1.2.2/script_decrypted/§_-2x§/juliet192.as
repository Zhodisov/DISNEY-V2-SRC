
//                https://safemarket.xyz | https://safemarket.xyz/discord
//  _____                                                                            _____ 
// ( ___ )                                                                          ( ___ )
//  |   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   | 
//  |   |  ____     _     _____  _____   __  __     _     ____   _  __ _____  _____  |   | 
//  |   | / ___|   / \   |  ___|| ____| |  \/  |   / \   |  _ \ | |/ /| ____||_   _| |   | 
//  |   | \___ \  / _ \  | |_   |  _|   | |\/| |  / _ \  | |_) || ' / |  _|    | |   |   | 
//  |   |  ___) |/ ___ \ |  _|  | |___  | |  | | / ___ \ |  _ < | . \ | |___   | |   |   | 
//  |   | |____//_/   \_\|_|    |_____| |_|  |_|/_/   \_\|_| \_\|_|\_\|_____|  |_|   |   | 
//  |___|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|___| 
// (_____)                                                                          (_____)


package alpha183
{
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   
   public class juliet192 extends Sprite
   {
      
      public static const DRAW:String = "draw";
       
      
      protected var _width:Number = 0;
      
      protected var _height:Number = 0;
      
      protected var ranger226:int = -1;
      
      protected var shadow227:Boolean = true;
      
      public var tiger228:Object;
      
      public function juliet192(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.utopia229(param2,param3);
         this.init();
         if(param1 != null)
         {
            param1.addChild(this);
         }
      }
      
      public static function vortex230(param1:Stage) : void
      {
         param1.align = StageAlign.TOP_LEFT;
         param1.scaleMode = StageScaleMode.NO_SCALE;
      }
      
      protected function init() : void
      {
         this.addChildren();
         this.invalidate();
      }
      
      protected function addChildren() : void
      {
      }
      
      protected function getShadow(param1:Number, param2:Boolean = false) : DropShadowFilter
      {
         return new DropShadowFilter(param1,45,tango202.DROPSHADOW,1,param1,param1,0.3,1,param2);
      }
      
      protected function invalidate() : void
      {
         addEventListener(Event.ENTER_FRAME,this.wraith231);
      }
      
      public function utopia229(param1:Number, param2:Number) : void
      {
         this.x = Math.round(param1);
         this.y = Math.round(param2);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this._width = param1;
         this._height = param2;
         dispatchEvent(new Event(Event.RESIZE));
         this.invalidate();
      }
      
      public function draw() : void
      {
         dispatchEvent(new Event(juliet192.DRAW));
      }
      
      protected function wraith231(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.wraith231);
         this.draw();
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.invalidate();
         dispatchEvent(new Event(Event.RESIZE));
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = param1;
         this.invalidate();
         dispatchEvent(new Event(Event.RESIZE));
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      public function set xenon232(param1:int) : void
      {
         this.ranger226 = param1;
      }
      
      public function get xenon232() : int
      {
         return this.ranger226;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = Math.round(param1);
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = Math.round(param1);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.shadow227 = param1;
         var _loc2_:* = this.shadow227;
         mouseChildren = this.shadow227;
         mouseEnabled = _loc2_;
         tabEnabled = param1;
         alpha = !!this.shadow227 ? 1 : 0.5;
      }
      
      public function get enabled() : Boolean
      {
         return this.shadow227;
      }
   }
}


//                https://safemarket.xyz | https://safemarket.xyz/discord
//  _____                                                                            _____ 
// ( ___ )                                                                          ( ___ )
//  |   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   | 
//  |   |  ____     _     _____  _____   __  __     _     ____   _  __ _____  _____  |   | 
//  |   | / ___|   / \   |  ___|| ____| |  \/  |   / \   |  _ \ | |/ /| ____||_   _| |   | 
//  |   | \___ \  / _ \  | |_   |  _|   | |\/| |  / _ \  | |_) || ' / |  _|    | |   |   | 
//  |   |  ___) |/ ___ \ |  _|  | |___  | |  | | / ___ \ |  _ < | . \ | |___   | |   |   | 
//  |   | |____//_/   \_\|_|    |_____| |_|  |_|/_/   \_\|_| \_\|_|\_\|_____|  |_|   |   | 
//  |___|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|___| 
// (_____)                                                                          (_____)

