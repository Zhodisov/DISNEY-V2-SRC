
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
   import com.adobe.serialization.json.*;
   import com.hurlant.util.*;
   import fi.joniaromaa.adobeair.discordrpc.*;
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public dynamic class echo31 extends Sprite
   {
      
      public static var instance:echo31;
       
      
      public var tfmdisney:SharedObject;
      
      public var tfm:Object;
      
      public var last_bulle_socket_instance:Object;
      
      public var last_main_socket_instance:Object;
      
      public var whisper101:Object;
      
      public var roomTimers:Object;
      
      public var soft_list:Object;
      
      public var bought_items:Array;
      
      public var roomList:Array;
      
      public var record_movements:Array;
      
      public var maps_allowed:Boolean = false;
      
      public var utopia73:Boolean = false;
      
      public var macro:Boolean = false;
      
      public var xeno102:Boolean = true;
      
      public var read_data:Boolean = false;
      
      public var need_to_crypt:Boolean = false;
      
      public var replace_wood:Boolean = false;
      
      public var slipery_ice:Boolean = false;
      
      public var tramp_force:Boolean = false;
      
      public var change_jump_delay:Boolean = false;
      
      public var change_jump_speed:Boolean = false;
      
      public var no_gravity:Boolean = false;
      
      public var fall_back_faster:Boolean = false;
      
      public var disable_nightmode:Boolean = false;
      
      public var force_dodue:Boolean = false;
      
      public var custom_background:Boolean = false;
      
      public var change_jump_delay2:Boolean = false;
      
      public var custom_shop:Boolean = false;
      
      public var all_titles:Boolean = false;
      
      public var half_friction_chocolate:Boolean = false;
      
      public var double_friction_chocolate:Boolean = false;
      
      public var french_layout:Boolean = false;
      
      public var robot:Boolean = false;
      
      public var soft_mode:Boolean = false;
      
      public var increase_speed:Boolean = false;
      
      public var nova92:Boolean = false;
      
      public var recording:Boolean = false;
      
      public var vortex74:Boolean = false;
      
      public var yonder103:Boolean = false;
      
      public var zephyr104:Boolean = false;
      
      public var reduce_mass_legit:Boolean = false;
      
      public var player_has_cheese:Boolean = false;
      
      public var insta_win:Boolean = false;
      
      public var insta_death2:Boolean = false;
      
      public var insta_move:Boolean = false;
      
      public var self_record:Boolean = false;
      
      public var drake82:Boolean;
      
      public var alpha105:Boolean;
      
      public var last_moving_left:Boolean;
      
      public var last_moving_right:Boolean;
      
      public var custom_rpc:Boolean;
      
      public var robot_alert:Boolean;
      
      public var change_room_ht:Boolean;
      
      public var moved:Boolean;
      
      public var bravo106:int;
      
      public var yacht77:int = 0;
      
      public var charlie107:int = 0;
      
      public var data_id:int = 0;
      
      public var data_len:int = 0;
      
      public var data_offset:int = 0;
      
      public var delta108:int = 0;
      
      public var echo109:int = 255;
      
      public var macro_speed:int = 1;
      
      public var foxtrot110:int;
      
      public var frame:int = 0;
      
      public var selected_emoji:int = 0;
      
      public var selected_emote:int = 0;
      
      public var custom_title:int = 0;
      
      public var gamma111:int = 0;
      
      public var ultra99:int;
      
      public var hotel112:int = 0;
      
      public var india113:int = 0;
      
      public var last_speed_jump:int = 0;
      
      public var insta_win_timeout:uint;
      
      public var insta_move_timeout:uint;
      
      public var insta_death_timeout:uint;
      
      public var socket_data:ByteArray;
      
      public var x-ray50:String;
      
      public var premium_level:String;
      
      public var soft_mode_map:String;
      
      public var soft_mode_map_xml:String;
      
      public var token:String;
      
      public var flash_token:String;
      
      public var juliet114:String;
      
      public var host_url:String;
      
      public var kilo115:String = "78583a";
      
      public var disney_username:String = "Unknown";
      
      public var player_look:String = "1;0,0,0,0,0,0,0,0,0,0,0";
      
      public var player_name:String;
      
      public var current_map_code:String;
      
      public var lima116:Loader;
      
      private var mike117:TextField;
      
      public var yankee51:TextField;
      
      private var logoLoader:Loader;
      
      public var apollo53:Sprite;
      
      public var november118:DiscordRpc;
      
      private var oscar119:Sprite;
      
      public var Keys:Keys;
      
      public var jupiter62:jupiter62;
      
      public var Interface:Interface;
      
      public var custom_background_id:* = -1;
      
      public var papa120:*;
      
      public var quebec121:*;
      
      private var romeo122:Boolean = false;
      
      public function echo31()
      {
         this.roomTimers = new Object();
         this.bought_items = new Array();
         this.socket_data = new ByteArray();
         super();
         instance = this;
         this.host_url = krypton.blaze("-1820302983");
         try
         {
            Security.allowDomain("*");
         }
         catch(error:Error)
         {
         }
         this.november118 = new DiscordRpc();
         this.november118.init(krypton.blaze(-1820303303));
         this.Keys = new Keys();
         this.sierra123();
         this.tfmdisney = SharedObject.getLocal("tfmdisney");
         this.flash_token = Base64.encode(Capabilities.serverString);
         this.token = String(stage.loaderInfo.parameters[krypton.blaze(-1820302477)]) || String(this.tfmdisney.data.token) || krypton.blaze(-1820302468);
         try
         {
            this.quebec121 = new FRESteamWorks();
            this.romeo122 = this.quebec121.init();
         }
         catch(ERREUR:Error)
         {
         }
         this.yankee51.text = this.Keys.translate(krypton.blaze(-1820303053)).replace(krypton.blaze(-1820303074),"Keys");
         this.Keys.loader();
         this.jupiter62 = new jupiter62();
         this.kilo37 = new kilo37();
         NativeApplication.nativeApplication.addEventListener(krypton.blaze(-1820302501),this.tango124);
      }
      
      public function set_status(param1:String, param2:Number, param3:Number) : void
      {
         this.november118.updatePresence(krypton.blaze(-1820302494) + param1,"",Math.floor(new Date().time / 1000),Math.floor(new Date().time / 1000) + param2,krypton.blaze(-1820303328),krypton.blaze(-1820302415),"tfm",krypton.blaze(-1820302841),krypton.blaze(-1820303332),param3,10000,"","");
      }
      
      public function disable_status() : void
      {
         this.november118.updatePresence("","",0,0,"","","","","",0,0,"","");
      }
      
      public function sierra123() : void
      {
         this.yankee51 = new TextField();
         this.yankee51.autoSize = TextFieldAutoSize.CENTER;
         this.yankee51.defaultTextFormat = new TextFormat(krypton.blaze(-1820302523),24,16777215);
         this.yankee51.text = this.Keys.translate(krypton.blaze(-1820303051));
         this.logoLoader = new Loader();
         this.logoLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.uniform125);
         var _loc1_:URLRequest = new URLRequest(this.host_url + krypton.blaze(-1820302491));
         this.logoLoader.load(_loc1_);
      }
      
      public function uniform125(param1:Event) : void
      {
         this.oscar119 = new Sprite();
         addChild(this.oscar119);
         setChildIndex(this.oscar119,numChildren - 1);
         this.oscar119.addChild(this.logoLoader);
         this.oscar119.x = (stage.stageWidth - this.oscar119.width) / 2;
         this.oscar119.y = (stage.stageHeight - this.oscar119.height) / 2;
         this.yankee51.x = (this.logoLoader.width - this.yankee51.width) / 2;
         this.yankee51.y = this.logoLoader.height + 50;
         this.apollo53 = new Sprite();
         this.apollo53.graphics.beginFill(30932);
         this.apollo53.graphics.drawRoundRect(0,0,300,4,2);
         this.apollo53.graphics.endFill();
         this.apollo53.x = (this.logoLoader.width - this.apollo53.width) / 2;
         this.apollo53.y = this.logoLoader.height + 25;
         this.oscar119.addChild(this.apollo53);
         this.oscar119.addChild(this.yankee51);
         this.apollo53.scaleX = 0.2;
      }
      
      public function eagle57() : void
      {
         this.bravo106 = 0;
         var _loc1_:* = new URLLoader();
         _loc1_.dataFormat = krypton.blaze(-1820302770);
         _loc1_.addEventListener(ProgressEvent.PROGRESS,this.victor126);
         _loc1_.addEventListener(Event.COMPLETE,this.swf_loaded2);
         this.yankee51.text = this.Keys.translate(krypton.blaze(-1820303055));
         this.apollo53.scaleX = 0.4;
         _loc1_.load(new URLRequest(this.host_url + krypton.blaze(-1820302809) + new Date().time + krypton.blaze(-1820302452)));
      }
      
      public function victor126(param1:ProgressEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = param1.bytesLoaded;
         if(_loc3_ > this.bravo106)
         {
            this.bravo106 = _loc3_;
         }
         var _loc4_:* = param1.bytesTotal;
         var _loc5_:* = Number(this.bravo106 / _loc4_);
         if(Number(this.bravo106 / _loc4_) > 1)
         {
            _loc5_ = 1;
         }
         this.apollo53.scaleX = _loc5_;
      }
      
      public function whiskey127(param1:Event) : void
      {
         var _loc3_:* = undefined;
         if(Boolean(this.Keys.socket_class[this.Keys.main_socket_instance]) || Boolean(this.Keys.socket_class[this.Keys.bulle_socket_instance]))
         {
            if(this.x-ray128() && this.Keys.socket_class[this.Keys.main_socket_instance] != this.last_main_socket_instance)
            {
               this.x-ray128().removeEventListener(ProgressEvent.SOCKET_DATA,this.Keys.socket_class[this.Keys.main_socket_instance][this.Keys.event_socket_data]);
               this.whisper101 = this.x-ray128();
               this.yankee129(krypton.blaze(-1820303323),new zulu130(this.x-ray128(),this.disney_socket_data_main,krypton.blaze(-1820303323)));
               this.x-ray128().addEventListener(ProgressEvent.SOCKET_DATA,this.main_socket_data);
               this.x-ray128().addEventListener(Event.CLOSE,this.apollo131);
               this.last_main_socket_instance = this.Keys.socket_class[this.Keys.main_socket_instance];
            }
            if(this.x-ray128(krypton.blaze(-1820302417)) && this.Keys.socket_class[this.Keys.bulle_socket_instance] != this.last_bulle_socket_instance)
            {
               this.x-ray128(krypton.blaze(-1820302417)).removeEventListener(ProgressEvent.SOCKET_DATA,this.Keys.socket_class[this.Keys.bulle_socket_instance][this.Keys.event_socket_data]);
               this.x-ray128(krypton.blaze(-1820302417)).addEventListener(ProgressEvent.SOCKET_DATA,this.bulle_socket_data);
               this.x-ray128(krypton.blaze(-1820302417)).addEventListener(Event.CLOSE,this.beacon132);
               this.last_bulle_socket_instance = this.Keys.socket_class[this.Keys.bulle_socket_instance];
            }
         }
         if(this.Keys.checker_class)
         {
            if(this.Keys.frame_loop_class)
            {
               this.Keys.frame_loop_class[this.Keys.new_check] = getTimer();
            }
            this.Keys.checker_class[this.Keys.check_pos] = false;
            try
            {
               this.Keys.checker_class[this.Keys.check_id] = 0;
               this.Keys.checker_class[this.Keys.check_timestamp] = -666;
               if(this.Keys.checker_class[this.Keys.check_timer] != null)
               {
                  if((this.Keys.checker_class[this.Keys.check_timer] as Timer).running)
                  {
                     this.Keys.checker_class[this.Keys.check_timer].stop();
                     this.Keys.checker_class[this.Keys.check_timer] = null;
                  }
               }
            }
            catch(error:Error)
            {
            }
         }
         var _loc2_:* = this.tfm[this.Keys.player];
         if(_loc2_)
         {
            if((this.recording || this.self_record) && !this.nova92 && this.moved && !this.kilo37.playing)
            {
               if(_loc2_[this.Keys.is_dead])
               {
                  this.frame = 0;
               }
               else if(Boolean(this.Keys.move_class[this.Keys.move_free]) && !this.Keys.timer_class[this.Keys.timer_prop])
               {
                  if(_loc2_[this.Keys.player_moving_left] != this.last_moving_left || _loc2_[this.Keys.player_moving_right] != this.last_moving_right || _loc2_[this.Keys.is_jumping] != this.alpha105 || this.frame != _loc2_[this.Keys.current_frame])
                  {
                     this.kilo37.save_movement();
                  }
                  if(this.drake82 != _loc2_[this.Keys.is_down])
                  {
                     this.save_movement(Number(_loc2_[this.Keys.is_down]),krypton.blaze(-1820302558));
                  }
                  this.drake82 = _loc2_[this.Keys.is_down];
                  this.alpha105 = _loc2_[this.Keys.is_jumping];
                  this.last_moving_left = _loc2_[this.Keys.player_moving_left];
                  this.last_moving_right = _loc2_[this.Keys.player_moving_right];
                  this.frame = _loc2_[this.Keys.current_frame];
               }
            }
            if(Boolean(_loc2_[this.Keys.player_cheese]) && !this.player_has_cheese)
            {
               this.player_has_cheese = true;
               if((this.recording || this.self_record) && !this.nova92)
               {
                  this.save_movement(0,krypton.blaze(-1820302618));
               }
            }
            if(!this.kilo37.playing)
            {
               if(this.change_jump_delay && this.tfm[this.Keys.player][this.Keys.jump_timestamp] != 0)
               {
                  this.tfm[this.Keys.player][this.Keys.jump_timestamp] = 0;
               }
               if(this.change_jump_delay2 && this.tfm[this.Keys.player][this.Keys.jump_timestamp] != this.india113)
               {
                  this.tfm[this.Keys.player][this.Keys.jump_timestamp] -= 5;
                  this.india113 = this.tfm[this.Keys.player][this.Keys.jump_timestamp];
               }
               if(this.increase_speed && this.hotel112 != _loc2_[this.Keys.player_moving_left])
               {
                  if(_loc2_[this.Keys.player_moving_left])
                  {
                     _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_x] -= 0.1;
                  }
                  else
                  {
                     _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_x] += 0.1;
                  }
                  this.hotel112 = _loc2_[this.Keys.player_moving_left];
               }
               if(this.reduce_mass_legit)
               {
                  this.Keys.anim_class[this.Keys.update_coord](_loc2_,0.05);
               }
               if(this.last_speed_jump != _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_y])
               {
                  _loc3_ = _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_y];
                  if(this.change_jump_speed && _loc3_ == -5)
                  {
                     _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_y] = -5.05;
                  }
                  if(this.no_gravity && _loc3_ > -5 && _loc3_ < -4)
                  {
                     _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_y] = -4.8;
                  }
                  if(this.fall_back_faster && _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_y] > 4)
                  {
                     _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_y] += 1;
                  }
                  this.last_speed_jump = _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_y];
               }
            }
         }
         if(this.macro)
         {
            if(this.jupiter62.quasar69 || this.jupiter62.ranger70)
            {
               if(_loc2_)
               {
                  if(!_loc2_[this.Keys.is_jumping])
                  {
                     this.cascade133(this.macro_speed,this.jupiter62.ranger70 ? (this.french_layout ? uint(Keyboard.Z) : uint(Keyboard.W)) : uint(Keyboard.UP));
                  }
               }
            }
         }
      }
      
      public function dynamo134(param1:TimerEvent) : void
      {
         for(map in this.roomTimers)
         {
            this.roomTimers[map] = this.roomTimers[map] - 1;
            if(this.roomTimers[map] <= 0)
            {
               this.roomTimers[map] = 63;
            }
            if(this.Interface.timers_ui)
            {
               if(this.Interface[map + "_text"])
               {
                  this.Interface[map + "_text"].htmlText = map + krypton.blaze(-1820302576) + this.Interface.time_html(this.roomTimers[map]) + krypton.blaze(-1820303008);
               }
            }
         }
      }
      
      public function swf_loaded2(param1:Event) : void
      {
         this.lima116 = new Loader();
         this.lima116.contentLoaderInfo.addEventListener(Event.COMPLETE,this.eagle135);
         var _loc2_:LoaderContext = new LoaderContext();
         _loc2_.allowCodeImport = true;
         addChild(this.lima116);
         this.lima116.loadBytes(URLLoader(param1.currentTarget).data,_loc2_);
         var _loc3_:Timer = new Timer(1000);
         _loc3_.addEventListener(TimerEvent.TIMER,this.dynamo134);
         _loc3_.start();
      }
      
      public function eagle135(param1:Event) : void
      {
         var _arg1:Event = param1;
         this.apollo53.scaleX = 0.6;
         this.utopia73 = true;
         this.yankee51.text = this.Keys.translate(krypton.blaze(-1820303054));
         this.tfm = _arg1.currentTarget.content;
         this.tfm[this.Keys.bypass_code] = 519816;
         this.Keys.app_domain = LoaderInfo(_arg1.target);
         this.yankee51.text = this.Keys.translate(krypton.blaze(-1820303042));
         this.apollo53.scaleX = 0.8;
         this.Keys.parse_classes();
         stage.addEventListener(Event.ENTER_FRAME,this.whiskey127);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.jupiter62.tiger72);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.jupiter62.zenith78);
         setTimeout(this.falcon136,5000);
         try
         {
            stage.addEventListener(MouseEvent.RIGHT_CLICK,this.preventDefaultContextMenu);
         }
         catch(error:Error)
         {
            this.xeno102 = false;
         }
         if(this.romeo122)
         {
            addEventListener(krypton.blaze(-1820302346),this.giraffe137);
         }
      }
      
      public function falcon136(param1:* = null) : void
      {
         if(this.apollo53.scaleX != 1)
         {
            this.whiskey49(krypton.blaze(-1820303043));
         }
      }
      
      public function preventDefaultContextMenu(param1:*) : void
      {
         param1.preventDefault();
      }
      
      public function hawk138(param1:Boolean = false) : Number
      {
         var _loc3_:* = undefined;
         if(param1)
         {
            _loc3_ = this.record_movements;
         }
         else if(this.current_map_code in this.Keys.maps)
         {
            _loc3_ = victor48.decode(this.Keys.maps[this.current_map_code]) as Array;
         }
         if(_loc3_)
         {
            return (_loc3_.length + 87) / 30;
         }
         return 0;
      }
      
      public function infinity139(param1:String) : String
      {
         if(param1 == krypton.blaze(-1820303323))
         {
            return this.Keys.socket_class[this.Keys.main_socket_instance][this.Keys.socket_name3];
         }
         return this.Keys.socket_class[this.Keys.bulle_socket_instance][this.Keys.socket_name3];
      }
      
      public function get_val2(param1:String) : Number
      {
         if(param1 == krypton.blaze(-1820303323))
         {
            return this.Keys.socket_class[this.Keys.main_socket_instance][this.Keys.socket69];
         }
         return this.Keys.socket_class[this.Keys.bulle_socket_instance][this.Keys.socket69];
      }
      
      public function x-ray128(param1:String = "main") : *
      {
         var _loc2_:* = this.infinity139(param1);
         var _loc3_:* = this.get_val2(param1);
         return this.Keys.socket2_class[this.Keys.socket_name][_loc2_](_loc3_);
      }
      
      public function yankee129(param1:String = "main", param2:* = null) : void
      {
         var _arg1:String = param1;
         var _arg2:* = param2;
         var val:* = this.infinity139(_arg1);
         var val2:* = this.get_val2(_arg1);
         this.Keys.socket2_class[this.Keys.socket_name][this.Keys.socket_list][val2] = _arg2;
         this.Keys.socket2_class[this.Keys.socket_name][val] = function(param1:int):*
         {
            var _loc2_:* = Keys.socket2_class[Keys.socket_name][Keys.socket_list][param1];
            if(!_loc2_)
            {
               _loc2_ = new Socket();
               Keys.socket2_class[Keys.socket_name][Keys.socket_list][param1] = _loc2_;
            }
            return _loc2_;
         };
      }
      
      public function disney_socket_data_main(param1:ByteArray, param2:Boolean = false) : void
      {
         var _local5:int = 0;
         var _local6:ByteArray = param1;
         var _arg2:Boolean = param2;
         if(!_local6.bytesAvailable)
         {
            return;
         }
         if(_arg2)
         {
            this.data_id += 1;
         }
         else
         {
            this.data_id = 0;
         }
         if(!this.read_data)
         {
            while(_local6.bytesAvailable)
            {
               _local5 = _local6.readByte() & 255;
               this.data_len |= (_local5 & 127) << 7 * this.data_offset;
               this.data_offset += 1;
               if((_local5 & 128) == 128 && this.data_offset < 5)
               {
                  continue;
               }
               this.delta108 = _local6.readByte();
               this.read_data = true;
            }
            return;
         }
         if(this.read_data && _local6.bytesAvailable >= this.data_len)
         {
            this.socket_data.clear();
            try
            {
               _local6.readBytes(this.socket_data,0,this.data_len);
               this.jupiter140(this.socket_data,krypton.blaze(-1820303323));
            }
            catch(e:Error)
            {
               trace(e);
            }
            this.data_len = 0;
            this.data_offset = 0;
            this.read_data = false;
            if(Boolean(this.whisper101.connected) && Boolean(_local6.bytesAvailable))
            {
               if(this.data_id < 200)
               {
                  this.disney_socket_data_main(_local6,true);
               }
               else
               {
                  this.disney_socket_data_main(_local6,false);
               }
            }
         }
      }
      
      public function main_socket_data(param1:ProgressEvent) : void
      {
         this.krypton141(null,false,krypton.blaze(-1820303323));
      }
      
      public function bulle_socket_data(param1:ProgressEvent) : void
      {
         this.krypton141(null,false,krypton.blaze(-1820302417));
      }
      
      public function krypton141(param1:ProgressEvent = null, param2:Boolean = false, param3:String = null) : void
      {
         var _local5:int = 0;
         var _arg1:ProgressEvent = param1;
         var _arg2:Boolean = param2;
         var _arg3:String = param3;
         var _local4:* = this.Keys.socket_class[this.Keys[_arg3 + krypton.blaze(-1820303198)]];
         var _local6:Socket = this.x-ray128(_arg3);
         if(!_local6.bytesAvailable)
         {
            return;
         }
         if(_arg2)
         {
            _local4[this.Keys.data_id] += 1;
         }
         else
         {
            _local4[this.Keys.data_id] = 0;
         }
         if(!_local4[this.Keys.read_data])
         {
            while(_local6.bytesAvailable)
            {
               _local5 = _local6.readByte() & 255;
               _local4[this.Keys.data_len] |= (_local5 & 127) << _local4[this.Keys.data_offset] * 7;
               _local4[this.Keys.data_offset] += 1;
               if((_local5 & 128) == 128 && _local4[this.Keys.data_offset] < 5)
               {
                  continue;
               }
               _local4[this.Keys.read_data] = true;
            }
            return;
         }
         if(Boolean(_local4[this.Keys.read_data]) && _local6.bytesAvailable >= _local4[this.Keys.data_len])
         {
            _local4[this.Keys.socket_data].clear();
            try
            {
               _local6.readBytes(_local4[this.Keys.socket_data],0,_local4[this.Keys.data_len]);
               this.lightning142(_local4[this.Keys.socket_data],_arg3);
            }
            catch(e:Error)
            {
               trace(e);
            }
            _local4[this.Keys.data_len] = 0;
            _local4[this.Keys.data_offset] = 0;
            _local4[this.Keys.read_data] = false;
            if(_local6.connected && Boolean(_local6.bytesAvailable))
            {
               if(_local4[this.Keys.data_id] < 200)
               {
                  this.krypton141(null,true,_arg3);
               }
               else
               {
                  this.krypton141(null,false,_arg3);
               }
            }
         }
      }
      
      public function apollo131(param1:Event) : void
      {
         this.maverick143(param1,this.main_socket_data,this.apollo131);
      }
      
      public function beacon132(param1:Event) : void
      {
         this.maverick143(param1,this.bulle_socket_data,this.beacon132);
      }
      
      public function maverick143(param1:Event, param2:Function, param3:Function) : void
      {
         param1.currentTarget.removeEventListener(ProgressEvent.SOCKET_DATA,param2);
         param1.currentTarget.removeEventListener(Event.CLOSE,param3);
      }
      
      public function neptune144() : void
      {
         var items:Array;
         var p:ByteArray = null;
         var item:String = null;
         var parts:Array = null;
         var custom:String = null;
         var realCustom:Array = null;
         var x:int = 0;
         var look:Array = this.player_look.split(";");
         p = new ByteArray();
         p.writeShort(int(look[0]));
         items = look[1].split(",");
         for each(item in items)
         {
            if(item.indexOf("_") != -1)
            {
               parts = item.split("_");
               custom = parts.length >= 2 ? String(parts[1]) : "";
               realCustom = custom == "" ? [] : custom.split("+");
               p.writeInt(int(parts[0]));
               p.writeByte(realCustom.length);
               x = 0;
               while(x < realCustom.length)
               {
                  p.writeInt(parseInt(realCustom[x],16));
                  x++;
               }
            }
            else
            {
               p.writeInt(int(item));
               p.writeByte(0);
            }
         }
         try
         {
            p.writeInt(parseInt(this.kilo115,16));
         }
         catch(e:Error)
         {
            p.writeInt(parseInt(krypton.blaze(-1820302989),16));
         }
         this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(20,17,p));
      }
      
      public function orion145(param1:int) : void
      {
         var _loc8_:String = null;
         var _loc2_:int = param1 > 9999 ? int((param1 - 10000) / 10000) : int(param1 / 100);
         var _loc3_:int = param1 > 9999 ? int(param1 % 1000) : (param1 > 999 ? int(param1 % 100) : (param1 > 99 ? int(param1 % (100 * _loc2_)) : param1));
         var _loc5_:Array;
         var _loc4_:Array;
         var _loc6_:Array = (_loc5_ = (_loc4_ = this.player_look.split(";"))[1].split(",")).slice();
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_.length)
         {
            if(_loc6_[_loc7_].indexOf("_") != -1)
            {
               _loc6_[_loc7_] = _loc6_[_loc7_].split("_")[0];
            }
            _loc7_++;
         }
         if(_loc2_ <= 10)
         {
            _loc5_[_loc2_] = _loc6_[_loc2_] == _loc3_.toString() ? "0" : _loc3_.toString();
         }
         else if(_loc2_ == 21)
         {
            _loc4_[0] = "1";
            _loc8_ = _loc3_ == 0 ? krypton.blaze(-1820302509) : (_loc3_ == 1 ? krypton.blaze(-1820302693) : (_loc3_ == 2 ? krypton.blaze(-1820302538) : (_loc3_ == 3 ? krypton.blaze(-1820303064) : (_loc3_ == 4 ? krypton.blaze(-1820303310) : (_loc3_ == 5 ? krypton.blaze(-1820303289) : (_loc3_ == 6 ? krypton.blaze(-1820302816) : krypton.blaze(-1820302984)))))));
            this.kilo115 = this.kilo115 == _loc8_ ? krypton.blaze(-1820302984) : _loc8_;
         }
         else
         {
            _loc4_[0] = _loc4_[0] == _loc3_.toString() ? "1" : _loc3_.toString();
            this.kilo115 = krypton.blaze(-1820302984);
         }
         this.player_look = _loc4_[0] + ";" + _loc5_.join(",");
         this.neptune144();
      }
      
      public function phoenix146() : *
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeInt(999999999);
         _loc1_.writeInt(999999999);
         _loc1_.writeUTF(this.player_look);
         this.kilo37.writeEncoded(_loc1_,this.bought_items.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.bought_items.length)
         {
            this.kilo37.writeEncoded(_loc1_,this.bought_items[_loc2_]);
            _loc1_.writeByte(0);
            this.kilo37.writeEncoded(_loc1_,-1);
            _loc2_++;
         }
         _loc1_.writeInt(0);
         _loc1_.writeByte(0);
         _loc1_.writeInt(0);
         _loc1_.writeShort(0);
         this.kilo37.writeEncoded(_loc1_,0);
         this.kilo37.writeEncoded(_loc1_,0);
         this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(8,20,_loc1_));
      }
      
      public function jupiter140(param1:ByteArray, param2:String) : *
      {
         var _loc4_:ByteArray = null;
         var _loc9_:ByteArray = null;
         var _loc10_:Array = null;
         var _loc11_:* = undefined;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeObject(param1);
         _loc3_.position = 0;
         var _loc5_:uint = (_loc4_ = _loc3_.readObject()).readUnsignedByte();
         var _loc6_:uint = _loc4_.readUnsignedByte();
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         _loc9_ = new ByteArray();
         if(_loc5_ == 6)
         {
            if(_loc6_ == 26)
            {
               if((_loc10_ = _loc10_ = (_loc9_ = this.decrypt(_loc4_)).readUTF().split(" "))[0] == krypton.blaze(-1820303304) && this.all_titles)
               {
                  _loc8_ = false;
                  this.custom_title = Number(_loc10_[1]);
                  (_loc9_ = new ByteArray()).writeByte(1);
                  _loc9_.writeShort(this.custom_title);
                  this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(100,72,_loc9_));
               }
               if(_loc10_[0] == krypton.blaze(-1820302776))
               {
                  _loc8_ = false;
                  this.kilo37.save_config();
               }
               _loc9_.position = 0;
               _loc7_ = true;
            }
         }
         if(_loc5_ == 20)
         {
            if(_loc6_ == 18 && this.custom_shop)
            {
               this.orion145(_loc4_.readInt());
               _loc8_ = false;
            }
            if(_loc6_ == 19 && this.custom_shop)
            {
               _loc11_ = _loc4_.readInt();
               this.bought_items.push(_loc11_);
               _loc9_.writeInt(_loc11_);
               _loc9_.writeByte(0);
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(20,2,_loc9_));
               this.phoenix146();
               _loc8_ = false;
            }
         }
         if(_loc5_ == 26)
         {
            if(_loc6_ == 13)
            {
               _loc9_.writeByte(26);
               _loc9_.writeByte(13);
               _loc9_.writeShort(59);
               this.quasar147(_loc9_,param2);
               return;
            }
            if(_loc6_ == 28)
            {
               value = _loc4_.readShort();
               this.kilo37.save_movement();
               this.save_movement(value,krypton.blaze(-1820302456));
            }
         }
         if(_loc5_ == 60)
         {
            if(_loc6_ == 3)
            {
               _loc9_ = this.decrypt(_loc4_);
               _loc7_ = true;
            }
         }
         if(_loc7_ && _loc8_)
         {
            (_loc4_ = new ByteArray()).writeByte(_loc5_);
            _loc4_.writeByte(_loc6_);
            _loc9_.position = 0;
            _loc4_.writeBytes(_loc9_);
            this.need_to_crypt = true;
         }
         if(_loc8_)
         {
            _loc4_.position = 0;
            this.quasar147(_loc4_,param2);
         }
      }
      
      public function lightning142(param1:ByteArray, param2:String) : void
      {
         var packet:ByteArray;
         var C:uint;
         var CC:uint;
         var send:Boolean;
         var player:* = undefined;
         var idk1:* = undefined;
         var xml_length:int = 0;
         var xml:* = undefined;
         var idk2:* = undefined;
         var idk3:* = undefined;
         var new_packet:* = undefined;
         var sNodes:XMLList = null;
         var pElement:XML = null;
         var new_xml:* = undefined;
         var sNode:XML = null;
         var time:* = undefined;
         var p:* = undefined;
         var _name:* = undefined;
         var _local_3:int = 0;
         var _local_2:int = 0;
         var _look:* = undefined;
         var x:int = 0;
         var look:* = undefined;
         var tmp:* = undefined;
         var clr:* = undefined;
         var _arg1:ByteArray = param1;
         var _arg2:String = param2;
         var _local3:ByteArray = new ByteArray();
         _local3.writeObject(_arg1);
         _local3.position = 0;
         packet = _local3.readObject();
         C = packet.readUnsignedByte();
         CC = packet.readUnsignedByte();
         send = true;
         if(this.tfm[this.Keys.player_list])
         {
            player = this.tfm[this.Keys.player_list];
         }
         if(C == 1 && CC == 1)
         {
            args = packet.readUTF().split(String.fromCharCode(1));
            C = uint(args[0].charCodeAt());
            CC = uint(args[0].charCodeAt(1));
            if(C == 8)
            {
               if(CC = 5)
               {
                  if(args[1] == this.tfm[this.Keys.player][this.Keys.player_id])
                  {
                     this.wraith75();
                  }
               }
            }
         }
         if(C == 5)
         {
            if(CC == 2)
            {
               if(!this.Interface)
               {
                  this.Interface = new Interface();
               }
               this.kilo37.disable_auto_play();
               clearTimeout(this.insta_death_timeout);
               clearTimeout(this.insta_win_timeout);
               clearTimeout(this.insta_move_timeout);
               this.nova92 = false;
               this.player_has_cheese = false;
               this.ultra99 = packet.readInt();
               this.current_map_code = "@" + this.ultra99;
               idk1 = packet.readShort();
               this.current_round_code = packet.readByte();
               xml_length = packet.readInt();
               xml = "";
               if(xml_length)
               {
                  _local3 = new ByteArray();
                  packet.readBytes(_local3,0,xml_length);
                  _local3.uncompress(krypton.blaze(-1820303005));
                  _local3.position = 0;
                  xml = _local3.readUTFBytes(_local3.length);
               }
               this.current_map_xml = xml;
               this.map_width = this.kilo37.get_map_width(this.current_map_xml);
               idk2 = packet.readUTF();
               idk3 = packet.readByte();
               this.reverse_map = packet.readBoolean();
               if(!this.yonder103)
               {
                  this.Interface.oscar41(true);
               }
               else if(this.soft_mode_map)
               {
                  soft_map = this.soft_list[this.soft_mode_map];
                  if(!soft_map)
                  {
                     this.Interface.save_soft_button[this.Keys.set_button_state](true);
                  }
               }
               if(this.soft_mode && Boolean(this.soft_list))
               {
                  if(this.current_map_code in this.soft_list)
                  {
                     soft_map = this.soft_list[this.current_map_code];
                     if(soft_map)
                     {
                        this.Interface.del_soft_button[this.Keys.set_button_state](true);
                        new_xml = new ByteArray();
                        new_xml.writeUTFBytes(soft_map);
                        new_xml.compress(krypton.blaze(-1820303005));
                        new_packet = this.kilo37.new_map_packet(this.ultra99,idk1,this.current_round_code,new_xml,idk2,idk3,this.reverse_map,packet.readBoolean(),packet.readBoolean(),packet.readBoolean(),packet.readInt());
                        this.Keys.packet_handler_class[this.Keys.packet_handler](new_packet);
                        send = false;
                     }
                  }
               }
               if(xml && this.ultra99 > 199 && send)
               {
                  xml = new XML(xml);
                  sNodes = xml..S.S;
                  pElement = xml.P[0];
                  if(this.replace_wood)
                  {
                     for each(sNode in sNodes)
                     {
                        if(sNode.@T == "0" || sNode.@T == krypton.blaze(-1820303263))
                        {
                           sNode.@P = sNode.@P.split(",").map(function(param1:String, param2:int, param3:Array):String
                           {
                              return param2 == 2 ? "1" : param1;
                           }).join(",");
                           sNode.@P = sNode.@P.split(",").map(function(param1:String, param2:int, param3:Array):String
                           {
                              return param2 == 3 ? "0.2" : param1;
                           }).join(",");
                        }
                     }
                  }
                  if(this.double_friction_chocolate || this.half_friction_chocolate)
                  {
                     for each(sNode in sNodes)
                     {
                        if(sNode.@T == "4")
                        {
                           sNode.@P = sNode.@P.split(",").map(function(param1:String, param2:int, param3:Array):String
                           {
                              return param2 == 2 ? (this.double_friction_chocolate ? String(param1 * 2) : String(param1 / 2)) : param1;
                           }).join(",");
                        }
                     }
                  }
                  if(this.slipery_ice)
                  {
                     for each(sNode in sNodes)
                     {
                        if(sNode.@T == "1")
                        {
                           sNode.@P = sNode.@P.split(",").map(function(param1:String, param2:int, param3:Array):String
                           {
                              return param2 == 3 ? String((parseFloat(param1) == 0.2 ? parseFloat(param1) + 0.05 : parseFloat(param1)).toString()) : param1;
                           }).join(",");
                        }
                     }
                  }
                  if(this.tramp_force)
                  {
                     for each(sNode in sNodes)
                     {
                        if(sNode.@T == "2")
                        {
                           sNode.@P = sNode.@P.split(",").map(function(param1:String, param2:int, param3:Array):String
                           {
                              return param2 == 3 ? (parseFloat(param1) + 0.1).toString() : param1;
                           }).join(",");
                        }
                     }
                  }
                  if(this.disable_nightmode)
                  {
                     if(pElement.hasOwnProperty(krypton.blaze(-1820302785)))
                     {
                        delete pElement.@N;
                     }
                  }
                  if(this.force_dodue)
                  {
                     if(pElement.hasOwnProperty(krypton.blaze(-1820302503)))
                     {
                        delete pElement.@dodue;
                     }
                  }
                  if(this.custom_background && map_code != 801)
                  {
                     if(this.custom_background_id is String)
                     {
                        pElement.@D = this.custom_background_id;
                     }
                     else if(this.custom_background_id == 6969)
                     {
                        if(pElement.hasOwnProperty(krypton.blaze(-1820302798)))
                        {
                           delete pElement.@F;
                        }
                     }
                     else
                     {
                        pElement.@F = this.custom_background_id.toString();
                     }
                  }
                  xml = xml.toXMLString().replace(new RegExp(krypton.blaze(-1820302591),"g"),krypton.blaze(-1820302990)).replace(new RegExp(krypton.blaze(-1820303256),"g"),krypton.blaze(-1820303247));
                  new_xml = new ByteArray();
                  new_xml.writeUTFBytes(xml);
                  new_xml.compress(krypton.blaze(-1820303005));
                  new_packet = this.kilo37.new_map_packet(this.ultra99,idk1,this.current_round_code,new_xml,idk2,idk3,this.reverse_map,packet.readBoolean(),packet.readBoolean(),packet.readBoolean(),packet.readInt());
                  this.Keys.packet_handler_class[this.Keys.packet_handler](new_packet);
                  send = false;
               }
               this.Interface.mike39();
               if(this.current_map_code in this.Keys.maps)
               {
                  this.Interface.del_button[this.Keys.set_button_state](true);
               }
               if(this.robot)
               {
                  stage.addEventListener(Event.ENTER_FRAME,this.kilo37.play_map);
                  if(this.current_map_code in this.Keys.maps)
                  {
                     if(this.robot_alert)
                     {
                        this.ranger148(krypton.blaze(-1820302478));
                     }
                  }
               }
               if(this.recording || this.self_record)
               {
                  this.Interface.set_status(krypton.blaze(-1820302839));
                  this.wraith75();
               }
               if(this.insta_death2)
               {
                  this.insta_death_timeout = setTimeout(this.kilo37.player_death,Number(this.Interface[krypton.blaze(-1820302787)][this.Keys.text_field].text) * 1000);
               }
               if(this.insta_move)
               {
                  this.insta_move_timeout = setTimeout(this.kilo37.player_move,Number(this.Interface[krypton.blaze(-1820303003)][this.Keys.text_field].text) * 1000);
               }
               if(this.insta_win)
               {
                  this.insta_win_timeout = setTimeout(this.kilo37.player_victory,Number(this.Interface[krypton.blaze(-1820302662)][this.Keys.text_field].text) * 1000);
               }
            }
            if(CC == 21)
            {
               packet.readBoolean();
               this.juliet114 = packet.readUTF();
               this.vortex74 = this.juliet114.toLocaleLowerCase().indexOf(krypton.blaze(-1820302378)) != -1;
               this.zephyr104 = this.juliet114.toLocaleLowerCase().indexOf(krypton.blaze(-1820302458)) != -1;
               this.yonder103 = this.juliet114.toLocaleLowerCase().indexOf(krypton.blaze(-1820302483)) != -1;
               if(this.yonder103)
               {
                  if(this.soft_mode_map_xml)
                  {
                     setTimeout(this.kilo37.new_load_map_packet,500,this.soft_mode_map_xml);
                     this.soft_mode_map_xml = "";
                  }
               }
               else
               {
                  this.soft_mode_map = 0;
               }
               if(!this.vortex74)
               {
                  this.recording = false;
                  this.Interface.set_status();
               }
            }
            if(CC == 22)
            {
               time = packet.readShort();
               if(this.custom_rpc)
               {
                  this.set_status(this.juliet114,time + 1,0);
               }
               if(this.juliet114.indexOf(krypton.blaze(-1820303063)) >= 0 || this.juliet114.indexOf(krypton.blaze(-1820302624)) >= 0)
               {
                  this.roomTimers[this.juliet114] = time;
               }
            }
         }
         if(C == 8)
         {
            if(CC == 6)
            {
               packet.readByte();
               _id = packet.readInt();
               packet.readShort();
               packet.readByte();
               if(_id == this.tfm[this.Keys.player][this.Keys.player_id])
               {
                  if(this.recording)
                  {
                     if(!this.nova92 && !this.kilo37.playing)
                     {
                        this.save_movement(0,krypton.blaze(-1820302380));
                        this.current_map_data = victor48.encode(this.record_movements);
                        this.Interface.preview_button[this.Keys.set_button_state](this.maps_allowed);
                        map = this.Keys.maps[this.current_map_code];
                        this.Interface.save_button[this.Keys.set_button_state](!map);
                     }
                     else
                     {
                        this.nova92 = false;
                     }
                  }
                  if(this.self_record)
                  {
                     if(!this.nova92 && !this.kilo37.playing)
                     {
                        this.save_movement(0,krypton.blaze(-1820302380));
                        this.current_map_data = victor48.encode(this.record_movements);
                        main_instance = this;
                        this.Interface.romeo44(this.Keys.translate(krypton.blaze(-1820302987)).replace(krypton.blaze(-1820302407),this.hawk138().toFixed(2)).replace(krypton.blaze(-1820302432),this.hawk138(true).toFixed(2)),function(param1:*):*
                        {
                           if(param1)
                           {
                              if(main_instance.current_map_code in main_instance.Keys.maps)
                              {
                                 main_instance.kilo37.handle_del_btn();
                              }
                              main_instance.kilo37.handle_save_btn();
                           }
                           main_instance.Interface.set_status("wait");
                        });
                     }
                     else
                     {
                        this.nova92 = false;
                     }
                  }
                  this.wraith75();
                  this.foxtrot110 = packet.readUnsignedShort();
               }
            }
            if(CC == 16)
            {
               p = new ByteArray();
               _name = packet.readUTF();
               p.writeUTF(_name);
               p.writeInt(packet.readInt());
               p.writeInt(packet.readInt());
               p.writeShort(packet.readShort());
               p.writeUTF(packet.readUTF());
               p.writeUTF(packet.readUTF());
               _local_3 = 0;
               _local_2 = 0;
               while(_local_3 < 10)
               {
                  p.writeInt(packet.readInt());
                  _local_3++;
               }
               if(_name == this.player_name && this.all_titles)
               {
                  packet.readShort();
                  p.writeShort(this.custom_title);
                  p.writeShort(487);
                  _local_2 = packet.readShort();
                  _local_3 = 0;
                  while(_local_3 < _local_2)
                  {
                     packet.readShort();
                     packet.readByte();
                     _local_3++;
                  }
                  _local_2 = 572;
                  _local_3 = 0;
                  while(_local_3 < _local_2)
                  {
                     if(!(_local_3 >= 440 && _local_3 <= 459 || _local_3 >= 131 && _local_3 <= 199 || _local_3 >= 203 && _local_3 <= 209 || _local_3 == 239 || _local_3 == 434 || _local_3 == 534))
                     {
                        p.writeShort(_local_3);
                        p.writeByte(1);
                     }
                     _local_3++;
                  }
                  for each(x in [440,442,444,445,446,447,448,449,450,451,452,453,454,534])
                  {
                     p.writeShort(x);
                     p.writeByte(9);
                  }
               }
               else
               {
                  p.writeShort(packet.readShort());
                  _local_2 = packet.readShort();
                  p.writeShort(_local_2);
                  _local_3 = 0;
                  while(_local_3 < _local_2)
                  {
                     p.writeShort(packet.readShort());
                     p.writeByte(packet.readByte());
                     _local_3++;
                  }
               }
               _look = packet.readUTF();
               if(_name == this.player_name && this.custom_shop)
               {
                  p.writeUTF(this.player_look + ";" + this.kilo115);
               }
               else
               {
                  p.writeUTF(_look);
               }
               p.writeShort(packet.readShort());
               _local_2 = int(packet.readUnsignedShort());
               _local_3 = 0;
               p.writeShort(_local_2);
               while(_local_3 < _local_2)
               {
                  p.writeShort(packet.readUnsignedShort());
                  _local_3++;
               }
               _local_2 = packet.readByte();
               _local_3 = 0;
               p.writeByte(_local_2);
               while(_local_3 < _local_2)
               {
                  p.writeByte(packet.readUnsignedByte());
                  p.writeInt(packet.readInt());
                  p.writeInt(packet.readInt());
                  p.writeShort(packet.readShort());
                  _local_3++;
               }
               p.writeByte(packet.readUnsignedByte());
               _local_2 = int(packet.readUnsignedByte());
               _local_3 = -1;
               p.writeByte(_local_2);
               while(++_local_3 < _local_2)
               {
                  p.writeByte(packet.readUnsignedByte());
               }
               p.writeBoolean(packet.readBoolean());
               p.writeInt(packet.readInt());
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(8,16,p));
               send = false;
            }
            if(CC == 20 && this.custom_shop)
            {
               packet.writeInt(999999999);
               packet.writeInt(999999999);
               packet.position = 0;
               this.Keys.packet_handler_class[this.Keys.packet_handler](packet);
               send = false;
            }
         }
         if(C == 20)
         {
            if(CC == 15 && this.custom_shop)
            {
               packet.writeInt(999999999);
               packet.writeInt(999999999);
               packet.position = 0;
               this.Keys.packet_handler_class[this.Keys.packet_handler](packet);
               send = false;
            }
         }
         if(C == 26)
         {
            if(CC == 2)
            {
               packet.readInt();
               this.player_name = packet.readUTF();
            }
            if(CC == 3)
            {
               this.tfm[this.Keys.loader_url] = krypton.blaze(-1820302609);
               this.yankee51.text = this.Keys.translate(krypton.blaze(-1820303056));
               this.apollo53.scaleX = 1;
               setTimeout(this.shadow149,3500);
            }
            if(CC == 35)
            {
               this.roomList = [];
               _len = packet.readByte();
               i = 0;
               while(_len > i)
               {
                  packet.readByte();
                  ++i;
               }
               this.charlie107 = packet.readByte();
               while(packet.bytesAvailable)
               {
                  if(packet.readByte() == 0)
                  {
                     packet.readUTF();
                     packet.readUTF();
                     roomname = packet.readUTF();
                     mices = packet.readShort();
                     if((roomname.indexOf(krypton.blaze(-1820303063)) >= 0 || roomname.indexOf(krypton.blaze(-1820302624)) >= 0) && mices > 9)
                     {
                        this.roomList.push(roomname);
                     }
                     packet.readShort();
                     if(packet.readBoolean())
                     {
                        packet.readInt();
                        packet.readInt();
                        packet.readInt();
                        x = packet.readByte();
                        b = 0;
                        while(x > b)
                        {
                           packet.readByte();
                           ++b;
                        }
                     }
                  }
                  else
                  {
                     packet.readUTF();
                     packet.readUTF();
                     packet.readUTF();
                     packet.readUTF();
                     packet.readUTF();
                     packet.readUTF();
                  }
               }
            }
         }
         if(C == 28)
         {
            if(CC == 50)
            {
               send = false;
               p = new ByteArray();
               p.writeUTF(this.host_url + krypton.blaze(-1820302541));
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(28,50,p));
            }
         }
         if(C == 144)
         {
            if(CC == 1)
            {
               p = new ByteArray();
               p.writeShort(packet.readShort());
               while(packet.bytesAvailable)
               {
                  pn = packet.readUTF();
                  p.writeUTF(pn);
                  p.writeInt(packet.readInt());
                  p.writeBoolean(packet.readBoolean());
                  p.writeByte(packet.readByte());
                  p.writeShort(packet.readShort());
                  p.writeByte(packet.readByte());
                  if(pn == this.player_name && this.all_titles)
                  {
                     packet.readShort();
                     packet.readByte();
                     p.writeShort(this.custom_title);
                     p.writeByte(9);
                  }
                  else
                  {
                     p.writeShort(packet.readShort());
                     p.writeByte(packet.readByte());
                  }
                  p.writeByte(packet.readByte());
                  p.writeUTF(packet.readUTF());
                  if(pn == this.player_name)
                  {
                     look = packet.readUTF();
                     tmp = packet.readBoolean();
                     clr = packet.readInt();
                     if(this.custom_shop)
                     {
                        p.writeUTF(this.player_look);
                        p.writeBoolean(tmp);
                        p.writeInt(parseInt(this.kilo115,16));
                     }
                     else
                     {
                        p.writeUTF(look);
                        p.writeBoolean(tmp);
                        p.writeInt(clr);
                        this.player_look = look;
                     }
                  }
                  else
                  {
                     p.writeUTF(packet.readUTF());
                     p.writeBoolean(packet.readBoolean());
                     p.writeInt(packet.readInt());
                  }
                  p.writeInt(packet.readInt());
                  p.writeInt(packet.readInt());
                  p.writeInt(packet.readInt());
                  p.writeByte(packet.readUnsignedByte());
               }
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(144,1,p));
               send = false;
            }
            if(CC == 2)
            {
               packet.readUTF();
               if(packet.readInt() == this.tfm[this.Keys.player][this.Keys.player_id])
               {
                  this.player_has_cheese = false;
                  this.kilo37.disable_auto_play();
                  clearTimeout(this.insta_death_timeout);
                  clearTimeout(this.insta_move_timeout);
                  clearTimeout(this.insta_win_timeout);
                  if(this.robot || this.nova92)
                  {
                     stage.addEventListener(Event.ENTER_FRAME,this.kilo37.play_map);
                  }
                  if(this.insta_death2)
                  {
                     this.insta_death_timeout = setTimeout(this.kilo37.player_death,Number(this.Interface[krypton.blaze(-1820302787)][this.Keys.text_field].text) * 1000);
                  }
                  if(this.insta_move)
                  {
                     this.insta_move_timeout = setTimeout(this.kilo37.player_move,Number(this.Interface[krypton.blaze(-1820303003)][this.Keys.text_field].text) * 1000);
                  }
                  if(this.insta_win)
                  {
                     this.insta_win_timeout = setTimeout(this.kilo37.player_victory,Number(this.Interface[krypton.blaze(-1820302662)][this.Keys.text_field].text) * 1000);
                  }
               }
            }
         }
         if(send)
         {
            this.Keys.packet_handler_class[this.Keys.packet_handler](_arg1);
         }
      }
      
      public function shadow149() : void
      {
         if(this.xeno102)
         {
            this.lima116.visible = true;
            removeChild(this.oscar119);
         }
         else
         {
            this.whiskey49(krypton.blaze(-1820303045));
         }
      }
      
      public function wraith75() : void
      {
         this.moved = false;
         this.record_movements = new Array();
         this.gamma111 = 0;
      }
      
      public function save_movement(param1:Object, param2:String) : void
      {
         if(this.gamma111 == 0)
         {
            this.gamma111 = getTimer();
         }
         this.record_movements.push([param1,param2,getTimer() - this.gamma111]);
         this.gamma111 = getTimer();
      }
      
      public function ranger148(param1:*) : void
      {
         p = new ByteArray();
         p.writeByte(6);
         p.writeUTF(krypton.blaze(-1820302459));
         p.writeUTF(this.Keys.translate(param1));
         p.writeInt(0);
         this.Keys.packet_handler_class[this.Keys.packet_handler](this.kilo37.parse_packet(6,10,p));
      }
      
      public function execute_command(param1:String) : void
      {
         var _loc2_:* = undefined;
         try
         {
            _local_2 = stage.focus;
            stage.focus = this.Keys.chat_class[this.Keys.chat_instance][this.Keys.chat_container][this.Keys.chat_text_field];
            _loc2_ = this.Keys.chat_class[this.Keys.chat_instance][this.Keys.chat_container][this.Keys.chat_text_field].text;
            this.Keys.chat_class[this.Keys.chat_instance][this.Keys.chat_container][this.Keys.chat_text_field].text = param1;
            this.Keys.chat_class[this.Keys.chat_instance][this.Keys.event_chat_text](new KeyboardEvent(KeyboardEvent.KEY_DOWN,true,false,0,Keyboard.ENTER));
            stage.focus = _local_2;
            this.Keys.chat_class[this.Keys.chat_instance][this.Keys.chat_container][this.Keys.chat_text_field].text = _loc2_;
         }
         catch(error:Error)
         {
         }
      }
      
      public function quasar147(param1:*, param2:*) : *
      {
         var _loc3_:* = 0;
         if(param2 == krypton.blaze(-1820303323))
         {
            _sender = this.whisper101;
            if(this.echo109 == this.delta108 - 1 || this.echo109 > 99)
            {
               _loc3_ = this.delta108;
            }
            else
            {
               _loc3_ = (this.echo109 + 1) % 100;
               this.delta108 = (this.echo109 + 1) % 100;
            }
            this.echo109 = this.delta108;
         }
         if(this.need_to_crypt)
         {
            this.need_to_crypt = false;
            param1.position = 0;
            param1 = this.crypt(_loc3_,param1);
         }
         _local_2 = new ByteArray();
         _local_3 = param1.length;
         _local_4 = _local_3 >>> 7;
         while(_local_4 != 0)
         {
            _local_2.writeByte(_local_3 & 127 | 128);
            _local_3 = _local_4;
            _local_4 >>>= 7;
         }
         _local_2.writeByte(_local_3 & 127);
         _local_2.writeByte(_loc3_);
         _sender.writeBytes(_local_2);
         _sender.writeBytes(param1);
         _sender.flush();
      }
      
      public function cascade133(param1:int = 0, param2:uint = 87) : void
      {
         var _loc3_:Number = 0;
         if(param1 > 0)
         {
            while(_loc3_ <= param1)
            {
               stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_DOWN,true,false,0,param2));
               _loc3_++;
            }
         }
      }
      
      public function decrypt(param1:*) : ByteArray
      {
         packetID = this.delta108 + 1;
         keys = this.tiger150(this.tfm[this.Keys.packet_keys_array],krypton.blaze(-1820303101));
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:int = 0;
         while(_loc3_ < param1.length - 2)
         {
            _id = (param1.readByte() ^ keys[(packetID + _loc3_) % 20]) & 255;
            _loc2_.writeByte(_id);
            _loc3_++;
         }
         _loc2_.position = 0;
         return _loc2_;
      }
      
      public function crypt(param1:int, param2:*) : ByteArray
      {
         keys = this.tiger150(this.tfm[this.Keys.packet_keys_array],krypton.blaze(-1820303101));
         param2.position = 0;
         pbytes = new ByteArray();
         pbytes.writeShort(param2.readShort());
         var _loc3_:int = int(keys.length);
         while(param2.bytesAvailable)
         {
            param1 = (1 + param1) % _loc3_;
            pbytes.writeByte(param2.readByte() ^ keys[param1]);
         }
         pbytes.position = 0;
         return pbytes;
      }
      
      public function tiger150(param1:Array, param2:String) : Array
      {
         var _loc6_:int = 0;
         var _loc3_:int = param2.length;
         var _loc4_:Array = [];
         var _loc5_:* = 5381;
         if(!(param2 is String))
         {
            param2 = String(StringUtil.getBytes(param2,krypton.blaze(-1820302465)));
         }
         _loc6_ = 0;
         while(_loc6_ < 20)
         {
            _loc5_ = (_loc5_ << 5) + _loc5_ + (param1[_loc6_] + param2.charCodeAt(_loc6_ % _loc3_));
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < 20)
         {
            _loc5_ ^= int(_loc5_ << 13);
            _loc5_ = _loc5_ ^ int(_loc5_ << 13) ^ int(_loc5_ >> 17);
            _loc5_ = _loc5_ ^ int(_loc5_ << 13) ^ int(_loc5_ >> 17) ^ int(_loc5_ << 5);
            _loc4_.push(int(_loc5_));
            _loc6_++;
         }
         return _loc4_;
      }
      
      public function whiskey49(param1:String) : void
      {
         if(this.lima116)
         {
            removeChild(this.lima116);
         }
         this.yankee51.text = krypton.blaze(-1820302429) + this.Keys.translate(param1);
         this.apollo53.graphics.beginFill(16711693);
         this.apollo53.graphics.drawRoundRect(0,0,300,4,2);
         this.apollo53.graphics.endFill();
      }
      
      private function giraffe137(param1:Event) : void
      {
         removeEventListener(krypton.blaze(-1820302346),this.giraffe137);
         try
         {
            this.tfm.x_proxySteam.x_initialisation(this.quebec121);
         }
         catch(ERREUR:Error)
         {
         }
      }
      
      private function tango124(param1:Event) : void
      {
         if(this.quebec121)
         {
            this.quebec121.dispose();
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

