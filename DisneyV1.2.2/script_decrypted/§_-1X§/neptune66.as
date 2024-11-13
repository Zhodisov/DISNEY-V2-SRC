
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


package delta30
{
   import alpha183.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class neptune66 extends bravo184
   {
       
      
      private var charlie185:delta186;
      
      public var echo187:Sprite;
      
      public function neptune66(param1:DisplayObjectContainer = null, param2:* = null, param3:String = "Write the content of the bubble.", param4:int = 0, param5:int = 0, param6:int = 0, param7:Number = 0.5)
      {
         this.echo187 = new Sprite();
         super(param1.parent);
         this.charlie185 = new delta186(this.echo187,5,2,param3,-1,param4);
         this.Config_tt(10,4,true,true,param5,param6,param7,false);
         this.foxtrot188(param1,0,25);
         addChild(this.echo187);
      }
      
      private function Config_tt(param1:int, param2:int, param3:Boolean, param4:Boolean, param5:int, param6:int, param7:Number, param8:Boolean) : void
      {
         super.width = this.charlie185.width + param1;
         super.height = this.echo187.height + param2;
         super.afficherFond = param3;
         super.bordureRondeUniquementBas = param4;
         super.couleurFond = param5;
         super.couleurBordure = param6;
         super.grosseurBordure = param7;
         super.visible = param8;
      }
      
      private function foxtrot188(param1:*, param2:int, param3:int) : void
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

