
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


package ChargeurTransformice_fla
{
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public class jupiter62
   {
       
      
      public var main_instance:echo31;
      
      public var keys_instance:Keys;
      
      public var phoenix68:Array;
      
      public var quasar69:Boolean;
      
      public var ranger70:Boolean;
      
      public var shadow71:Object = null;
      
      public var keys_codes:Object;
      
      public var shortcuts:Object;
      
      public function jupiter62()
      {
         this.main_instance = echo31.instance;
         this.keys_instance = this.main_instance.Keys;
         this.phoenix68 = new Array();
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
         this.shortcuts = {};
         super();
      }
      
      public function tiger72(param1:KeyboardEvent) : void
      {
         var _loc2_:Object = null;
         if(!this.main_instance.utopia73)
         {
            return;
         }
         if(param1.isDefaultPrevented())
         {
            return;
         }
         if(param1.keyLocation == 4)
         {
            return;
         }
         var _loc4_:uint = param1.keyCode;
         var _loc5_:String = String(this.keys_codes[_loc4_]);
         if(this.phoenix68.indexOf(_loc5_) < 0)
         {
            this.phoenix68.push(_loc5_);
         }
         if(this.main_instance.stage.focus is TextField && this.main_instance.stage.focus.type == TextFieldType.INPUT)
         {
            return;
         }
         if(_loc4_ == Keyboard.C)
         {
            if(this.main_instance.custom_emote)
            {
               this.main_instance.kilo37.send_emote(this.main_instance.selected_emote);
            }
         }
         switch(_loc4_)
         {
            case Keyboard.UP:
               if(!this.ranger70)
               {
                  this.quasar69 = true;
               }
               this.main_instance.moved = true;
               break;
            case Keyboard.Z:
               if(this.main_instance.french_layout)
               {
                  if(!this.quasar69)
                  {
                     this.ranger70 = true;
                  }
                  this.main_instance.moved = true;
               }
               break;
            case Keyboard.Q:
               if(this.main_instance.french_layout)
               {
                  this.main_instance.moved = true;
               }
               break;
            case Keyboard.W:
               if(!this.main_instance.french_layout)
               {
                  if(!this.quasar69)
                  {
                     this.ranger70 = true;
                  }
                  this.main_instance.moved = true;
               }
               break;
            case Keyboard.A:
               if(!this.main_instance.french_layout)
               {
                  this.main_instance.moved = true;
               }
               break;
            case Keyboard.D:
            case Keyboard.LEFT:
            case Keyboard.RIGHT:
            case Keyboard.S:
            case Keyboard.DOWN:
               this.main_instance.moved = true;
               if(this.main_instance.kilo37.current_timeout > -1)
               {
                  this.main_instance.kilo37.disable_auto_play();
               }
               break;
            case Keyboard.ESCAPE:
               if(this.main_instance.Interface)
               {
                  if(this.shadow71 == null)
                  {
                     this.main_instance.Interface.menu.krypton63();
                  }
               }
               break;
            case Keyboard.DELETE:
               if(this.main_instance.vortex74)
               {
                  this.main_instance.wraith75();
                  break;
               }
         }
         var _loc6_:String;
         if((_loc6_ = this.xenon76(this.phoenix68.join(" ").toUpperCase())) == this.keys_instance.sierra45)
         {
            if(!this.main_instance.Interface)
            {
               this.main_instance.Interface = new Interface();
            }
            this.main_instance.Interface.menu.maverick65();
            this.main_instance.Interface.menu.change_menu_tab(this.main_instance.Interface.menu.hawk60);
         }
         if(_loc6_ in this.shortcuts)
         {
            _loc2_ = this.shortcuts[_loc6_];
         }
         else if(_loc5_.toUpperCase() in this.shortcuts)
         {
            _loc2_ = this.shortcuts[_loc5_.toUpperCase()];
         }
         if(_loc2_)
         {
            if(_loc2_.name == krypton.blaze(-1820303322))
            {
               if(this.main_instance.change_room_ht)
               {
                  this.main_instance.yacht77 = (this.main_instance.yacht77 + 1) % this.main_instance.roomList.length;
                  this.main_instance.execute_command(krypton.blaze(-1820302683) + this.main_instance.roomList[this.main_instance.yacht77]);
               }
               return;
            }
            _loc2_.ui[this.keys_instance.check_button_exec](new MouseEvent(krypton.blaze(-1820302799)));
         }
      }
      
      public function zenith78(param1:KeyboardEvent) : void
      {
         if(!this.main_instance.utopia73)
         {
            return;
         }
         if(param1.keyLocation == 4)
         {
            return;
         }
         var _loc2_:uint = param1.keyCode;
         var _loc3_:String = String(this.keys_codes[_loc2_]);
         var _loc4_:int;
         if((_loc4_ = this.phoenix68.indexOf(_loc3_)) > -1)
         {
            this.phoenix68.splice(_loc4_,1);
         }
         if(_loc2_ == Keyboard.UP)
         {
            this.quasar69 = false;
         }
         else if(_loc2_ == Keyboard.W && !this.main_instance.french_layout)
         {
            this.ranger70 = false;
         }
         else if(_loc2_ == Keyboard.Z && this.main_instance.french_layout)
         {
            this.ranger70 = false;
         }
      }
      
      public function xenon76(param1:String) : String
      {
         if(!param1)
         {
            return undefined;
         }
         return param1.replace(new RegExp(krypton.blaze(-1820302463),krypton.blaze(-1820302979)),"");
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

