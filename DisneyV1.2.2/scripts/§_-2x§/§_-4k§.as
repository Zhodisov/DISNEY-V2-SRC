package §_-2x§
{
   import flash.display.*;
   
   public class §_-4k§ extends §_-l§
   {
       
      
      protected var §_-17§:Sprite;
      
      protected var §_-2Q§:Sprite;
      
      protected var §_-3R§:int = -1;
      
      protected var §_-2y§:Boolean = true;
      
      protected var §_-1s§:int = 10;
      
      protected var §_-4g§:Boolean = false;
      
      protected var §_-1l§:uint = 13684944;
      
      public var afficherFond:Boolean = false;
      
      public var couleurFond:int = 2829122;
      
      public var couleurBordure:int = 13267430;
      
      public var grosseurBordure:Number = 1;
      
      public var §_-2n§:Boolean = false;
      
      public var bordureRondeUniquementBas:Boolean = true;
      
      public var content:Sprite;
      
      public function §_-4k§(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         super.init();
         setSize(100,100);
      }
      
      override protected function addChildren() : void
      {
         this.§_-2Q§ = new Sprite();
         super.addChild(this.§_-2Q§);
         this.§_-17§ = new Sprite();
         this.§_-17§.mouseEnabled = false;
         super.addChild(this.§_-17§);
         this.content = new Sprite();
         super.addChild(this.content);
         this.content.mask = this.§_-17§;
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         this.content.addChild(param1);
         return param1;
      }
      
      public function §_-3y§(param1:DisplayObject) : DisplayObject
      {
         super.addChild(param1);
         return param1;
      }
      
      override public function draw() : void
      {
         super.draw();
         if(this.afficherFond)
         {
            this.§_-2Q§.graphics.clear();
            this.§_-2Q§.graphics.lineStyle(this.grosseurBordure,this.couleurBordure,1,true);
            this.§_-2Q§.graphics.beginFill(this.couleurFond);
            if(this.bordureRondeUniquementBas)
            {
               this.§_-2Q§.graphics.drawRoundRectComplex(0,0,_width,_height,0,0,6,66);
            }
            else
            {
               this.§_-2Q§.graphics.drawRoundRect(0,0,_width,_height,2);
            }
            this.§_-2Q§.graphics.endFill();
            if(this.§_-2n§)
            {
               this.§_-2Q§.filters = §_-4y§.EFFET_BISEAU_FENETRE;
            }
         }
         this.§_-v§();
         this.§_-17§.graphics.clear();
         this.§_-17§.graphics.beginFill(16711680);
         this.§_-17§.graphics.drawRect(0,0,_width,_height);
         this.§_-17§.graphics.endFill();
      }
      
      protected function §_-v§() : void
      {
         if(!this.§_-4g§)
         {
            return;
         }
         this.§_-2Q§.graphics.lineStyle(0,this.§_-1l§);
         var _loc1_:* = 0;
         while(_loc1_ < _width)
         {
            this.§_-2Q§.graphics.moveTo(_loc1_,0);
            this.§_-2Q§.graphics.lineTo(_loc1_,_height);
            _loc1_ += this.§_-1s§;
         }
         _loc1_ = 0;
         while(_loc1_ < _height)
         {
            this.§_-2Q§.graphics.moveTo(0,_loc1_);
            this.§_-2Q§.graphics.lineTo(_width,_loc1_);
            _loc1_ += this.§_-1s§;
         }
      }
      
      public function set §_-3C§(param1:Boolean) : void
      {
         this.§_-2y§ = param1;
         if(this.§_-2y§)
         {
            filters = [getShadow(2,true)];
         }
         else
         {
            filters = [];
         }
      }
      
      public function get §_-3C§() : Boolean
      {
         return this.§_-2y§;
      }
      
      public function set color(param1:int) : void
      {
         this.§_-3R§ = param1;
         invalidate();
      }
      
      public function get color() : int
      {
         return this.§_-3R§;
      }
      
      public function set §_-1q§(param1:int) : void
      {
         this.§_-1s§ = param1;
         invalidate();
      }
      
      public function get §_-1q§() : int
      {
         return this.§_-1s§;
      }
      
      public function set §_-40§(param1:Boolean) : void
      {
         this.§_-4g§ = param1;
         invalidate();
      }
      
      public function get §_-40§() : Boolean
      {
         return this.§_-4g§;
      }
      
      public function set §_-1w§(param1:uint) : void
      {
         this.§_-1l§ = param1;
         invalidate();
      }
      
      public function get §_-1w§() : uint
      {
         return this.§_-1l§;
      }
   }
}
