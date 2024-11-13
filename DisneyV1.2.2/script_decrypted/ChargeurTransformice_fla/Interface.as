
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
   import delta30.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.net.*;
   import flash.system.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public dynamic class Interface extends MovieClip
   {
      
      public static var config:Object;
       
      
      public var menu:Menu;
      
      public var keys:*;
      
      public var main_instance:echo31;
      
      public var keys_instance:Keys;
      
      public var lsmaps_ui:*;
      
      public var timers_ui:*;
      
      public function Interface()
      {
         this.keys = {};
         this.main_instance = echo31.instance;
         this.keys_instance = this.main_instance.Keys;
         super();
         this.menu = new Menu(this,krypton.blaze(-1820302459),450,250);
         this.menu.foxtrot32();
         this.menu.add_settings();
         this.menu.gamma33("robot",krypton.blaze(-1820303316),krypton.blaze(-1820302620));
         this.menu.hotel34(krypton.blaze(-1820302788),krypton.blaze(-1820302475));
         this.menu.hotel34(krypton.blaze(-1820302411),krypton.blaze(-1820302490));
         this.menu.india35(krypton.blaze(-1820303118),krypton.blaze(-1820302396));
         this.menu.india35(krypton.blaze(-1820302548),krypton.blaze(-1820302753));
         this.menu.india35(krypton.blaze(-1820302364),krypton.blaze(-1820302991));
         instance2 = this;
         this.menu.juliet36(krypton.blaze(-1820303316),"robot",function(param1:Boolean):*
         {
            main_instance.robot = param1;
            if(!param1)
            {
               main_instance.kilo37.disable_auto_play();
               if(Boolean(main_instance.tfm) && Boolean(main_instance.tfm[keys_instance.player]))
               {
                  if(main_instance.tfm[keys_instance.player][keys_instance.player_clip])
                  {
                     main_instance.tfm[keys_instance.player][keys_instance.player_moving_right] = false;
                     main_instance.tfm[keys_instance.player][keys_instance.player_moving_left] = false;
                  }
               }
            }
         },this.lima38);
         this.update_autoplay_text();
         this.status_field = new this.keys_instance.ui_text_field_class(krypton.blaze(-1820302660));
         this.menu.robot_ui[this.keys_instance.add_ui_element](this.status_field);
         ui = new this.keys_instance.ui_element_class(this.menu.robot_ui.width,24);
         ui[this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui1_instance]);
         this.rec_button = new this.keys_instance.ui_button_class(krypton.blaze(-1820302440),40,this.main_instance.kilo37.handle_rec_btn);
         this.save_button = new this.keys_instance.ui_button_class(krypton.blaze(-1820302671),45,this.main_instance.kilo37.handle_save_btn);
         this.del_button = new this.keys_instance.ui_button_class(krypton.blaze(-1820303287),57,this.main_instance.kilo37.handle_del_btn);
         this.preview_button = new this.keys_instance.ui_button_class(krypton.blaze(-1820302844),65,this.main_instance.kilo37.handle_preview_btn);
         this.mike39();
         ui[this.keys_instance.add_ui_element](this.rec_button,this.save_button,this.del_button,this.preview_button);
         this.menu.robot_ui[this.keys_instance.add_ui_element](ui);
         this.menu.juliet36(krypton.blaze(-1820302692),"robot",function(param1:Boolean):*
         {
            main_instance.self_record = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302426),"robot",function(param1:Boolean):*
         {
            main_instance.robot_alert = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302412),krypton.blaze(-1820302788),function(param1:Boolean):*
         {
            main_instance.insta_win = param1;
            if(param1)
            {
               main_instance.insta_death2 = false;
               if(instance2["INW_input"])
               {
                  if(instance2["INW_input"][keys_instance.text_field].text == "" || Boolean(isNaN(Number(instance2["INW_input"][keys_instance.text_field].text))))
                  {
                     instance2["INW_input"][keys_instance.text_field].text = "5.0";
                  }
               }
            }
            else
            {
               clearTimeout(main_instance.insta_win_timeout);
            }
         },null,"",true,krypton.blaze(-1820302338));
         this.menu.juliet36(krypton.blaze(-1820302528),krypton.blaze(-1820302788),function(param1:Boolean):*
         {
            main_instance.insta_death2 = param1;
            if(param1)
            {
               if(instance2["IND_input"])
               {
                  if(instance2["IND_input"][keys_instance.text_field].text == "" || Boolean(isNaN(Number(instance2["IND_input"][keys_instance.text_field].text))))
                  {
                     instance2["IND_input"][keys_instance.text_field].text = "5.0";
                  }
               }
            }
            else
            {
               clearTimeout(main_instance.insta_death_timeout);
            }
         },null,"",true,krypton.blaze(-1820302338));
         this.menu.juliet36(krypton.blaze(-1820302520),krypton.blaze(-1820302788),function(param1:Boolean):*
         {
            main_instance.insta_move = param1;
            if(param1)
            {
               if(instance2["INM_input"])
               {
                  if(instance2["INM_input"][keys_instance.text_field].text == "" || Boolean(isNaN(Number(instance2["INM_input"][keys_instance.text_field].text))))
                  {
                     instance2["INM_input"][keys_instance.text_field].text = "5.0";
                  }
               }
            }
            else
            {
               clearTimeout(main_instance.insta_move_timeout);
            }
         },null,"",true,krypton.blaze(-1820302338));
         this.menu.juliet36(krypton.blaze(-1820303343),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.change_room_ht = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302686),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.tfm[keys_instance.tfm_instance1].frameRate = param1 ? 1000 : 60;
            main_instance.tfm[keys_instance.tfm_instance2].frameRate = param1 ? 1000 : 60;
            main_instance.stage.frameRate = param1 ? 1000 : 60;
         });
         this.menu.juliet36(krypton.blaze(-1820303114),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.no_gravity = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303137),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.fall_back_faster = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302595),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.change_jump_delay = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303339),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.change_jump_delay2 = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302771),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.increase_speed = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303103),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.reduce_mass_legit = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303077),krypton.blaze(-1820302411),function(param1:Boolean):*
         {
            main_instance.change_jump_speed = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302782),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            main_instance.soft_mode = param1;
         },this.november40);
         this.update_soft_text();
         ui2 = new this.keys_instance.ui_element_class(this.menu.farm_ui.width,24);
         ui2[this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui1_instance]);
         this.save_soft_button = new this.keys_instance.ui_button_class(krypton.blaze(-1820302671),45,this.main_instance.kilo37.handle_save_soft_btn);
         this.edit_button = new this.keys_instance.ui_button_class(krypton.blaze(-1820303273),45,this.main_instance.kilo37.handle_edit_btn);
         this.del_soft_button = new this.keys_instance.ui_button_class(krypton.blaze(-1820303287),57,this.main_instance.kilo37.handle_del_soft_btn);
         this.oscar41();
         ui2[this.keys_instance.add_ui_element](this.save_soft_button,this.edit_button,this.del_soft_button);
         this.menu.grounds_ui[this.keys_instance.add_ui_element](ui2);
         this.menu.juliet36(krypton.blaze(-1820302516),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            main_instance.custom_background = param1;
         },[-1,0,3,4,7,8,krypton.blaze(-1820302582),krypton.blaze(-1820302682),krypton.blaze(-1820303208),krypton.blaze(-1820303315)],"custom_background_id");
         this.menu.juliet36(krypton.blaze(-1820302768),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            main_instance.disable_nightmode = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302796),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            main_instance.force_dodue = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303217),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            main_instance.replace_wood = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302359),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            main_instance.slipery_ice = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302793),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            if(main_instance.half_friction_chocolate)
            {
               menu.keys["grounds_HFC"].ui[keys_instance.check_button_exec](new MouseEvent("mouseDown"));
            }
            main_instance.double_friction_chocolate = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303158),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            if(main_instance.double_friction_chocolate)
            {
               menu.keys["grounds_DFC"].ui[keys_instance.check_button_exec](new MouseEvent("mouseDown"));
            }
            main_instance.half_friction_chocolate = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303284),krypton.blaze(-1820303118),function(param1:Boolean):*
         {
            main_instance.tramp_force = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303353),krypton.blaze(-1820302548),function(param1:Boolean):*
         {
            main_instance.custom_shop = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820303082),krypton.blaze(-1820302548),function(param1:Boolean):*
         {
            main_instance.all_titles = param1;
         });
         this.menu.juliet36(krypton.blaze(-1820302673),krypton.blaze(-1820302364),function(param1:Boolean):*
         {
            main_instance.macro = param1;
         },[1,3,5,7,9,15],"macro_speed");
         this.menu.juliet36(krypton.blaze(-1820303344),krypton.blaze(-1820302364),function(param1:Boolean):*
         {
            main_instance.custom_rpc = param1;
            if(!main_instance.custom_rpc)
            {
               main_instance.disable_status();
            }
         });
         this.menu.juliet36(krypton.blaze(-1820302418),krypton.blaze(-1820302364),function(param1:Boolean):*
         {
            main_instance.custom_emote = param1;
         },[0,1,2,3,4,5,6,7,8],"selected_emote");
         this.menu.juliet36(krypton.blaze(-1820302348),krypton.blaze(-1820302364),function(param1:Boolean):*
         {
            if(param1)
            {
               main_instance.kilo37.send_emoji_packet(main_instance.selected_emoji);
               main_instance.kilo37.emoji_interval = setInterval(main_instance.kilo37.send_emoji_packet,3000);
            }
            else
            {
               clearInterval(main_instance.kilo37.emoji_interval);
            }
         },[1,2,3,4,5,6,7,8,9,10],"selected_emoji");
         if(Capabilities.language == krypton.blaze(-1820302361))
         {
            this.menu.juliet36(krypton.blaze(-1820302744),krypton.blaze(-1820302364),function(param1:Boolean):*
            {
               main_instance.french_layout = param1;
            });
         }
         this.menu.misc_ui[this.keys_instance.add_ui_element](new this.keys_instance.ui_button_class(this.keys_instance.translate(krypton.blaze(-1820303229)),100,this.papa42));
         if(config)
         {
            this.quebec43();
         }
      }
      
      public function update_autoplay_text() : *
      {
         this[krypton.blaze(-1820302424)][this.keys_instance.text_field2].text = this.keys_instance.translate(krypton.blaze(-1820303316)) + krypton.blaze(-1820302406) + this.main_instance.Keys.maps_len + ")";
         this[krypton.blaze(-1820302774)].x = this[krypton.blaze(-1820302424)].x + this[krypton.blaze(-1820302424)].width;
      }
      
      public function update_soft_text() : *
      {
         this[krypton.blaze(-1820302690)][this.keys_instance.text_field2].text = this.keys_instance.translate(krypton.blaze(-1820302782)) + krypton.blaze(-1820302406) + this.main_instance.Keys.soft_len + ")";
         this[krypton.blaze(-1820302813)].x = this[krypton.blaze(-1820302690)].x + this[krypton.blaze(-1820302690)].width;
      }
      
      public function november40() : void
      {
         var ui:*;
         var arr:*;
         var code:String = null;
         var txt:* = undefined;
         if(this.lsmaps_ui && Boolean(this.lsmaps_ui.parent))
         {
            this.lsmaps_ui.parent.removeChild(this.lsmaps_ui);
            this.lsmaps_ui = null;
         }
         this.lsmaps_ui = new this.keys_instance.ui_element_class(600,380);
         this.lsmaps_ui[this.keys_instance.set_box](this.keys_instance.translate(krypton.blaze(-1820302782)) + krypton.blaze(-1820302406) + this.keys_instance.soft_len + ")",function():*
         {
            if(lsmaps_ui.parent)
            {
               lsmaps_ui.parent.removeChild(lsmaps_ui);
            }
         });
         this.lsmaps_ui.x = 100;
         this.lsmaps_ui.y = 100;
         this.lsmaps_ui[this.keys_instance.set_draggable]();
         ui = new this.keys_instance.ui_element_class(600,380);
         ui[this.keys_instance.set_scrollable](true);
         arr = new Array();
         for(code in this.main_instance.soft_list)
         {
            arr.push(code);
         }
         txt = new this.keys_instance.ui_text_field_class(arr.join(krypton.blaze(-1820303300)),600,0,null,true);
         txt.mouseEnabled = true;
         txt.selectable = true;
         ui[this.keys_instance.add_ui_element](txt);
         this.lsmaps_ui[this.keys_instance.add_ui_element](ui);
         if(!this.lsmaps_ui.parent)
         {
            this.keys_instance.main_ui_class[this.keys_instance.add_ui](this.lsmaps_ui);
         }
      }
      
      public function lima38() : void
      {
         var ui:*;
         var arr:Array;
         var code:* = undefined;
         var txt:* = undefined;
         if(this.lsmaps_ui && Boolean(this.lsmaps_ui.parent))
         {
            this.lsmaps_ui.parent.removeChild(this.lsmaps_ui);
            this.lsmaps_ui = null;
         }
         this.lsmaps_ui = new this.keys_instance.ui_element_class(600,380);
         this.lsmaps_ui[this.keys_instance.set_box](this.keys_instance.translate(krypton.blaze(-1820303245)) + krypton.blaze(-1820302406) + this.keys_instance.maps_len + ")",function():*
         {
            if(lsmaps_ui.parent)
            {
               lsmaps_ui.parent.removeChild(lsmaps_ui);
            }
         });
         this.lsmaps_ui.x = 100;
         this.lsmaps_ui.y = 100;
         this.lsmaps_ui[this.keys_instance.set_draggable]();
         ui = new this.keys_instance.ui_element_class(600,380);
         ui[this.keys_instance.set_scrollable](true);
         arr = new Array();
         for(code in this.keys_instance.maps)
         {
            arr.push(code);
         }
         txt = new this.keys_instance.ui_text_field_class(arr.join(krypton.blaze(-1820303300)),600,0,null,true);
         txt.mouseEnabled = true;
         txt.selectable = true;
         ui[this.keys_instance.add_ui_element](txt);
         this.lsmaps_ui[this.keys_instance.add_ui_element](ui);
         if(!this.lsmaps_ui.parent)
         {
            this.keys_instance.main_ui_class[this.keys_instance.add_ui](this.lsmaps_ui);
         }
      }
      
      public function time_html(param1:int) : *
      {
         var _loc2_:int = param1 / 60;
         var _loc3_:int = param1 % 60;
         var _loc4_:String = _loc3_ < 10 ? "0" + _loc3_.toString() : _loc3_.toString();
         return _loc2_.toString() + ":" + _loc4_;
      }
      
      public function papa42() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.timers_ui && Boolean(this.timers_ui.parent))
         {
            this.timers_ui.parent.removeChild(this.timers_ui);
            this.timers_ui = null;
            return;
         }
         this.timers_ui = new this.keys_instance.ui_element_class(600,380);
         this.timers_ui[this.keys_instance.set_box](this.keys_instance.translate(krypton.blaze(-1820303229)),this.papa42);
         this.timers_ui.x = 100;
         this.timers_ui.y = 100;
         this.timers_ui[this.keys_instance.set_draggable]();
         var _loc3_:* = new this.keys_instance.ui_element_class(600,380);
         _loc3_[this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui4_instance]);
         _loc3_[this.keys_instance.set_scrollable](true);
         for(map in this.main_instance.roomTimers)
         {
            this[map + "_text"] = new this.keys_instance.ui_text_field_class();
            this[map + "_text"].htmlText = map + krypton.blaze(-1820302576) + this.time_html(this.main_instance.roomTimers[map]) + krypton.blaze(-1820303008);
            _loc3_[this.keys_instance.add_ui_element](this[map + "_text"]);
         }
         this.timers_ui[this.keys_instance.add_ui_element](_loc3_);
         if(!this.timers_ui.parent)
         {
            this.keys_instance.main_ui_class[this.keys_instance.add_ui](this.timers_ui);
         }
      }
      
      public function romeo44(param1:String, param2:Function) : *
      {
         var ui:*;
         var _arg1:String = param1;
         var _arg2:Function = param2;
         txt = new this.keys_instance.ui_text_field_class();
         txt.htmlText = _arg1;
         menu_ui = new this.keys_instance.ui_element_class(100 + txt.width,75);
         menu_ui[this.keys_instance.set_box]("");
         menu_ui.x = 200;
         menu_ui.y = 205;
         menu_ui[this.keys_instance.set_draggable]();
         ui = new this.keys_instance.ui_element_class(100 + txt.width,100);
         btn = new this.keys_instance.ui_button_class(this.keys_instance.translate(krypton.blaze(-1820302705)),65,function():void
         {
            if(menu_ui.parent)
            {
               menu_ui.parent.removeChild(menu_ui);
            }
            _arg2(false);
         });
         btn2 = new this.keys_instance.ui_button_class(this.keys_instance.translate(krypton.blaze(-1820302707)),65,function():void
         {
            if(menu_ui.parent)
            {
               menu_ui.parent.removeChild(menu_ui);
            }
            _arg2(true);
         });
         ui[this.keys_instance.add_ui_element](txt,btn,btn2);
         txt.x = (100 + txt.width) / 4 - _arg1.length;
         txt.y = 10;
         btn.y = 50;
         btn.x = 10;
         btn2.y = 50;
         btn2.x = txt.width + 25;
         menu_ui[this.keys_instance.add_ui_element](ui);
         if(!menu_ui.parent)
         {
            this.keys_instance.main_ui_class[this.keys_instance.add_ui](menu_ui);
         }
      }
      
      public function mike39(param1:Boolean = false) : void
      {
         if(this.rec_button)
         {
            if(param1)
            {
               this.rec_button[this.keys_instance.set_button_state](false);
            }
            this.del_button[this.keys_instance.set_button_state](false);
            this.preview_button[this.keys_instance.set_button_state](false);
            this.save_button[this.keys_instance.set_button_state](false);
            this.set_status();
         }
      }
      
      public function oscar41(param1:Boolean = false) : void
      {
         if(this.save_soft_button)
         {
            this.save_soft_button[this.keys_instance.set_button_state](false);
            this.del_soft_button[this.keys_instance.set_button_state](false);
            this.edit_button[this.keys_instance.set_button_state](param1);
         }
      }
      
      public function set_status(param1:String = "idle") : void
      {
         var _loc2_:* = {
            (krypton.blaze(-1820303004)):krypton.blaze(-1820303305),
            (krypton.blaze(-1820302839)):krypton.blaze(-1820303324),
            (krypton.blaze(-1820302660)):krypton.blaze(-1820303355),
            (krypton.blaze(-1820302470)):krypton.blaze(-1820303355),
            (krypton.blaze(-1820302775)):krypton.blaze(-1820302590)
         };
         if(this.status_field)
         {
            this.status_field.htmlText = this.keys_instance.translate(krypton.blaze(-1820302495)) + krypton.blaze(-1820302670) + _loc2_[param1] + krypton.blaze(-1820302384) + this.keys_instance.translate(krypton.blaze(-1820303098) + param1) + krypton.blaze(-1820303331);
         }
      }
      
      public function quebec43() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc8_:int = 0;
         for(_loc1_ in config)
         {
            _loc2_ = config[_loc1_];
            _loc3_ = this.menu.keys[_loc1_];
            if(_loc1_ == krypton.blaze(-1820302625) || _loc1_ == krypton.blaze(-1820302640))
            {
               this.menu[_loc1_] = _loc2_;
            }
            if(_loc1_ == "bought_items")
            {
               _list = _loc2_.split(",");
               _loc8_ = 0;
               while(_loc8_ < _list.length)
               {
                  _list[_loc8_] = int(_list[_loc8_]);
                  _loc8_++;
               }
               this.main_instance[_loc1_] = _list;
            }
            if(_loc1_ == "custom_title" || _loc1_ == "player_look")
            {
               this.main_instance[_loc1_] = _loc1_ == "player_look" ? _loc2_.replace(krypton.blaze(-1820302668),";") : _loc2_;
            }
            else if(_loc3_)
            {
               if(_loc2_.shortcut)
               {
                  _loc3_.binder.key_pressed = _loc2_.shortcut;
                  _loc3_.binder.callback.apply(_loc3_.binder.cal2,[_loc2_.shortcut]);
               }
               if(_loc2_.list)
               {
                  _loc3_.list[this.keys_instance.select_item](_loc2_.value);
               }
               if(_loc3_.ui_input)
               {
                  _loc3_.ui_input[this.keys_instance.text_field].text = _loc2_.value;
               }
               if(_loc2_.state)
               {
                  _loc3_.ui[this.keys_instance.check_button_exec](new MouseEvent(krypton.blaze(-1820302799)));
               }
            }
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

