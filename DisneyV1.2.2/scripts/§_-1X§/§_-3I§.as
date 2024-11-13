package §_-1X§
{
   import §_-2x§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class §_-3I§ extends §_-4k§
   {
       
      
      private var §_-3N§:§_-5§;
      
      public var §_-1d§:Sprite;
      
      public function §_-3I§(param1:DisplayObjectContainer = null, param2:* = null, param3:String = "Write the content of the bubble.", param4:int = 0, param5:int = 0, param6:int = 0, param7:Number = 0.5)
      {
         this.§_-1d§ = new Sprite();
         super(param1.parent);
         this.§_-3N§ = new §_-5§(this.§_-1d§,5,2,param3,-1,param4);
         this.Config_tt(10,4,true,true,param5,param6,param7,false);
         this.§_-4Q§(param1,0,25);
         addChild(this.§_-1d§);
      }
      
      private function Config_tt(param1:int, param2:int, param3:Boolean, param4:Boolean, param5:int, param6:int, param7:Number, param8:Boolean) : void
      {
         super.width = this.§_-3N§.width + param1;
         super.height = this.§_-1d§.height + param2;
         super.afficherFond = param3;
         super.bordureRondeUniquementBas = param4;
         super.couleurFond = param5;
         super.couleurBordure = param6;
         super.grosseurBordure = param7;
         super.visible = param8;
      }
      
      private function §_-4Q§(param1:*, param2:int, param3:int) : void
      {
         instance = this;
         param1.addEventListener(MouseEvent.MOUSE_MOVE,function():*
         {
            x = param1.parent.mouseX + param2;
            y = param1.parent.mouseY + param3;
            visible = true;
         });
         param1.addEventListener(MouseEvent.MOUSE_OUT,function():*
         {
            visible = false;
         });
      }
   }
}
