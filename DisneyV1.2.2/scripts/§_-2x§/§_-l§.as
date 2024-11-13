package §_-2x§
{
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   
   public class §_-l§ extends Sprite
   {
      
      public static const DRAW:String = "draw";
       
      
      protected var _width:Number = 0;
      
      protected var _height:Number = 0;
      
      protected var §_-b§:int = -1;
      
      protected var §_-1T§:Boolean = true;
      
      public var §_-3w§:Object;
      
      public function §_-l§(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.§_-1v§(param2,param3);
         this.init();
         if(param1 != null)
         {
            param1.addChild(this);
         }
      }
      
      public static function §_-12§(param1:Stage) : void
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
         return new DropShadowFilter(param1,45,§_-4y§.DROPSHADOW,1,param1,param1,0.3,1,param2);
      }
      
      protected function invalidate() : void
      {
         addEventListener(Event.ENTER_FRAME,this.§_-R§);
      }
      
      public function §_-1v§(param1:Number, param2:Number) : void
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
         dispatchEvent(new Event(§_-l§.DRAW));
      }
      
      protected function §_-R§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§_-R§);
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
      
      public function set §_-4U§(param1:int) : void
      {
         this.§_-b§ = param1;
      }
      
      public function get §_-4U§() : int
      {
         return this.§_-b§;
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
         this.§_-1T§ = param1;
         var _loc2_:* = this.§_-1T§;
         mouseChildren = this.§_-1T§;
         mouseEnabled = _loc2_;
         tabEnabled = param1;
         alpha = !!this.§_-1T§ ? 1 : 0.5;
      }
      
      public function get enabled() : Boolean
      {
         return this.§_-1T§;
      }
   }
}
