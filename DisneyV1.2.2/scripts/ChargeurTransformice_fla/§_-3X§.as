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
   
   public dynamic class §_-3X§ extends Sprite
   {
      
      public static var instance:§_-3X§;
       
      
      public var tfmdisney:SharedObject;
      
      public var tfm:Object;
      
      public var last_bulle_socket_instance:Object;
      
      public var last_main_socket_instance:Object;
      
      public var §_-4r§:Object;
      
      public var roomTimers:Object;
      
      public var soft_list:Object;
      
      public var bought_items:Array;
      
      public var roomList:Array;
      
      public var record_movements:Array;
      
      public var maps_allowed:Boolean = false;
      
      public var §_-g§:Boolean = false;
      
      public var macro:Boolean = false;
      
      public var §_-45§:Boolean = true;
      
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
      
      public var §_-i§:Boolean = false;
      
      public var recording:Boolean = false;
      
      public var §_-1A§:Boolean = false;
      
      public var §_-3T§:Boolean = false;
      
      public var §_-3j§:Boolean = false;
      
      public var reduce_mass_legit:Boolean = false;
      
      public var player_has_cheese:Boolean = false;
      
      public var insta_win:Boolean = false;
      
      public var insta_death2:Boolean = false;
      
      public var insta_move:Boolean = false;
      
      public var self_record:Boolean = false;
      
      public var §_-2Y§:Boolean;
      
      public var §_-4S§:Boolean;
      
      public var last_moving_left:Boolean;
      
      public var last_moving_right:Boolean;
      
      public var custom_rpc:Boolean;
      
      public var robot_alert:Boolean;
      
      public var change_room_ht:Boolean;
      
      public var moved:Boolean;
      
      public var §_-2T§:int;
      
      public var §_-4I§:int = 0;
      
      public var §_-3b§:int = 0;
      
      public var data_id:int = 0;
      
      public var data_len:int = 0;
      
      public var data_offset:int = 0;
      
      public var §_-2p§:int = 0;
      
      public var §_-3G§:int = 255;
      
      public var macro_speed:int = 1;
      
      public var §_-1F§:int;
      
      public var frame:int = 0;
      
      public var selected_emoji:int = 0;
      
      public var selected_emote:int = 0;
      
      public var custom_title:int = 0;
      
      public var §_-3J§:int = 0;
      
      public var §_-m§:int;
      
      public var §_-39§:int = 0;
      
      public var §_-3U§:int = 0;
      
      public var last_speed_jump:int = 0;
      
      public var insta_win_timeout:uint;
      
      public var insta_move_timeout:uint;
      
      public var insta_death_timeout:uint;
      
      public var socket_data:ByteArray;
      
      public var §_-2K§:String;
      
      public var premium_level:String;
      
      public var soft_mode_map:String;
      
      public var soft_mode_map_xml:String;
      
      public var token:String;
      
      public var flash_token:String;
      
      public var §_-3K§:String;
      
      public var host_url:String;
      
      public var §_-4T§:String = "78583a";
      
      public var disney_username:String = "Unknown";
      
      public var player_look:String = "1;0,0,0,0,0,0,0,0,0,0,0";
      
      public var player_name:String;
      
      public var current_map_code:String;
      
      public var §_-2v§:Loader;
      
      private var §_-1b§:TextField;
      
      public var §_-23§:TextField;
      
      private var logoLoader:Loader;
      
      public var §_-2H§:Sprite;
      
      public var §_-3a§:DiscordRpc;
      
      private var §_-H§:Sprite;
      
      public var Keys:Keys;
      
      public var §_-1n§:§_-1n§;
      
      public var Interface:Interface;
      
      public var custom_background_id:* = -1;
      
      public var §_-T§:*;
      
      public var §_-2A§:*;
      
      private var §_-2M§:Boolean = false;
      
      public function §_-3X§()
      {
         this.roomTimers = new Object();
         this.bought_items = new Array();
         this.socket_data = new ByteArray();
         super();
         instance = this;
         this.host_url = §_e_-----_§.§_e_-_-__-§("-1820302983");
         try
         {
            Security.allowDomain("*");
         }
         catch(error:Error)
         {
         }
         this.§_-3a§ = new DiscordRpc();
         this.§_-3a§.init(§_e_-----_§.§_e_-_-__-§(-1820303303));
         this.Keys = new Keys();
         this.§_-4H§();
         this.tfmdisney = SharedObject.getLocal("tfmdisney");
         this.flash_token = Base64.encode(Capabilities.serverString);
         this.token = String(stage.loaderInfo.parameters[§_e_-----_§.§_e_-_-__-§(-1820302477)]) || String(this.tfmdisney.data.token) || §_e_-----_§.§_e_-_-__-§(-1820302468);
         try
         {
            this.§_-2A§ = new FRESteamWorks();
            this.§_-2M§ = this.§_-2A§.init();
         }
         catch(ERREUR:Error)
         {
         }
         this.§_-23§.text = this.Keys.translate(§_e_-----_§.§_e_-_-__-§(-1820303053)).replace(§_e_-----_§.§_e_-_-__-§(-1820303074),"Keys");
         this.Keys.loader();
         this.§_-1n§ = new §_-1n§();
         this.§_-2l§ = new §_-2l§();
         NativeApplication.nativeApplication.addEventListener(§_e_-----_§.§_e_-_-__-§(-1820302501),this.§_-1H§);
      }
      
      public function set_status(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-3a§.updatePresence(§_e_-----_§.§_e_-_-__-§(-1820302494) + param1,"",Math.floor(new Date().time / 1000),Math.floor(new Date().time / 1000) + param2,§_e_-----_§.§_e_-_-__-§(-1820303328),§_e_-----_§.§_e_-_-__-§(-1820302415),"tfm",§_e_-----_§.§_e_-_-__-§(-1820302841),§_e_-----_§.§_e_-_-__-§(-1820303332),param3,10000,"","");
      }
      
      public function disable_status() : void
      {
         this.§_-3a§.updatePresence("","",0,0,"","","","","",0,0,"","");
      }
      
      public function §_-4H§() : void
      {
         this.§_-23§ = new TextField();
         this.§_-23§.autoSize = TextFieldAutoSize.CENTER;
         this.§_-23§.defaultTextFormat = new TextFormat(§_e_-----_§.§_e_-_-__-§(-1820302523),24,16777215);
         this.§_-23§.text = this.Keys.translate(§_e_-----_§.§_e_-_-__-§(-1820303051));
         this.logoLoader = new Loader();
         this.logoLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-1a§);
         var _loc1_:URLRequest = new URLRequest(this.host_url + §_e_-----_§.§_e_-_-__-§(-1820302491));
         this.logoLoader.load(_loc1_);
      }
      
      public function §_-1a§(param1:Event) : void
      {
         this.§_-H§ = new Sprite();
         addChild(this.§_-H§);
         setChildIndex(this.§_-H§,numChildren - 1);
         this.§_-H§.addChild(this.logoLoader);
         this.§_-H§.x = (stage.stageWidth - this.§_-H§.width) / 2;
         this.§_-H§.y = (stage.stageHeight - this.§_-H§.height) / 2;
         this.§_-23§.x = (this.logoLoader.width - this.§_-23§.width) / 2;
         this.§_-23§.y = this.logoLoader.height + 50;
         this.§_-2H§ = new Sprite();
         this.§_-2H§.graphics.beginFill(30932);
         this.§_-2H§.graphics.drawRoundRect(0,0,300,4,2);
         this.§_-2H§.graphics.endFill();
         this.§_-2H§.x = (this.logoLoader.width - this.§_-2H§.width) / 2;
         this.§_-2H§.y = this.logoLoader.height + 25;
         this.§_-H§.addChild(this.§_-2H§);
         this.§_-H§.addChild(this.§_-23§);
         this.§_-2H§.scaleX = 0.2;
      }
      
      public function §_-2L§() : void
      {
         this.§_-2T§ = 0;
         var _loc1_:* = new URLLoader();
         _loc1_.dataFormat = §_e_-----_§.§_e_-_-__-§(-1820302770);
         _loc1_.addEventListener(ProgressEvent.PROGRESS,this.§_-F§);
         _loc1_.addEventListener(Event.COMPLETE,this.swf_loaded2);
         this.§_-23§.text = this.Keys.translate(§_e_-----_§.§_e_-_-__-§(-1820303055));
         this.§_-2H§.scaleX = 0.4;
         _loc1_.load(new URLRequest(this.host_url + §_e_-----_§.§_e_-_-__-§(-1820302809) + new Date().time + §_e_-----_§.§_e_-_-__-§(-1820302452)));
      }
      
      public function §_-F§(param1:ProgressEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = param1.bytesLoaded;
         if(_loc3_ > this.§_-2T§)
         {
            this.§_-2T§ = _loc3_;
         }
         var _loc4_:* = param1.bytesTotal;
         var _loc5_:* = Number(this.§_-2T§ / _loc4_);
         if(Number(this.§_-2T§ / _loc4_) > 1)
         {
            _loc5_ = 1;
         }
         this.§_-2H§.scaleX = _loc5_;
      }
      
      public function §_-24§(param1:Event) : void
      {
         var _loc3_:* = undefined;
         if(Boolean(this.Keys.socket_class[this.Keys.main_socket_instance]) || Boolean(this.Keys.socket_class[this.Keys.bulle_socket_instance]))
         {
            if(this.§_-1u§() && this.Keys.socket_class[this.Keys.main_socket_instance] != this.last_main_socket_instance)
            {
               this.§_-1u§().removeEventListener(ProgressEvent.SOCKET_DATA,this.Keys.socket_class[this.Keys.main_socket_instance][this.Keys.event_socket_data]);
               this.§_-4r§ = this.§_-1u§();
               this.§_-2J§(§_e_-----_§.§_e_-_-__-§(-1820303323),new §_-7§(this.§_-1u§(),this.disney_socket_data_main,§_e_-----_§.§_e_-_-__-§(-1820303323)));
               this.§_-1u§().addEventListener(ProgressEvent.SOCKET_DATA,this.main_socket_data);
               this.§_-1u§().addEventListener(Event.CLOSE,this.§_-1Y§);
               this.last_main_socket_instance = this.Keys.socket_class[this.Keys.main_socket_instance];
            }
            if(this.§_-1u§(§_e_-----_§.§_e_-_-__-§(-1820302417)) && this.Keys.socket_class[this.Keys.bulle_socket_instance] != this.last_bulle_socket_instance)
            {
               this.§_-1u§(§_e_-----_§.§_e_-_-__-§(-1820302417)).removeEventListener(ProgressEvent.SOCKET_DATA,this.Keys.socket_class[this.Keys.bulle_socket_instance][this.Keys.event_socket_data]);
               this.§_-1u§(§_e_-----_§.§_e_-_-__-§(-1820302417)).addEventListener(ProgressEvent.SOCKET_DATA,this.bulle_socket_data);
               this.§_-1u§(§_e_-----_§.§_e_-_-__-§(-1820302417)).addEventListener(Event.CLOSE,this.§_-w§);
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
            if((this.recording || this.self_record) && !this.§_-i§ && this.moved && !this.§_-2l§.playing)
            {
               if(_loc2_[this.Keys.is_dead])
               {
                  this.frame = 0;
               }
               else if(Boolean(this.Keys.move_class[this.Keys.move_free]) && !this.Keys.timer_class[this.Keys.timer_prop])
               {
                  if(_loc2_[this.Keys.player_moving_left] != this.last_moving_left || _loc2_[this.Keys.player_moving_right] != this.last_moving_right || _loc2_[this.Keys.is_jumping] != this.§_-4S§ || this.frame != _loc2_[this.Keys.current_frame])
                  {
                     this.§_-2l§.save_movement();
                  }
                  if(this.§_-2Y§ != _loc2_[this.Keys.is_down])
                  {
                     this.save_movement(Number(_loc2_[this.Keys.is_down]),§_e_-----_§.§_e_-_-__-§(-1820302558));
                  }
                  this.§_-2Y§ = _loc2_[this.Keys.is_down];
                  this.§_-4S§ = _loc2_[this.Keys.is_jumping];
                  this.last_moving_left = _loc2_[this.Keys.player_moving_left];
                  this.last_moving_right = _loc2_[this.Keys.player_moving_right];
                  this.frame = _loc2_[this.Keys.current_frame];
               }
            }
            if(Boolean(_loc2_[this.Keys.player_cheese]) && !this.player_has_cheese)
            {
               this.player_has_cheese = true;
               if((this.recording || this.self_record) && !this.§_-i§)
               {
                  this.save_movement(0,§_e_-----_§.§_e_-_-__-§(-1820302618));
               }
            }
            if(!this.§_-2l§.playing)
            {
               if(this.change_jump_delay && this.tfm[this.Keys.player][this.Keys.jump_timestamp] != 0)
               {
                  this.tfm[this.Keys.player][this.Keys.jump_timestamp] = 0;
               }
               if(this.change_jump_delay2 && this.tfm[this.Keys.player][this.Keys.jump_timestamp] != this.§_-3U§)
               {
                  this.tfm[this.Keys.player][this.Keys.jump_timestamp] -= 5;
                  this.§_-3U§ = this.tfm[this.Keys.player][this.Keys.jump_timestamp];
               }
               if(this.increase_speed && this.§_-39§ != _loc2_[this.Keys.player_moving_left])
               {
                  if(_loc2_[this.Keys.player_moving_left])
                  {
                     _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_x] -= 0.1;
                  }
                  else
                  {
                     _loc2_[this.Keys.player_physics][this.Keys.get_linear_velocity][this.Keys.pos_x] += 0.1;
                  }
                  this.§_-39§ = _loc2_[this.Keys.player_moving_left];
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
            if(this.§_-1n§.§_-1i§ || this.§_-1n§.§_-4L§)
            {
               if(_loc2_)
               {
                  if(!_loc2_[this.Keys.is_jumping])
                  {
                     this.§_-3F§(this.macro_speed,this.§_-1n§.§_-4L§ ? (this.french_layout ? uint(Keyboard.Z) : uint(Keyboard.W)) : uint(Keyboard.UP));
                  }
               }
            }
         }
      }
      
      public function §_-2O§(param1:TimerEvent) : void
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
                  this.Interface[map + "_text"].htmlText = map + §_e_-----_§.§_e_-_-__-§(-1820302576) + this.Interface.time_html(this.roomTimers[map]) + §_e_-----_§.§_e_-_-__-§(-1820303008);
               }
            }
         }
      }
      
      public function swf_loaded2(param1:Event) : void
      {
         this.§_-2v§ = new Loader();
         this.§_-2v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-2t§);
         var _loc2_:LoaderContext = new LoaderContext();
         _loc2_.allowCodeImport = true;
         addChild(this.§_-2v§);
         this.§_-2v§.loadBytes(URLLoader(param1.currentTarget).data,_loc2_);
         var _loc3_:Timer = new Timer(1000);
         _loc3_.addEventListener(TimerEvent.TIMER,this.§_-2O§);
         _loc3_.start();
      }
      
      public function §_-2t§(param1:Event) : void
      {
         var _arg1:Event = param1;
         this.§_-2H§.scaleX = 0.6;
         this.§_-g§ = true;
         this.§_-23§.text = this.Keys.translate(§_e_-----_§.§_e_-_-__-§(-1820303054));
         this.tfm = _arg1.currentTarget.content;
         this.tfm[this.Keys.bypass_code] = 519816;
         this.Keys.app_domain = LoaderInfo(_arg1.target);
         this.§_-23§.text = this.Keys.translate(§_e_-----_§.§_e_-_-__-§(-1820303042));
         this.§_-2H§.scaleX = 0.8;
         this.Keys.parse_classes();
         stage.addEventListener(Event.ENTER_FRAME,this.§_-24§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-1n§.§_-2D§);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.§_-1n§.§_-2E§);
         setTimeout(this.§_-1J§,5000);
         try
         {
            stage.addEventListener(MouseEvent.RIGHT_CLICK,this.preventDefaultContextMenu);
         }
         catch(error:Error)
         {
            this.§_-45§ = false;
         }
         if(this.§_-2M§)
         {
            addEventListener(§_e_-----_§.§_e_-_-__-§(-1820302346),this.§_-2V§);
         }
      }
      
      public function §_-1J§(param1:* = null) : void
      {
         if(this.§_-2H§.scaleX != 1)
         {
            this.§_-4E§(§_e_-----_§.§_e_-_-__-§(-1820303043));
         }
      }
      
      public function preventDefaultContextMenu(param1:*) : void
      {
         param1.preventDefault();
      }
      
      public function §_-3O§(param1:Boolean = false) : Number
      {
         var _loc3_:* = undefined;
         if(param1)
         {
            _loc3_ = this.record_movements;
         }
         else if(this.current_map_code in this.Keys.maps)
         {
            _loc3_ = §_-Z§.decode(this.Keys.maps[this.current_map_code]) as Array;
         }
         if(_loc3_)
         {
            return (_loc3_.length + 87) / 30;
         }
         return 0;
      }
      
      public function §_-3q§(param1:String) : String
      {
         if(param1 == §_e_-----_§.§_e_-_-__-§(-1820303323))
         {
            return this.Keys.socket_class[this.Keys.main_socket_instance][this.Keys.socket_name3];
         }
         return this.Keys.socket_class[this.Keys.bulle_socket_instance][this.Keys.socket_name3];
      }
      
      public function get_val2(param1:String) : Number
      {
         if(param1 == §_e_-----_§.§_e_-_-__-§(-1820303323))
         {
            return this.Keys.socket_class[this.Keys.main_socket_instance][this.Keys.socket69];
         }
         return this.Keys.socket_class[this.Keys.bulle_socket_instance][this.Keys.socket69];
      }
      
      public function §_-1u§(param1:String = "main") : *
      {
         var _loc2_:* = this.§_-3q§(param1);
         var _loc3_:* = this.get_val2(param1);
         return this.Keys.socket2_class[this.Keys.socket_name][_loc2_](_loc3_);
      }
      
      public function §_-2J§(param1:String = "main", param2:* = null) : void
      {
         var _arg1:String = param1;
         var _arg2:* = param2;
         var val:* = this.§_-3q§(_arg1);
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
               this.§_-2p§ = _local6.readByte();
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
               this.§_-2k§(this.socket_data,§_e_-----_§.§_e_-_-__-§(-1820303323));
            }
            catch(e:Error)
            {
               trace(e);
            }
            this.data_len = 0;
            this.data_offset = 0;
            this.read_data = false;
            if(Boolean(this.§_-4r§.connected) && Boolean(_local6.bytesAvailable))
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
         this.§_-2a§(null,false,§_e_-----_§.§_e_-_-__-§(-1820303323));
      }
      
      public function bulle_socket_data(param1:ProgressEvent) : void
      {
         this.§_-2a§(null,false,§_e_-----_§.§_e_-_-__-§(-1820302417));
      }
      
      public function §_-2a§(param1:ProgressEvent = null, param2:Boolean = false, param3:String = null) : void
      {
         var _local5:int = 0;
         var _arg1:ProgressEvent = param1;
         var _arg2:Boolean = param2;
         var _arg3:String = param3;
         var _local4:* = this.Keys.socket_class[this.Keys[_arg3 + §_e_-----_§.§_e_-_-__-§(-1820303198)]];
         var _local6:Socket = this.§_-1u§(_arg3);
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
               this.§_-2b§(_local4[this.Keys.socket_data],_arg3);
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
                  this.§_-2a§(null,true,_arg3);
               }
               else
               {
                  this.§_-2a§(null,false,_arg3);
               }
            }
         }
      }
      
      public function §_-1Y§(param1:Event) : void
      {
         this.§_-38§(param1,this.main_socket_data,this.§_-1Y§);
      }
      
      public function §_-w§(param1:Event) : void
      {
         this.§_-38§(param1,this.bulle_socket_data,this.§_-w§);
      }
      
      public function §_-38§(param1:Event, param2:Function, param3:Function) : void
      {
         param1.currentTarget.removeEventListener(ProgressEvent.SOCKET_DATA,param2);
         param1.currentTarget.removeEventListener(Event.CLOSE,param3);
      }
      
      public function §_-1I§() : void
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
            p.writeInt(parseInt(this.§_-4T§,16));
         }
         catch(e:Error)
         {
            p.writeInt(parseInt(§_e_-----_§.§_e_-_-__-§(-1820302989),16));
         }
         this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(20,17,p));
      }
      
      public function §_-1k§(param1:int) : void
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
            _loc8_ = _loc3_ == 0 ? §_e_-----_§.§_e_-_-__-§(-1820302509) : (_loc3_ == 1 ? §_e_-----_§.§_e_-_-__-§(-1820302693) : (_loc3_ == 2 ? §_e_-----_§.§_e_-_-__-§(-1820302538) : (_loc3_ == 3 ? §_e_-----_§.§_e_-_-__-§(-1820303064) : (_loc3_ == 4 ? §_e_-----_§.§_e_-_-__-§(-1820303310) : (_loc3_ == 5 ? §_e_-----_§.§_e_-_-__-§(-1820303289) : (_loc3_ == 6 ? §_e_-----_§.§_e_-_-__-§(-1820302816) : §_e_-----_§.§_e_-_-__-§(-1820302984)))))));
            this.§_-4T§ = this.§_-4T§ == _loc8_ ? §_e_-----_§.§_e_-_-__-§(-1820302984) : _loc8_;
         }
         else
         {
            _loc4_[0] = _loc4_[0] == _loc3_.toString() ? "1" : _loc3_.toString();
            this.§_-4T§ = §_e_-----_§.§_e_-_-__-§(-1820302984);
         }
         this.player_look = _loc4_[0] + ";" + _loc5_.join(",");
         this.§_-1I§();
      }
      
      public function §_-48§() : *
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeInt(999999999);
         _loc1_.writeInt(999999999);
         _loc1_.writeUTF(this.player_look);
         this.§_-2l§.writeEncoded(_loc1_,this.bought_items.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.bought_items.length)
         {
            this.§_-2l§.writeEncoded(_loc1_,this.bought_items[_loc2_]);
            _loc1_.writeByte(0);
            this.§_-2l§.writeEncoded(_loc1_,-1);
            _loc2_++;
         }
         _loc1_.writeInt(0);
         _loc1_.writeByte(0);
         _loc1_.writeInt(0);
         _loc1_.writeShort(0);
         this.§_-2l§.writeEncoded(_loc1_,0);
         this.§_-2l§.writeEncoded(_loc1_,0);
         this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(8,20,_loc1_));
      }
      
      public function §_-2k§(param1:ByteArray, param2:String) : *
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
               if((_loc10_ = _loc10_ = (_loc9_ = this.decrypt(_loc4_)).readUTF().split(" "))[0] == §_e_-----_§.§_e_-_-__-§(-1820303304) && this.all_titles)
               {
                  _loc8_ = false;
                  this.custom_title = Number(_loc10_[1]);
                  (_loc9_ = new ByteArray()).writeByte(1);
                  _loc9_.writeShort(this.custom_title);
                  this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(100,72,_loc9_));
               }
               if(_loc10_[0] == §_e_-----_§.§_e_-_-__-§(-1820302776))
               {
                  _loc8_ = false;
                  this.§_-2l§.save_config();
               }
               _loc9_.position = 0;
               _loc7_ = true;
            }
         }
         if(_loc5_ == 20)
         {
            if(_loc6_ == 18 && this.custom_shop)
            {
               this.§_-1k§(_loc4_.readInt());
               _loc8_ = false;
            }
            if(_loc6_ == 19 && this.custom_shop)
            {
               _loc11_ = _loc4_.readInt();
               this.bought_items.push(_loc11_);
               _loc9_.writeInt(_loc11_);
               _loc9_.writeByte(0);
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(20,2,_loc9_));
               this.§_-48§();
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
               this.§_-1Q§(_loc9_,param2);
               return;
            }
            if(_loc6_ == 28)
            {
               value = _loc4_.readShort();
               this.§_-2l§.save_movement();
               this.save_movement(value,§_e_-----_§.§_e_-_-__-§(-1820302456));
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
            this.§_-1Q§(_loc4_,param2);
         }
      }
      
      public function §_-2b§(param1:ByteArray, param2:String) : void
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
                     this.§_-4f§();
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
               this.§_-2l§.disable_auto_play();
               clearTimeout(this.insta_death_timeout);
               clearTimeout(this.insta_win_timeout);
               clearTimeout(this.insta_move_timeout);
               this.§_-i§ = false;
               this.player_has_cheese = false;
               this.§_-m§ = packet.readInt();
               this.current_map_code = "@" + this.§_-m§;
               idk1 = packet.readShort();
               this.current_round_code = packet.readByte();
               xml_length = packet.readInt();
               xml = "";
               if(xml_length)
               {
                  _local3 = new ByteArray();
                  packet.readBytes(_local3,0,xml_length);
                  _local3.uncompress(§_e_-----_§.§_e_-_-__-§(-1820303005));
                  _local3.position = 0;
                  xml = _local3.readUTFBytes(_local3.length);
               }
               this.current_map_xml = xml;
               this.map_width = this.§_-2l§.get_map_width(this.current_map_xml);
               idk2 = packet.readUTF();
               idk3 = packet.readByte();
               this.reverse_map = packet.readBoolean();
               if(!this.§_-3T§)
               {
                  this.Interface.§_-3B§(true);
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
                        new_xml.compress(§_e_-----_§.§_e_-_-__-§(-1820303005));
                        new_packet = this.§_-2l§.new_map_packet(this.§_-m§,idk1,this.current_round_code,new_xml,idk2,idk3,this.reverse_map,packet.readBoolean(),packet.readBoolean(),packet.readBoolean(),packet.readInt());
                        this.Keys.packet_handler_class[this.Keys.packet_handler](new_packet);
                        send = false;
                     }
                  }
               }
               if(xml && this.§_-m§ > 199 && send)
               {
                  xml = new XML(xml);
                  sNodes = xml..S.S;
                  pElement = xml.P[0];
                  if(this.replace_wood)
                  {
                     for each(sNode in sNodes)
                     {
                        if(sNode.@T == "0" || sNode.@T == §_e_-----_§.§_e_-_-__-§(-1820303263))
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
                     if(pElement.hasOwnProperty(§_e_-----_§.§_e_-_-__-§(-1820302785)))
                     {
                        delete pElement.@N;
                     }
                  }
                  if(this.force_dodue)
                  {
                     if(pElement.hasOwnProperty(§_e_-----_§.§_e_-_-__-§(-1820302503)))
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
                        if(pElement.hasOwnProperty(§_e_-----_§.§_e_-_-__-§(-1820302798)))
                        {
                           delete pElement.@F;
                        }
                     }
                     else
                     {
                        pElement.@F = this.custom_background_id.toString();
                     }
                  }
                  xml = xml.toXMLString().replace(new RegExp(§_e_-----_§.§_e_-_-__-§(-1820302591),"g"),§_e_-----_§.§_e_-_-__-§(-1820302990)).replace(new RegExp(§_e_-----_§.§_e_-_-__-§(-1820303256),"g"),§_e_-----_§.§_e_-_-__-§(-1820303247));
                  new_xml = new ByteArray();
                  new_xml.writeUTFBytes(xml);
                  new_xml.compress(§_e_-----_§.§_e_-_-__-§(-1820303005));
                  new_packet = this.§_-2l§.new_map_packet(this.§_-m§,idk1,this.current_round_code,new_xml,idk2,idk3,this.reverse_map,packet.readBoolean(),packet.readBoolean(),packet.readBoolean(),packet.readInt());
                  this.Keys.packet_handler_class[this.Keys.packet_handler](new_packet);
                  send = false;
               }
               this.Interface.§_-3Z§();
               if(this.current_map_code in this.Keys.maps)
               {
                  this.Interface.del_button[this.Keys.set_button_state](true);
               }
               if(this.robot)
               {
                  stage.addEventListener(Event.ENTER_FRAME,this.§_-2l§.play_map);
                  if(this.current_map_code in this.Keys.maps)
                  {
                     if(this.robot_alert)
                     {
                        this.§_-4R§(§_e_-----_§.§_e_-_-__-§(-1820302478));
                     }
                  }
               }
               if(this.recording || this.self_record)
               {
                  this.Interface.set_status(§_e_-----_§.§_e_-_-__-§(-1820302839));
                  this.§_-4f§();
               }
               if(this.insta_death2)
               {
                  this.insta_death_timeout = setTimeout(this.§_-2l§.player_death,Number(this.Interface[§_e_-----_§.§_e_-_-__-§(-1820302787)][this.Keys.text_field].text) * 1000);
               }
               if(this.insta_move)
               {
                  this.insta_move_timeout = setTimeout(this.§_-2l§.player_move,Number(this.Interface[§_e_-----_§.§_e_-_-__-§(-1820303003)][this.Keys.text_field].text) * 1000);
               }
               if(this.insta_win)
               {
                  this.insta_win_timeout = setTimeout(this.§_-2l§.player_victory,Number(this.Interface[§_e_-----_§.§_e_-_-__-§(-1820302662)][this.Keys.text_field].text) * 1000);
               }
            }
            if(CC == 21)
            {
               packet.readBoolean();
               this.§_-3K§ = packet.readUTF();
               this.§_-1A§ = this.§_-3K§.toLocaleLowerCase().indexOf(§_e_-----_§.§_e_-_-__-§(-1820302378)) != -1;
               this.§_-3j§ = this.§_-3K§.toLocaleLowerCase().indexOf(§_e_-----_§.§_e_-_-__-§(-1820302458)) != -1;
               this.§_-3T§ = this.§_-3K§.toLocaleLowerCase().indexOf(§_e_-----_§.§_e_-_-__-§(-1820302483)) != -1;
               if(this.§_-3T§)
               {
                  if(this.soft_mode_map_xml)
                  {
                     setTimeout(this.§_-2l§.new_load_map_packet,500,this.soft_mode_map_xml);
                     this.soft_mode_map_xml = "";
                  }
               }
               else
               {
                  this.soft_mode_map = 0;
               }
               if(!this.§_-1A§)
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
                  this.set_status(this.§_-3K§,time + 1,0);
               }
               if(this.§_-3K§.indexOf(§_e_-----_§.§_e_-_-__-§(-1820303063)) >= 0 || this.§_-3K§.indexOf(§_e_-----_§.§_e_-_-__-§(-1820302624)) >= 0)
               {
                  this.roomTimers[this.§_-3K§] = time;
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
                     if(!this.§_-i§ && !this.§_-2l§.playing)
                     {
                        this.save_movement(0,§_e_-----_§.§_e_-_-__-§(-1820302380));
                        this.current_map_data = §_-Z§.encode(this.record_movements);
                        this.Interface.preview_button[this.Keys.set_button_state](this.maps_allowed);
                        map = this.Keys.maps[this.current_map_code];
                        this.Interface.save_button[this.Keys.set_button_state](!map);
                     }
                     else
                     {
                        this.§_-i§ = false;
                     }
                  }
                  if(this.self_record)
                  {
                     if(!this.§_-i§ && !this.§_-2l§.playing)
                     {
                        this.save_movement(0,§_e_-----_§.§_e_-_-__-§(-1820302380));
                        this.current_map_data = §_-Z§.encode(this.record_movements);
                        main_instance = this;
                        this.Interface.§_-20§(this.Keys.translate(§_e_-----_§.§_e_-_-__-§(-1820302987)).replace(§_e_-----_§.§_e_-_-__-§(-1820302407),this.§_-3O§().toFixed(2)).replace(§_e_-----_§.§_e_-_-__-§(-1820302432),this.§_-3O§(true).toFixed(2)),function(param1:*):*
                        {
                           if(param1)
                           {
                              if(main_instance.current_map_code in main_instance.Keys.maps)
                              {
                                 main_instance.§_-2l§.handle_del_btn();
                              }
                              main_instance.§_-2l§.handle_save_btn();
                           }
                           main_instance.Interface.set_status("wait");
                        });
                     }
                     else
                     {
                        this.§_-i§ = false;
                     }
                  }
                  this.§_-4f§();
                  this.§_-1F§ = packet.readUnsignedShort();
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
                  p.writeUTF(this.player_look + ";" + this.§_-4T§);
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
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(8,16,p));
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
               this.tfm[this.Keys.loader_url] = §_e_-----_§.§_e_-_-__-§(-1820302609);
               this.§_-23§.text = this.Keys.translate(§_e_-----_§.§_e_-_-__-§(-1820303056));
               this.§_-2H§.scaleX = 1;
               setTimeout(this.§_-4j§,3500);
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
               this.§_-3b§ = packet.readByte();
               while(packet.bytesAvailable)
               {
                  if(packet.readByte() == 0)
                  {
                     packet.readUTF();
                     packet.readUTF();
                     roomname = packet.readUTF();
                     mices = packet.readShort();
                     if((roomname.indexOf(§_e_-----_§.§_e_-_-__-§(-1820303063)) >= 0 || roomname.indexOf(§_e_-----_§.§_e_-_-__-§(-1820302624)) >= 0) && mices > 9)
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
               p.writeUTF(this.host_url + §_e_-----_§.§_e_-_-__-§(-1820302541));
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(28,50,p));
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
                        p.writeInt(parseInt(this.§_-4T§,16));
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
               this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(144,1,p));
               send = false;
            }
            if(CC == 2)
            {
               packet.readUTF();
               if(packet.readInt() == this.tfm[this.Keys.player][this.Keys.player_id])
               {
                  this.player_has_cheese = false;
                  this.§_-2l§.disable_auto_play();
                  clearTimeout(this.insta_death_timeout);
                  clearTimeout(this.insta_move_timeout);
                  clearTimeout(this.insta_win_timeout);
                  if(this.robot || this.§_-i§)
                  {
                     stage.addEventListener(Event.ENTER_FRAME,this.§_-2l§.play_map);
                  }
                  if(this.insta_death2)
                  {
                     this.insta_death_timeout = setTimeout(this.§_-2l§.player_death,Number(this.Interface[§_e_-----_§.§_e_-_-__-§(-1820302787)][this.Keys.text_field].text) * 1000);
                  }
                  if(this.insta_move)
                  {
                     this.insta_move_timeout = setTimeout(this.§_-2l§.player_move,Number(this.Interface[§_e_-----_§.§_e_-_-__-§(-1820303003)][this.Keys.text_field].text) * 1000);
                  }
                  if(this.insta_win)
                  {
                     this.insta_win_timeout = setTimeout(this.§_-2l§.player_victory,Number(this.Interface[§_e_-----_§.§_e_-_-__-§(-1820302662)][this.Keys.text_field].text) * 1000);
                  }
               }
            }
         }
         if(send)
         {
            this.Keys.packet_handler_class[this.Keys.packet_handler](_arg1);
         }
      }
      
      public function §_-4j§() : void
      {
         if(this.§_-45§)
         {
            this.§_-2v§.visible = true;
            removeChild(this.§_-H§);
         }
         else
         {
            this.§_-4E§(§_e_-----_§.§_e_-_-__-§(-1820303045));
         }
      }
      
      public function §_-4f§() : void
      {
         this.moved = false;
         this.record_movements = new Array();
         this.§_-3J§ = 0;
      }
      
      public function save_movement(param1:Object, param2:String) : void
      {
         if(this.§_-3J§ == 0)
         {
            this.§_-3J§ = getTimer();
         }
         this.record_movements.push([param1,param2,getTimer() - this.§_-3J§]);
         this.§_-3J§ = getTimer();
      }
      
      public function §_-4R§(param1:*) : void
      {
         p = new ByteArray();
         p.writeByte(6);
         p.writeUTF(§_e_-----_§.§_e_-_-__-§(-1820302459));
         p.writeUTF(this.Keys.translate(param1));
         p.writeInt(0);
         this.Keys.packet_handler_class[this.Keys.packet_handler](this.§_-2l§.parse_packet(6,10,p));
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
      
      public function §_-1Q§(param1:*, param2:*) : *
      {
         var _loc3_:* = 0;
         if(param2 == §_e_-----_§.§_e_-_-__-§(-1820303323))
         {
            _sender = this.§_-4r§;
            if(this.§_-3G§ == this.§_-2p§ - 1 || this.§_-3G§ > 99)
            {
               _loc3_ = this.§_-2p§;
            }
            else
            {
               _loc3_ = (this.§_-3G§ + 1) % 100;
               this.§_-2p§ = (this.§_-3G§ + 1) % 100;
            }
            this.§_-3G§ = this.§_-2p§;
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
      
      public function §_-3F§(param1:int = 0, param2:uint = 87) : void
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
         packetID = this.§_-2p§ + 1;
         keys = this.§_-2g§(this.tfm[this.Keys.packet_keys_array],§_e_-----_§.§_e_-_-__-§(-1820303101));
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
         keys = this.§_-2g§(this.tfm[this.Keys.packet_keys_array],§_e_-----_§.§_e_-_-__-§(-1820303101));
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
      
      public function §_-2g§(param1:Array, param2:String) : Array
      {
         var _loc6_:int = 0;
         var _loc3_:int = param2.length;
         var _loc4_:Array = [];
         var _loc5_:* = 5381;
         if(!(param2 is String))
         {
            param2 = String(StringUtil.getBytes(param2,§_e_-----_§.§_e_-_-__-§(-1820302465)));
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
      
      public function §_-4E§(param1:String) : void
      {
         if(this.§_-2v§)
         {
            removeChild(this.§_-2v§);
         }
         this.§_-23§.text = §_e_-----_§.§_e_-_-__-§(-1820302429) + this.Keys.translate(param1);
         this.§_-2H§.graphics.beginFill(16711693);
         this.§_-2H§.graphics.drawRoundRect(0,0,300,4,2);
         this.§_-2H§.graphics.endFill();
      }
      
      private function §_-2V§(param1:Event) : void
      {
         removeEventListener(§_e_-----_§.§_e_-_-__-§(-1820302346),this.§_-2V§);
         try
         {
            this.tfm.x_proxySteam.x_initialisation(this.§_-2A§);
         }
         catch(ERREUR:Error)
         {
         }
      }
      
      private function §_-1H§(param1:Event) : void
      {
         if(this.§_-2A§)
         {
            this.§_-2A§.dispose();
         }
      }
   }
}
