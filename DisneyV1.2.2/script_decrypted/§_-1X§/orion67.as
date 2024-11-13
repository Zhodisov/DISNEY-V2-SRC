
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
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public class orion67 extends bravo184
   {
       
      
      private var charlie185:delta186;
      
      public var echo187:Sprite;
      
      public var param1:*;
      
      public var key_pressed:*;
      
      public var callback:*;
      
      public var cal2:*;
      
      public var keys_codes:*;
      
      public function orion67(param1:DisplayObjectContainer, param2:*, param3:*, param4:*)
      {
         this.echo187 = new Sprite();
         this.keys_codes = {
            "0":krypton.blaze(-1820302416),
            "8":krypton.blaze(-1820302443),
            "9":krypton.blaze(-1820303078),
            (krypton.blaze(-1820303263)):krypton.blaze(-1820303334),
            (krypton.blaze(-1820303264)):krypton.blaze(-1820302529),
            (krypton.blaze(-1820303251)):krypton.blaze(-1820302733),
            (krypton.blaze(-1820303253)):krypton.blaze(-1820303117),
            (krypton.blaze(-1820303254)):krypton.blaze(-1820302684),
            (krypton.blaze(-1820303255)):krypton.blaze(-1820302369),
            (krypton.blaze(-1820303291)):krypton.blaze(-1820303052),
            (krypton.blaze(-1820303294)):krypton.blaze(-1820302740),
            (krypton.blaze(-1820303183)):krypton.blaze(-1820302351),
            (krypton.blaze(-1820303169)):krypton.blaze(-1820303094),
            (krypton.blaze(-1820303171)):krypton.blaze(-1820302764),
            (krypton.blaze(-1820303172)):krypton.blaze(-1820302747),
            (krypton.blaze(-1820303174)):krypton.blaze(-1820302739),
            (krypton.blaze(-1820303175)):krypton.blaze(-1820303341),
            (krypton.blaze(-1820303193)):krypton.blaze(-1820303308),
            (krypton.blaze(-1820303195)):krypton.blaze(-1820302386),
            (krypton.blaze(-1820303212)):krypton.blaze(-1820303059),
            (krypton.blaze(-1820303213)):krypton.blaze(-1820302655),
            (krypton.blaze(-1820303214)):krypton.blaze(-1820303233),
            (krypton.blaze(-1820303215)):krypton.blaze(-1820302517),
            (krypton.blaze(-1820303216)):krypton.blaze(-1820302773),
            (krypton.blaze(-1820303201)):krypton.blaze(-1820302425),
            (krypton.blaze(-1820303202)):krypton.blaze(-1820302795),
            (krypton.blaze(-1820303203)):krypton.blaze(-1820302469),
            (krypton.blaze(-1820303204)):"0",
            (krypton.blaze(-1820303206)):"1",
            (krypton.blaze(-1820303230)):"2",
            (krypton.blaze(-1820303231)):"3",
            (krypton.blaze(-1820303232)):"4",
            (krypton.blaze(-1820303218)):"5",
            (krypton.blaze(-1820303220)):"6",
            (krypton.blaze(-1820303221)):"7",
            (krypton.blaze(-1820303222)):"8",
            (krypton.blaze(-1820303113)):"9",
            (krypton.blaze(-1820303129)):"A",
            (krypton.blaze(-1820303131)):"B",
            (krypton.blaze(-1820303132)):"C",
            (krypton.blaze(-1820303133)):"D",
            (krypton.blaze(-1820303135)):"E",
            (krypton.blaze(-1820303125)):"F",
            (krypton.blaze(-1820303126)):"G",
            (krypton.blaze(-1820303127)):"H",
            (krypton.blaze(-1820303128)):"I",
            (krypton.blaze(-1820303145)):"J",
            (krypton.blaze(-1820303146)):"K",
            (krypton.blaze(-1820303147)):"L",
            (krypton.blaze(-1820303149)):"M",
            (krypton.blaze(-1820303150)):"N",
            (krypton.blaze(-1820303151)):"O",
            (krypton.blaze(-1820303161)):"P",
            (krypton.blaze(-1820303162)):"Q",
            (krypton.blaze(-1820303163)):"R",
            (krypton.blaze(-1820303164)):"S",
            (krypton.blaze(-1820303165)):"T",
            (krypton.blaze(-1820303168)):"U",
            (krypton.blaze(-1820303153)):"V",
            (krypton.blaze(-1820303154)):"W",
            (krypton.blaze(-1820303155)):"X",
            (krypton.blaze(-1820303157)):"Y",
            (krypton.blaze(-1820303048)):"Z",
            (krypton.blaze(-1820303065)):krypton.blaze(-1820303223),
            (krypton.blaze(-1820303066)):krypton.blaze(-1820302691),
            (krypton.blaze(-1820303067)):krypton.blaze(-1820302553),
            (krypton.blaze(-1820303068)):krypton.blaze(-1820303173),
            (krypton.blaze(-1820303070)):krypton.blaze(-1820303194),
            (krypton.blaze(-1820303071)):krypton.blaze(-1820303176),
            (krypton.blaze(-1820303072)):krypton.blaze(-1820303197),
            (krypton.blaze(-1820303358)):krypton.blaze(-1820303196),
            (krypton.blaze(-1820303360)):krypton.blaze(-1820303200),
            (krypton.blaze(-1820303345)):krypton.blaze(-1820303199),
            (krypton.blaze(-1820303346)):krypton.blaze(-1820303187),
            (krypton.blaze(-1820303347)):krypton.blaze(-1820303186),
            (krypton.blaze(-1820303348)):krypton.blaze(-1820303188),
            (krypton.blaze(-1820303349)):krypton.blaze(-1820302731),
            (krypton.blaze(-1820303351)):krypton.blaze(-1820302846),
            (krypton.blaze(-1820303352)):krypton.blaze(-1820302604),
            (krypton.blaze(-1820303241)):krypton.blaze(-1820303272),
            (krypton.blaze(-1820303248)):krypton.blaze(-1820302423),
            (krypton.blaze(-1820303234)):krypton.blaze(-1820302647),
            (krypton.blaze(-1820303235)):krypton.blaze(-1820302734),
            (krypton.blaze(-1820303237)):krypton.blaze(-1820302735),
            (krypton.blaze(-1820303238)):krypton.blaze(-1820302721),
            (krypton.blaze(-1820303239)):krypton.blaze(-1820302723),
            (krypton.blaze(-1820303240)):krypton.blaze(-1820302724),
            (krypton.blaze(-1820303257)):krypton.blaze(-1820302725),
            (krypton.blaze(-1820303258)):krypton.blaze(-1820302726),
            (krypton.blaze(-1820303259)):krypton.blaze(-1820302727),
            (krypton.blaze(-1820303277)):krypton.blaze(-1820302745),
            (krypton.blaze(-1820303278)):krypton.blaze(-1820302365),
            (krypton.blaze(-1820303279)):krypton.blaze(-1820302367),
            (krypton.blaze(-1820303280)):krypton.blaze(-1820302366),
            (krypton.blaze(-1820303265)):krypton.blaze(-1820302354),
            (krypton.blaze(-1820303266)):krypton.blaze(-1820302368),
            (krypton.blaze(-1820303267)):krypton.blaze(-1820302357),
            (krypton.blaze(-1820303268)):krypton.blaze(-1820302355),
            (krypton.blaze(-1820303270)):krypton.blaze(-1820302360),
            (krypton.blaze(-1820303271)):krypton.blaze(-1820302358),
            (krypton.blaze(-1820303296)):krypton.blaze(-1820302377),
            (krypton.blaze(-1820303281)):krypton.blaze(-1820302373),
            (krypton.blaze(-1820303283)):krypton.blaze(-1820302372),
            (krypton.blaze(-1820303285)):krypton.blaze(-1820302375),
            (krypton.blaze(-1820303286)):krypton.blaze(-1820302374),
            (krypton.blaze(-1820303288)):krypton.blaze(-1820302393),
            (krypton.blaze(-1820303178)):krypton.blaze(-1820302376),
            (krypton.blaze(-1820303179)):krypton.blaze(-1820302395),
            (krypton.blaze(-1820303180)):krypton.blaze(-1820302394),
            (krypton.blaze(-1820303181)):krypton.blaze(-1820302398),
            (krypton.blaze(-1820303189)):krypton.blaze(-1820302397),
            (krypton.blaze(-1820303190)):krypton.blaze(-1820302387),
            (krypton.blaze(-1820303191)):krypton.blaze(-1820302389),
            (krypton.blaze(-1820303192)):krypton.blaze(-1820302388),
            (krypton.blaze(-1820303210)):krypton.blaze(-1820302636),
            (krypton.blaze(-1820303211)):krypton.blaze(-1820303080),
            (krypton.blaze(-1820303119)):krypton.blaze(-1820303227),
            (krypton.blaze(-1820303120)):krypton.blaze(-1820303312),
            (krypton.blaze(-1820303107)):krypton.blaze(-1820302482),
            (krypton.blaze(-1820303122)):krypton.blaze(-1820302748),
            (krypton.blaze(-1820303124)):krypton.blaze(-1820302717),
            (krypton.blaze(-1820303139)):krypton.blaze(-1820303140),
            (krypton.blaze(-1820303141)):krypton.blaze(-1820303073),
            (krypton.blaze(-1820303142)):krypton.blaze(-1820302667),
            (krypton.blaze(-1820303143)):krypton.blaze(-1820302511),
            (krypton.blaze(-1820303160)):krypton.blaze(-1820303095),
            (krypton.blaze(-1820303049)):krypton.blaze(-1820303309),
            (krypton.blaze(-1820303050)):krypton.blaze(-1820302421),
            (krypton.blaze(-1820302719)):krypton.blaze(-1820302767),
            (krypton.blaze(-1820302710)):krypton.blaze(-1820302551),
            (krypton.blaze(-1820302712)):krypton.blaze(-1820302641),
            (krypton.blaze(-1820302602)):krypton.blaze(-1820303327)
         };
         super(param2);
         this.charlie185 = new delta186(this.echo187,5,2,krypton.blaze(-1820302462),-1,0);
         this.Config_tt(10,4,true,true,0,0,0.5,false);
         this.param1 = param1;
         this.callback = param3;
         this.cal2 = param4;
         addChild(this.echo187);
         param2.setChildIndex(this,param2.numChildren - 1);
         param1.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.gamma189);
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
      
      private function gamma189(param1:MouseEvent) : void
      {
         if(!visible)
         {
            x = this.param1.parent.mouseX + 0;
            y = this.param1.parent.mouseY + 25;
            visible = true;
            this.param1.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.hotel190);
            this.param1.stage.addEventListener(MouseEvent.CLICK,this.india191);
         }
         else
         {
            visible = false;
            this.param1.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.hotel190);
            this.param1.stage.removeEventListener(MouseEvent.CLICK,this.india191);
            this.callback.apply(this.cal2,[this.key_pressed]);
         }
      }
      
      private function hotel190(param1:KeyboardEvent) : void
      {
         if(this.keys_codes[param1.keyCode] == krypton.blaze(-1820302529))
         {
            return this.india191(null);
         }
         this.key_pressed = this.keys_codes[param1.keyCode];
         if(this.key_pressed == krypton.blaze(-1820302443))
         {
            this.key_pressed = null;
         }
         if(this.key_pressed)
         {
            this.charlie185.text = krypton.blaze(-1820302806) + this.key_pressed + krypton.blaze(-1820302404);
         }
         else
         {
            this.charlie185.text = krypton.blaze(-1820302462);
         }
      }
      
      private function india191(param1:MouseEvent) : void
      {
         if(param1.target != this.echo187 || param1 == null)
         {
            visible = false;
            this.param1.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.hotel190);
            this.param1.stage.removeEventListener(MouseEvent.CLICK,this.india191);
            this.callback.apply(this.cal2,[this.key_pressed]);
         }
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

