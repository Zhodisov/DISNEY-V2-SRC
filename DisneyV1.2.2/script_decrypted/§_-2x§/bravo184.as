
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
   
   public class bravo184 extends juliet192
   {
       
      
      protected var kilo193:Sprite;
      
      protected var lima194:Sprite;
      
      protected var mike195:int = -1;
      
      protected var november196:Boolean = true;
      
      protected var oscar197:int = 10;
      
      protected var papa198:Boolean = false;
      
      protected var quebec199:uint = 13684944;
      
      public var afficherFond:Boolean = false;
      
      public var couleurFond:int = 2829122;
      
      public var couleurBordure:int = 13267430;
      
      public var grosseurBordure:Number = 1;
      
      public var romeo200:Boolean = false;
      
      public var bordureRondeUniquementBas:Boolean = true;
      
      public var content:Sprite;
      
      public function bravo184(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0)
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
         this.lima194 = new Sprite();
         super.addChild(this.lima194);
         this.kilo193 = new Sprite();
         this.kilo193.mouseEnabled = false;
         super.addChild(this.kilo193);
         this.content = new Sprite();
         super.addChild(this.content);
         this.content.mask = this.kilo193;
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         this.content.addChild(param1);
         return param1;
      }
      
      public function sierra201(param1:DisplayObject) : DisplayObject
      {
         super.addChild(param1);
         return param1;
      }
      
      override public function draw() : void
      {
         super.draw();
         if(this.afficherFond)
         {
            this.lima194.graphics.clear();
            this.lima194.graphics.lineStyle(this.grosseurBordure,this.couleurBordure,1,true);
            this.lima194.graphics.beginFill(this.couleurFond);
            if(this.bordureRondeUniquementBas)
            {
               this.lima194.graphics.drawRoundRectComplex(0,0,_width,_height,0,0,6,66);
            }
            else
            {
               this.lima194.graphics.drawRoundRect(0,0,_width,_height,2);
            }
            this.lima194.graphics.endFill();
            if(this.romeo200)
            {
               this.lima194.filters = tango202.EFFET_BISEAU_FENETRE;
            }
         }
         this.uniform203();
         this.kilo193.graphics.clear();
         this.kilo193.graphics.beginFill(16711680);
         this.kilo193.graphics.drawRect(0,0,_width,_height);
         this.kilo193.graphics.endFill();
      }
      
      protected function uniform203() : void
      {
         if(!this.papa198)
         {
            return;
         }
         this.lima194.graphics.lineStyle(0,this.quebec199);
         var _loc1_:* = 0;
         while(_loc1_ < _width)
         {
            this.lima194.graphics.moveTo(_loc1_,0);
            this.lima194.graphics.lineTo(_loc1_,_height);
            _loc1_ += this.oscar197;
         }
         _loc1_ = 0;
         while(_loc1_ < _height)
         {
            this.lima194.graphics.moveTo(0,_loc1_);
            this.lima194.graphics.lineTo(_width,_loc1_);
            _loc1_ += this.oscar197;
         }
      }
      
      public function set victor204(param1:Boolean) : void
      {
         this.november196 = param1;
         if(this.november196)
         {
            filters = [getShadow(2,true)];
         }
         else
         {
            filters = [];
         }
      }
      
      public function get victor204() : Boolean
      {
         return this.november196;
      }
      
      public function set color(param1:int) : void
      {
         this.mike195 = param1;
         invalidate();
      }
      
      public function get color() : int
      {
         return this.mike195;
      }
      
      public function set whiskey205(param1:int) : void
      {
         this.oscar197 = param1;
         invalidate();
      }
      
      public function get whiskey205() : int
      {
         return this.oscar197;
      }
      
      public function set x-ray206(param1:Boolean) : void
      {
         this.papa198 = param1;
         invalidate();
      }
      
      public function get x-ray206() : Boolean
      {
         return this.papa198;
      }
      
      public function set yankee207(param1:uint) : void
      {
         this.quebec199 = param1;
         invalidate();
      }
      
      public function get yankee207() : uint
      {
         return this.quebec199;
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

