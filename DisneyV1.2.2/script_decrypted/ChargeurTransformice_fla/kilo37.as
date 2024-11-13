
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
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public class kilo37
   {
       
      
      public var images:Array;
      
      public var arcadia79:Array;
      
      private var blaze80:Array;
      
      private var cinder81:int;
      
      public var current_timeout:int;
      
      public var emoji_interval:int = -1;
      
      public var selected_emoji:uint = 10;
      
      public var main_instance:echo31;
      
      public var keys_instance:Keys;
      
      public var drake82:Boolean;
      
      public var ember83:Object;
      
      public var playing:Boolean;
      
      public var pressed_jump:Boolean;
      
      public function kilo37()
      {
         this.images = new Array();
         this.arcadia79 = new Array();
         this.ember83 = new Object();
         this.main_instance = echo31.instance;
         this.keys_instance = this.main_instance.Keys;
         super();
      }
      
      public function parse_packet(param1:int, param2:int, param3:ByteArray) : ByteArray
      {
         var _loc4_:*;
         (_loc4_ = new ByteArray()).writeByte(param1);
         _loc4_.writeByte(param2);
         param3.position = 0;
         _loc4_.writeBytes(param3);
         return _loc4_;
      }
      
      public function frost84(param1:String, param2:Boolean = false) : *
      {
         var _loc4_:* = undefined;
         if(param2)
         {
            (_loc4_ = new this.keys_instance.packet_out_class(1,1))[this.keys_instance.packet_out_bytes].writeUTF(param1);
            return _loc4_;
         }
         var _loc3_:* = new ByteArray();
         _loc3_.writeUTF(param1);
         return this.parse_packet(1,1,_loc3_);
      }
      
      public function new_map_packet(param1:int, param2:int, param3:int, param4:ByteArray, param5:String, param6:int, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int) : ByteArray
      {
         var _loc12_:*;
         (_loc12_ = new ByteArray()).writeInt(param1);
         _loc12_.writeShort(param2);
         _loc12_.writeByte(param3);
         _loc12_.writeInt(param4.length);
         _loc12_.writeBytes(param4,0,param4.length);
         _loc12_.writeUTF(param5);
         _loc12_.writeByte(param6);
         _loc12_.writeBoolean(param7);
         _loc12_.writeBoolean(param8);
         _loc12_.writeBoolean(param9);
         _loc12_.writeBoolean(param10);
         _loc12_.writeInt(param11);
         return this.parse_packet(5,2,_loc12_);
      }
      
      public function new_load_map_packet(param1:String) : ByteArray
      {
         this.keys_instance.packet_handler_class[this.keys_instance.packet_handler](this.frost84(String.fromCharCode(14) + String.fromCharCode(9) + String.fromCharCode(1) + param1));
         this.keys_instance.packet_handler_class[this.keys_instance.packet_handler](this.frost84(String.fromCharCode(14) + String.fromCharCode(17) + String.fromCharCode(1) + ""));
      }
      
      public function player_victory() : void
      {
         this.main_instance.tfm[this.keys_instance.player][this.keys_instance.player_moving_right] = true;
         this.glacier85();
         this.horizon86();
      }
      
      public function writeEncoded(param1:*, param2:int) : void
      {
         var _loc3_:* = param2 >> 7;
         var _loc4_:Boolean = Boolean(krypton.blaze(-1820303252));
         var _loc5_:int = (param2 & 2147483648) == 0 ? 0 : int(-1);
         while(_loc4_)
         {
            _loc4_ = _loc3_ != _loc5_ || (_loc3_ & 1) != (param2 >> 6 & 1);
            param1.writeByte(param2 & 127 | (_loc4_ ? 128 : 0));
            param2 = _loc3_;
            _loc3_ >>= 7;
         }
      }
      
      public function ignis87(param1:*) : int
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = -1;
         do
         {
            _loc2_ = param1.readByte() & 255;
            _loc3_ |= (_loc2_ & 127) << _loc4_ * 7;
            _loc5_ <<= 7;
            _loc4_++;
         }
         while((_loc2_ & 128) == 128 && _loc4_ < 5);
         
         if((_loc5_ >> 1 & _loc3_) != 0)
         {
            _loc3_ |= _loc5_;
         }
         return _loc3_;
      }
      
      public function jaguar88(param1:*, param2:Boolean = false) : void
      {
         var _loc3_:* = undefined;
         if(param2)
         {
            _loc3_ = this.keys_instance.socket_class[this.keys_instance.main_socket_instance];
            _loc3_[this.keys_instance.data_sender](param1);
         }
         else
         {
            _loc3_ = this.keys_instance.socket_class[this.keys_instance.bulle_socket_instance];
            _loc3_[this.keys_instance.data_sender](param1);
         }
      }
      
      public function kinetic89(param1:int, param2:int, param3:int = 0, param4:int = 0, param5:int = 0, param6:int = 0) : void
      {
         var _loc7_:ByteArray = new ByteArray();
         this.writeEncoded(_loc7_,param1);
         this.writeEncoded(_loc7_,param2);
         _loc7_.writeByte(param3);
         this.writeEncoded(_loc7_,param4);
         this.writeEncoded(_loc7_,param5);
         _loc7_.writeByte(param6);
         this.keys_instance.packet_handler_class[this.keys_instance.packet_handler](this.parse_packet(8,3,_loc7_));
      }
      
      public function lunar90() : void
      {
         this.keys_instance.socket_class[this.keys_instance.bulle_socket_instance][this.keys_instance.data_sender](new this.keys_instance.command_packet_class(krypton.blaze(-1820302492)));
      }
      
      public function mirage91(param1:int = 0) : void
      {
         var _loc2_:* = new this.keys_instance.packet_out_class(4,9);
         _loc2_[this.keys_instance.packet_out_bytes].writeByte(param1);
         this.jaguar88(_loc2_);
      }
      
      public function play_map(param1:Event = null) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(Boolean(this.keys_instance.move_class[this.keys_instance.move_free]) && !this.keys_instance.timer_class[this.keys_instance.timer_prop])
         {
            this.main_instance.stage.removeEventListener(Event.ENTER_FRAME,this.play_map);
            if(this.main_instance.self_record)
            {
               self.main_instance.moved = true;
            }
            if(!this.main_instance.nova92)
            {
               _loc3_ = this.main_instance.current_map_code;
               if(_loc3_ in this.main_instance.Keys.maps)
               {
                  _loc2_ = String(this.main_instance.Keys.maps[_loc3_]);
               }
            }
            else
            {
               _loc2_ = String(this.main_instance.current_map_data);
            }
            if(_loc2_)
            {
               this.blaze80 = victor48.decode(_loc2_) as Array;
               this.cinder81 = -1;
               this.ember83 = new Object();
               this.playing = true;
               this.play_sequence();
            }
         }
      }
      
      public function play_sequence() : void
      {
         ++this.cinder81;
         if(this.cinder81 >= this.blaze80.length)
         {
            this.playing = false;
            return;
         }
         var _loc1_:Array = this.blaze80[this.cinder81];
         if(_loc1_[2] == undefined || this.cinder81 == 0)
         {
            _loc1_[2] = 1;
         }
         this.current_timeout = setTimeout(this.obelisk93,_loc1_[2],_loc1_[0],_loc1_[1]);
      }
      
      public function disable_auto_play() : void
      {
         this.playing = false;
         clearTimeout(this.current_timeout);
         this.current_timeout = -1;
         try
         {
            this.main_instance.stage.removeEventListener(Event.ENTER_FRAME,this.play_map);
         }
         catch(e:Error)
         {
         }
      }
      
      public function handle_edit_btn() : *
      {
         _arg2 = this.main_instance.current_map_code;
         soft_map = this.main_instance.soft_list[_arg2];
         if(soft_map)
         {
            map = soft_map;
         }
         else
         {
            map = this.main_instance.current_map_xml;
         }
         this.main_instance.Interface.romeo44(this.keys_instance.translate(krypton.blaze(-1820303111)),function(param1:*):*
         {
            if(param1)
            {
               main_instance.execute_command("/editeur");
               main_instance.soft_mode_map = _arg2;
               main_instance.soft_mode_map_xml = map;
            }
         });
      }
      
      public function handle_save_soft_btn() : *
      {
         if(!this.main_instance.current_map_xml)
         {
            this.keys_instance.chat_class2[this.keys_instance.chat_message2](krypton.blaze(-1820302678));
            return;
         }
         this.save_soft(this.main_instance.soft_mode_map,this.main_instance.current_map_xml);
         this.jaguar88(this.frost84(String.fromCharCode(14) + String.fromCharCode(26) + String.fromCharCode(1) + "",true),true);
      }
      
      public function handle_del_soft_btn() : *
      {
         this.save_soft(this.main_instance.soft_mode_map);
      }
      
      public function save_soft(param1:String, param2:String = null) : void
      {
         var soft:Object;
         var loader:URLLoader;
         var request:URLRequest;
         var vars:URLVariables;
         var deleting:Boolean = false;
         param1 = param1.indexOf("@") < 0 ? "@" + param1 : param1;
         deleting = param2 == null;
         if(deleting && !(param1 in this.main_instance.soft_list))
         {
            return;
         }
         soft = {};
         soft[param1] = param2;
         loader = new URLLoader();
         loader.addEventListener(HTTPStatusEvent.HTTP_STATUS,function(param1:HTTPStatusEvent):*
         {
            var _loc2_:Boolean = false;
            if(param1.status == 204)
            {
               if(param2 == null)
               {
                  delete main_instance.soft_list[param1];
                  --keys_instance.soft_len;
                  _loc2_ = true;
               }
               else
               {
                  if(!(param1 in main_instance.soft_list))
                  {
                     ++keys_instance.soft_len;
                     _loc2_ = true;
                  }
                  main_instance.soft_list[param1] = param2;
               }
               if(main_instance.Interface)
               {
                  main_instance.Interface.update_soft_text();
               }
               keys_instance.chat_class2[keys_instance.chat_message2]("<VP>Soft mode: map " + param1 + (param2 == null ? " removed" : " added") + "</VP>");
               main_instance.Interface.del_soft_button[keys_instance.set_button_state](!deleting);
               main_instance.Interface.save_soft_button[keys_instance.set_button_state](deleting);
            }
            else
            {
               keys_instance.chat_class2[keys_instance.chat_message2]("<R>Soft mode: failed to " + (param2 == null ? "remove map " : "add map ") + param1 + "</R>");
               main_instance.Interface.save_soft_button[keys_instance.set_button_state](!deleting);
               main_instance.Interface.del_soft_button[keys_instance.set_button_state](deleting);
            }
         });
         request = new URLRequest(this.main_instance.host_url + krypton.blaze(-1820302630) + this.main_instance.token);
         vars = new URLVariables();
         vars.soft = victor48.encode(soft);
         request.data = vars;
         request.method = URLRequestMethod.POST;
         loader.load(request);
      }
      
      public function save_movement() : void
      {
         player = this.main_instance.tfm[this.keys_instance.player];
         if(!this.playing)
         {
            rec = {};
            rec.mr = player[this.keys_instance.player_moving_right];
            rec.ml = player[this.keys_instance.player_moving_left];
            _local8 = player[this.keys_instance.player_physics];
            rec.x = int(_local8[this.keys_instance.get_x_form].position[this.keys_instance.pos_x] * 100);
            rec.y = int(_local8[this.keys_instance.get_x_form].position[this.keys_instance.pos_y] * 100);
            rec.vx = int(_local8[this.keys_instance.get_linear_velocity][this.keys_instance.pos_x] * 100);
            rec.vy = int(_local8[this.keys_instance.get_linear_velocity][this.keys_instance.pos_y] * 100);
            rec.fc = int(_local8[this.keys_instance.friction_charge] * 100);
            rec.fr = int(_local8[this.keys_instance.friction_rate] * 100);
            rec.jump = player[this.keys_instance.is_jumping];
            rec.frame = player[this.keys_instance.current_frame];
            if(this.main_instance.reverse_map)
            {
               rec.x = (this.main_instance.map_width / 30 - rec.x / 100) * 100;
               rec.vx = -rec.vx;
               if(Boolean(rec.mr) || Boolean(rec.ml))
               {
                  rec.mr = !rec.mr;
                  rec.ml = !rec.ml;
               }
            }
            this.main_instance.save_movement(rec,krypton.blaze(-1820302596));
         }
      }
      
      public function handle_rec_btn() : void
      {
      }
      
      public function handle_del_btn() : void
      {
         var _local2:URLLoader;
         var _local3:URLRequest;
         var _local4:URLVariables;
      }
      
      public function handle_save_btn() : void
      {
         var _local2:URLLoader;
         var _local3:URLRequest;
         var _local4:URLVariables;
         var _local5:ByteArray;
      }
      
      public function handle_preview_btn() : void
      {
      }
      
      public function pulse94(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
      
      public function send_emoji_packet(param1:int = -1) : void
      {
         var _loc2_:* = new this.keys_instance.packet_out_class(8,5);
         _loc2_[this.keys_instance.packet_out_bytes].writeShort(param1 == -1 ? this.main_instance.selected_emoji : param1);
         this.jaguar88(_loc2_);
         p = new ByteArray();
         p.writeInt(this.main_instance.tfm[this.keys_instance.player][this.keys_instance.player_id]);
         p.writeShort(param1 == -1 ? this.main_instance.selected_emoji : param1);
         this.keys_instance.packet_handler_class[this.keys_instance.packet_handler](this.parse_packet(8,5,p));
      }
      
      public function send_emote(param1:int = 0, param2:String = "") : void
      {
         p = new ByteArray();
         p.writeInt(this.main_instance.tfm[this.keys_instance.player][this.keys_instance.player_id]);
         p.writeByte(param1);
         if(param1 == 10)
         {
            p.writeUTF(param2);
         }
         p.writeBoolean(param1 > 10);
         this.keys_instance.packet_handler_class[this.keys_instance.packet_handler](this.parse_packet(8,1,p));
         var _loc3_:* = new this.keys_instance.packet_out_class(8,1);
         _loc3_[this.keys_instance.packet_out_bytes].writeByte(param1);
         _loc3_[this.keys_instance.packet_out_bytes].writeInt(0);
         if(param1 == 10)
         {
            _loc3_[this.keys_instance.packet_out_bytes].writeUTF(param2);
         }
         this.jaguar88(_loc3_);
      }
      
      public function quest95(param1:uint, param2:Boolean) : void
      {
         if(this.main_instance.french_layout)
         {
            if(param1 == Keyboard.A)
            {
               param1 = uint(Keyboard.Q);
            }
            if(param1 == Keyboard.W)
            {
               param1 = uint(Keyboard.Z);
            }
         }
         var _loc3_:* = this.ember83[param1] == true;
         if(param2 && !_loc3_)
         {
            this.ember83[param1] = true;
            this.raven96(param1,true);
         }
         else if(!param2 && _loc3_)
         {
            this.ember83[param1] = false;
            this.raven96(param1,false);
         }
      }
      
      public function raven96(param1:uint, param2:Boolean) : void
      {
         var _loc3_:KeyboardEvent = null;
         if(param2)
         {
            _loc3_ = new KeyboardEvent(KeyboardEvent.KEY_DOWN,true,false,0,param1,4);
         }
         else
         {
            _loc3_ = new KeyboardEvent(KeyboardEvent.KEY_UP,true,false,0,param1,4);
         }
         this.main_instance.tfm.dispatchEvent(_loc3_);
      }
      
      public function obelisk93(param1:*, param2:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Object = null;
         var _loc5_:*;
         if((_loc5_ = this.main_instance.tfm[this.keys_instance.player]) && this.playing)
         {
            if(param2 == krypton.blaze(-1820302596))
            {
               _loc6_ = Boolean(_loc5_[this.keys_instance.player_moving_right]);
               _loc7_ = Boolean(_loc5_[this.keys_instance.player_moving_left]);
               _loc8_ = this.pulse94(param1);
               if(this.main_instance.reverse_map)
               {
                  _loc8_["x"] = (this.main_instance.map_width / 30 - _loc8_["x"] / 100) * 100;
                  _loc8_[krypton.blaze(-1820303134)] = -_loc8_[krypton.blaze(-1820303134)];
                  if(Boolean(_loc8_[krypton.blaze(-1820303317)]) || Boolean(_loc8_[krypton.blaze(-1820303314)]))
                  {
                     _loc8_[krypton.blaze(-1820303317)] = !_loc8_[krypton.blaze(-1820303317)];
                     _loc8_[krypton.blaze(-1820303314)] = !_loc8_[krypton.blaze(-1820303314)];
                  }
               }
               _local_21 = _loc5_[this.keys_instance.player_physics];
               _local_21[this.keys_instance.change_player_pos](new this.keys_instance.player_pos_class(_loc8_["x"] / 100,_loc8_["y"] / 100),0);
               if(_loc8_[krypton.blaze(-1820302428)])
               {
                  if(!_loc5_[this.keys_instance.is_jumping])
                  {
                     this.quest95(Keyboard.W,true);
                     this.pressed_jump = true;
                  }
                  _loc5_[this.keys_instance.jump](true,_loc8_["frame"]);
               }
               else
               {
                  if(this.pressed_jump)
                  {
                     this.quest95(Keyboard.W,false);
                     this.pressed_jump = false;
                  }
                  _loc5_[this.keys_instance.jump](false);
               }
               if(_loc8_[krypton.blaze(-1820303317)])
               {
                  if(!_loc6_)
                  {
                     this.quest95(Keyboard.D,_loc8_[krypton.blaze(-1820303317)]);
                  }
                  if(_loc7_ && !_loc8_[krypton.blaze(-1820303314)])
                  {
                     this.quest95(Keyboard.A,_loc8_[krypton.blaze(-1820303314)]);
                  }
               }
               else if(_loc8_[krypton.blaze(-1820303314)])
               {
                  if(!_loc7_)
                  {
                     this.quest95(Keyboard.A,_loc8_[krypton.blaze(-1820303314)]);
                  }
                  if(_loc6_ && !_loc8_[krypton.blaze(-1820303317)])
                  {
                     this.quest95(Keyboard.D,_loc8_[krypton.blaze(-1820303317)]);
                  }
               }
               else if(_loc6_ || _loc7_)
               {
                  if(_loc6_)
                  {
                     this.quest95(Keyboard.D,_loc8_[krypton.blaze(-1820303317)]);
                  }
                  else
                  {
                     this.quest95(Keyboard.A,_loc8_[krypton.blaze(-1820303314)]);
                  }
               }
               _loc5_[this.keys_instance.player_moving_right] = _loc8_[krypton.blaze(-1820303317)];
               _loc5_[this.keys_instance.player_moving_left] = _loc8_[krypton.blaze(-1820303314)];
               _local_21[this.keys_instance.get_linear_velocity][this.keys_instance.pos_x] = _loc8_[krypton.blaze(-1820303134)] / 100;
               _local_21[this.keys_instance.get_linear_velocity][this.keys_instance.pos_y] = _loc8_[krypton.blaze(-1820303136)] / 100;
               if(_loc8_[krypton.blaze(-1820302361)])
               {
                  _local_21[this.keys_instance.friction_charge] = _loc8_[krypton.blaze(-1820302340)] / 100;
                  _local_21[this.keys_instance.friction_rate] = _loc8_[krypton.blaze(-1820302361)] / 100;
               }
               this.jaguar88(this.keys_instance.packets_class[this.keys_instance.move_player_packet](_loc5_,0));
            }
            else if(param2 == krypton.blaze(-1820302456))
            {
               p = new this.keys_instance.packet_out_class(26,28);
               p[this.keys_instance.packet_out_bytes].writeShort(param1);
               this.jaguar88(p);
               this.jaguar88(p,true);
            }
            else if(param2 == krypton.blaze(-1820302558) || param2 == krypton.blaze(-1820302730))
            {
               this.quest95(Keyboard.S,param1 != 0);
            }
            else if(param2 == krypton.blaze(-1820302618))
            {
               this.glacier85();
               _loc5_[this.keys_instance.player_cheese] = true;
               this.main_instance.player_has_cheese = true;
            }
            else if(param2 == krypton.blaze(-1820302380))
            {
            }
            this.play_sequence();
         }
      }
      
      public function storm97() : void
      {
         var _loc1_:* = new this.keys_instance.packet_out_class(4,5);
         _loc1_[this.keys_instance.packet_out_bytes].writeInt(this.main_instance.current_round_code);
         _loc1_[this.keys_instance.packet_out_bytes].writeByte(0);
         this.jaguar88(_loc1_);
      }
      
      public function player_death() : void
      {
         this.main_instance.tfm[this.keys_instance.player][this.keys_instance.player_moving_right] = true;
         this.kinetic89(400,200,0,4,4);
         this.storm97();
      }
      
      public function player_move() : void
      {
         this.main_instance.tfm[this.keys_instance.player][this.keys_instance.player_moving_right] = true;
         var _loc1_:* = this.main_instance.tfm[this.keys_instance.player];
         _loc1_[this.keys_instance.animation_course](true);
      }
      
      public function thunder98(param1:Object) : void
      {
         var _loc3_:ByteArray = null;
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new ByteArray();
            _loc4_ = this.main_instance.tfm[this.keys_instance.player];
            if(_loc2_ == 1)
            {
               this.writeEncoded(_loc3_,_loc4_[this.keys_instance.player_id]);
            }
            else
            {
               this.writeEncoded(_loc3_,this.main_instance.current_round_code);
            }
            _loc3_.writeBoolean(param1[krypton.blaze(-1820303317)]);
            _loc3_.writeBoolean(param1[krypton.blaze(-1820303314)]);
            this.writeEncoded(_loc3_,param1["x"]);
            this.writeEncoded(_loc3_,param1["y"]);
            this.writeEncoded(_loc3_,param1[krypton.blaze(-1820303134)]);
            this.writeEncoded(_loc3_,param1[krypton.blaze(-1820303136)]);
            this.writeEncoded(_loc3_,param1[krypton.blaze(-1820302340)]);
            this.writeEncoded(_loc3_,param1[krypton.blaze(-1820302361)] / 10);
            _loc3_.writeBoolean(param1[krypton.blaze(-1820302428)]);
            this.writeEncoded(_loc3_,param1["frame"]);
            this.writeEncoded(_loc3_,0);
            _loc3_.position = 0;
            if(_loc2_ == 1)
            {
               _loc4_[this.keys_instance.is_self_player] = false;
               this.keys_instance.packet_handler_class[this.keys_instance.packet_handler](this.parse_packet(144,48,_loc3_));
               _loc4_[this.keys_instance.is_self_player] = true;
            }
            else
            {
               (_loc5_ = new this.keys_instance.packet_out_class(149,26))[this.keys_instance.packet_out_bytes].writeBytes(_loc3_);
               _loc5_[this.keys_instance.cipher] = true;
               this.jaguar88(_loc5_);
            }
            _loc2_++;
         }
      }
      
      public function horizon86() : void
      {
         var _loc1_:* = new this.keys_instance.packet_out_class(5,18);
         var _loc2_:* = this.keys_instance.map_class[this.keys_instance.map_instance][this.keys_instance.obj_container][this.keys_instance.hole_list];
         _loc1_[this.keys_instance.packet_out_bytes].writeByte(_loc2_[0]);
         _loc1_[this.keys_instance.packet_out_bytes].writeInt(this.main_instance.current_round_code);
         _loc1_[this.keys_instance.packet_out_bytes].writeInt(this.main_instance.ultra99);
         _loc1_[this.keys_instance.packet_out_bytes].writeShort(15);
         _loc1_[this.keys_instance.packet_out_bytes].writeShort(_loc2_[1]);
         _loc1_[this.keys_instance.packet_out_bytes].writeShort(_loc2_[2]);
         this.jaguar88(_loc1_);
      }
      
      public function glacier85() : void
      {
         var _loc1_:* = new this.keys_instance.packet_out_class(5,19);
         _loc1_[this.keys_instance.packet_out_bytes].writeInt(this.main_instance.current_round_code);
         _loc1_[this.keys_instance.packet_out_bytes].writeShort(this.keys_instance.map_class[this.keys_instance.map_instance][this.keys_instance.clip_fromage].x);
         _loc1_[this.keys_instance.packet_out_bytes].writeShort(this.keys_instance.map_class[this.keys_instance.map_instance][this.keys_instance.clip_fromage].y);
         _loc1_[this.keys_instance.packet_out_bytes].writeByte(0);
         _loc1_[this.keys_instance.packet_out_bytes].writeByte(this.main_instance.tfm[this.keys_instance.player][this.keys_instance.player_id2]);
         _loc1_[this.keys_instance.packet_out_bytes].writeShort(15);
         this.jaguar88(_loc1_);
      }
      
      public function save_config() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:URLLoader = null;
         var _loc3_:URLRequest = null;
         var _loc4_:URLVariables = null;
         var _loc5_:Object = null;
         this.main_instance.Interface.menu.config_button[this.keys_instance.set_button_state](false);
         var _loc6_:Object = {
            (krypton.blaze(-1820302625)):this.main_instance.Interface.menu.menu_x,
            (krypton.blaze(-1820302640)):this.main_instance.Interface.menu.menu_y,
            "custom_title":this.main_instance.custom_title,
            "bought_items":this.main_instance.bought_items.join(","),
            "player_look":this.main_instance.player_look
         };
         for(_loc1_ in this.main_instance.Interface.menu.keys)
         {
            if((_loc5_ = this.main_instance.Interface.menu.keys[_loc1_]).ui)
            {
               _loc5_.state = _loc5_.ui[this.keys_instance.is_selected];
            }
            if(_loc5_.ui_input)
            {
               _loc5_.value = _loc5_.ui_input[this.keys_instance.text_field].text;
            }
            _loc6_[_loc1_] = {
               (krypton.blaze(-1820302982)):this.xenon76(_loc5_.shortcut),
               (krypton.blaze(-1820302623)):_loc5_.state,
               "value":_loc5_.value,
               (krypton.blaze(-1820302736)):krypton.blaze(-1820302736) in _loc5_
            };
         }
         _loc2_ = new URLLoader();
         _loc2_.addEventListener(Event.COMPLETE,this.viper100);
         _loc3_ = new URLRequest(this.main_instance.host_url + krypton.blaze(-1820302630) + this.main_instance.token);
         (_loc4_ = new URLVariables()).config = victor48.encode(_loc6_);
         _loc3_.data = _loc4_;
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.load(_loc3_);
      }
      
      private function viper100(param1:Event) : void
      {
         this.main_instance.Interface.menu.config_button[this.keys_instance.set_button_state](true);
         if(this.main_instance.tfm)
         {
            this.main_instance.tfm[this.keys_instance.chat_message](krypton.blaze(-1820302592) + this.keys_instance.translate(krypton.blaze(-1820303166)) + krypton.blaze(-1820303046));
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
      
      public function get_map_width(param1:String) : uint
      {
         var _loc2_:Array = param1.match(new RegExp(krypton.blaze(-1820302382)));
         if(Boolean(_loc2_) && Boolean(_loc2_[2]))
         {
            return _loc2_[2];
         }
         return 800;
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

