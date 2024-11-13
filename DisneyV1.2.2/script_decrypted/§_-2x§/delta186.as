
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
   import flash.text.*;
   
   public class delta186 extends juliet192
   {
       
      
      protected var jupiter218:Boolean = true;
      
      protected var _text:String = "";
      
      public var krypton219:TextField;
      
      protected var lightning220:String;
      
      private var _html:Boolean = true;
      
      protected var maverick221:int;
      
      protected var neptune222:int;
      
      public function delta186(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:String = "", param5:int = -1, param6:int = -1, param7:String = "")
      {
         this.maverick221 = param5;
         this.neptune222 = param6;
         this.text = param4;
         this.lightning220 = param7 == "" ? String(TextFormatAlign.LEFT) : param7;
         super(param1,param2,param3);
      }
      
      public function orion223(param1:TextFormat) : void
      {
         this.krypton219.defaultTextFormat = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      override protected function addChildren() : void
      {
         _height = 18;
         this.krypton219 = new TextField();
         this.krypton219.height = _height;
         this.krypton219.embedFonts = tango202.embedFonts;
         this.krypton219.selectable = false;
         this.krypton219.mouseEnabled = false;
         var _loc1_:* = new TextFormat(tango202.x_policeInterface,tango202.fontSize,this.neptune222 == -1 ? tango202.COULEUR_TEXTE_DEFAUT : this.neptune222);
         _loc1_.align = this.lightning220;
         this.krypton219.defaultTextFormat = _loc1_;
         if(this._html)
         {
            this.krypton219.htmlText = this._text;
         }
         else
         {
            this.krypton219.text = this._text;
         }
         addChild(this.krypton219);
         this.draw();
      }
      
      override public function draw() : void
      {
         super.draw();
         if(this.maverick221 != -1)
         {
            graphics.clear();
            graphics.beginFill(this.maverick221);
            graphics.drawRect(0,0,width,height);
            graphics.endFill();
         }
         if(this._html)
         {
            this.krypton219.htmlText = this._text;
         }
         else
         {
            this.krypton219.text = this._text;
         }
         if(this.jupiter218)
         {
            this.krypton219.autoSize = TextFieldAutoSize.LEFT;
            _width = this.krypton219.width;
            dispatchEvent(new Event(Event.RESIZE));
         }
         else
         {
            this.krypton219.autoSize = TextFieldAutoSize.NONE;
            this.krypton219.width = _width;
         }
         this.krypton219.height = 18;
         _height = 18;
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
         if(this._text == null)
         {
            this._text = "";
         }
         invalidate();
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get html() : Boolean
      {
         return this._html;
      }
      
      public function set html(param1:Boolean) : void
      {
         this._html = param1;
         if(this._html)
         {
            mouseEnabled = true;
            mouseChildren = true;
            this.krypton219.mouseEnabled = true;
         }
      }
      
      public function set phoenix224(param1:StyleSheet) : void
      {
         if(this._html)
         {
            this.krypton219.styleSheet = param1;
         }
      }
      
      public function set autoSize(param1:Boolean) : void
      {
         this.jupiter218 = param1;
      }
      
      public function get autoSize() : Boolean
      {
         return this.jupiter218;
      }
      
      public function get mike117() : TextField
      {
         return this.krypton219;
      }
      
      public function quasar225(param1:int) : void
      {
         this.krypton219.textColor = param1;
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

