package §_-2x§
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   
   public class §_-5§ extends §_-l§
   {
       
      
      protected var §_-3E§:Boolean = true;
      
      protected var _text:String = "";
      
      public var §_-27§:TextField;
      
      protected var §_-3H§:String;
      
      private var _html:Boolean = true;
      
      protected var §_-9§:int;
      
      protected var §_-3d§:int;
      
      public function §_-5§(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:String = "", param5:int = -1, param6:int = -1, param7:String = "")
      {
         this.§_-9§ = param5;
         this.§_-3d§ = param6;
         this.text = param4;
         this.§_-3H§ = param7 == "" ? String(TextFormatAlign.LEFT) : param7;
         super(param1,param2,param3);
      }
      
      public function §_-4V§(param1:TextFormat) : void
      {
         this.§_-27§.defaultTextFormat = param1;
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
         this.§_-27§ = new TextField();
         this.§_-27§.height = _height;
         this.§_-27§.embedFonts = §_-4y§.embedFonts;
         this.§_-27§.selectable = false;
         this.§_-27§.mouseEnabled = false;
         var _loc1_:* = new TextFormat(§_-4y§.x_policeInterface,§_-4y§.fontSize,this.§_-3d§ == -1 ? §_-4y§.COULEUR_TEXTE_DEFAUT : this.§_-3d§);
         _loc1_.align = this.§_-3H§;
         this.§_-27§.defaultTextFormat = _loc1_;
         if(this._html)
         {
            this.§_-27§.htmlText = this._text;
         }
         else
         {
            this.§_-27§.text = this._text;
         }
         addChild(this.§_-27§);
         this.draw();
      }
      
      override public function draw() : void
      {
         super.draw();
         if(this.§_-9§ != -1)
         {
            graphics.clear();
            graphics.beginFill(this.§_-9§);
            graphics.drawRect(0,0,width,height);
            graphics.endFill();
         }
         if(this._html)
         {
            this.§_-27§.htmlText = this._text;
         }
         else
         {
            this.§_-27§.text = this._text;
         }
         if(this.§_-3E§)
         {
            this.§_-27§.autoSize = TextFieldAutoSize.LEFT;
            _width = this.§_-27§.width;
            dispatchEvent(new Event(Event.RESIZE));
         }
         else
         {
            this.§_-27§.autoSize = TextFieldAutoSize.NONE;
            this.§_-27§.width = _width;
         }
         this.§_-27§.height = 18;
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
            this.§_-27§.mouseEnabled = true;
         }
      }
      
      public function set §_-4M§(param1:StyleSheet) : void
      {
         if(this._html)
         {
            this.§_-27§.styleSheet = param1;
         }
      }
      
      public function set autoSize(param1:Boolean) : void
      {
         this.§_-3E§ = param1;
      }
      
      public function get autoSize() : Boolean
      {
         return this.§_-3E§;
      }
      
      public function get §_-1b§() : TextField
      {
         return this.§_-27§;
      }
      
      public function §_-3t§(param1:int) : void
      {
         this.§_-27§.textColor = param1;
      }
   }
}
