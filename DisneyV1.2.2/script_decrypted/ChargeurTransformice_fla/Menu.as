
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
   import flash.ui.*;
   import flash.utils.*;
   
   public dynamic class Menu extends MovieClip
   {
       
      
      public var falcon58:Array;
      
      public var giraffe59:* = 25;
      
      public var hawk60:String = "general";
      
      public var keys:*;
      
      public var keyboard_instance:*;
      
      public var keys_instance:*;
      
      public var main_instance:*;
      
      public var infinity61:*;
      
      public var settings_button:*;
      
      public var settings_ui:*;
      
      public var config_button:*;
      
      public function Menu(param1:*, param2:String = "Menu", param3:int = 430, param4:int = 330)
      {
         this.falcon58 = [];
         this.keys = {};
         this.menu_x = param3;
         this.menu_y = param4;
         this.main_instance = echo31.instance;
         this.keys_instance = this.main_instance.Keys;
         this.keyboard_instance = this.main_instance.jupiter62;
         this.infinity61 = param1;
         super();
         this.menu_ui = new this.keys_instance.ui_element_class(param3,param4);
         this.menu_ui[this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui1_instance],30);
         this.menu_ui.x = 200;
         this.menu_ui.y = 105;
         this.menu_ui[this.keys_instance.set_box](param2,this.krypton63,11);
         this.side_ui = new this.keys_instance.ui_element_class(60,param4);
         this.side_ui[this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui4_instance],15);
         this.side_ui[this.keys_instance.set_scrollable](true);
         this.options_ui = new this.keys_instance.ui_element_class(param3 - 70,param4 - 25);
         this.menu_ui[this.keys_instance.add_ui_element](this.side_ui,this.options_ui);
         this.options_ui.x -= 20;
         this.menu_ui[this.keys_instance.set_draggable]();
      }
      
      public function foxtrot32() : void
      {
         this.menu_ui[this.keys_instance.set_shape](62,0,false,this.menu_y);
      }
      
      public function lightning64() : void
      {
         this.menu_ui[this.keys_instance.set_shape](0,this.menu_y - 62,true,this.menu_x);
      }
      
      public function add_settings() : void
      {
         this.settings_button = new this.keys_instance.ui_sprite2_class(this.main_instance.host_url + krypton.blaze(-1820302565),20,20);
         this.settings_ui = new this.keys_instance.ui_element_class(this.menu_x - 70,this.menu_y - 25);
         this.settings_ui[this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui1_instance],30);
         this.settings_ui.x = 100;
         this.settings_ui.y = 100;
         this.settings_ui[this.keys_instance.set_box](this.keys_instance.translate(krypton.blaze(-1820302679)),function():*
         {
            if(settings_ui.parent)
            {
               settings_ui.parent.removeChild(settings_ui);
            }
         },11);
         this.settings_ui[this.keys_instance.set_draggable]();
         this.settings_button[this.keys_instance.on_mouse_click](function():*
         {
            if(!settings_ui.parent)
            {
               keys_instance.main_ui_class[keys_instance.add_ui](settings_ui);
            }
         });
         this.menu_ui[this.keys_instance.add_ui_element](this.settings_button);
         this.settings_button.x = this.menu_x - 45;
         this.settings_button.y = -30;
         this.config_button = new this.keys_instance.ui_button_class(this.keys_instance.translate(krypton.blaze(-1820302633)),100,function():*
         {
            main_instance.kilo37.save_config();
         });
         this.profile_image = new this.keys_instance.ui_sprite2_class(this.main_instance.host_url + krypton.blaze(-1820303062),20,20);
         this.disney_username = new this.keys_instance.ui_text_field_class(this.main_instance.disney_username);
         this.settings_ui[this.keys_instance.add_ui_element](this.config_button,this.profile_image,this.disney_username);
         this.profile_image.y = this.menu_y - 80;
         this.profile_image.x = 5;
         this.disney_username.y = this.menu_y - 63;
         this.disney_username.x = 60;
         this.config_button.x = this.menu_x - 170;
         this.config_button.y = this.menu_y - 45;
      }
      
      public function gamma33(param1:String, param2:String, param3:String) : void
      {
         var name:String = param1;
         var def:String = param2;
         var url:String = param3;
         this[name + krypton.blaze(-1820302566)] = new this.keys_instance.ui_sprite2_class(this.main_instance.host_url + url,20,20);
         this[name + krypton.blaze(-1820302566)][this.keys_instance.on_mouse_click](function():*
         {
            change_menu_tab(name);
         });
         this[name + krypton.blaze(-1820302479)] = new this.keys_instance.ui_element_class(this.menu_x - 70,this.menu_y - 25);
         this[name + krypton.blaze(-1820302479)][this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui4_instance]);
         this[name + krypton.blaze(-1820302479)][this.keys_instance.set_scrollable](true);
         this.keys_instance.ui_manager_class[this.keys_instance.on_mouse_box](this[name + krypton.blaze(-1820302566)],this.keys_instance.translate(def));
         this.menu_ui[this.keys_instance.add_ui_element](this[name + krypton.blaze(-1820302566)]);
         this[name + krypton.blaze(-1820302566)].x = 20;
         this[name + krypton.blaze(-1820302566)].y = -30;
      }
      
      public function india35(param1:String, param2:String) : void
      {
         var name:String = param1;
         var url:String = param2;
         this[name + krypton.blaze(-1820302566)] = new this.keys_instance.ui_sprite2_class(this.main_instance.host_url + url,20,20);
         this[name + krypton.blaze(-1820302566)][this.keys_instance.on_mouse_click](function():*
         {
            change_menu_tab(name);
         });
         this[name + krypton.blaze(-1820302479)] = new this.keys_instance.ui_element_class(this.menu_x - 70,this.menu_y - 25);
         this[name + krypton.blaze(-1820302479)][this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui4_instance]);
         this[name + krypton.blaze(-1820302479)][this.keys_instance.set_scrollable](true);
         this.keys_instance.ui_manager_class[this.keys_instance.on_mouse_box](this[name + krypton.blaze(-1820302566)],this.keys_instance.translate(name));
         this.side_ui[this.keys_instance.add_ui_element](this[name + krypton.blaze(-1820302566)]);
         this[name + krypton.blaze(-1820302566)].x = 3;
         if(this.falcon58[this.falcon58.length - 1])
         {
            if(this.falcon58[this.falcon58.length - 1].indexOf(krypton.blaze(-1820302402)) != -1)
            {
               this.giraffe59 -= 10;
            }
            if(this.falcon58[this.falcon58.length - 1].indexOf(krypton.blaze(-1820302566)) != -1)
            {
               this.giraffe59 += 25;
            }
         }
         this.falcon58.push(name + krypton.blaze(-1820302566));
         this[name + krypton.blaze(-1820302566)].y = this.giraffe59;
         this.giraffe59 += 30;
      }
      
      public function hotel34(param1:String, param2:String) : void
      {
         var name:String = param1;
         var definition:String = param2;
         this[name + krypton.blaze(-1820302566)] = this.keys_instance.domain_manager_class[this.keys_instance.get_definition](definition);
         this[name + krypton.blaze(-1820302566)].cacheAsBitmap = true;
         this[name + krypton.blaze(-1820302402)] = new this.keys_instance.ui_sprite_class(20,20);
         this[name + krypton.blaze(-1820302402)][this.keys_instance.on_mouse_click](function():*
         {
            change_menu_tab(name);
         });
         this[name + krypton.blaze(-1820302479)] = new this.keys_instance.ui_element_class(this.menu_x - 70,this.menu_y - 25);
         this[name + krypton.blaze(-1820302479)][this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui4_instance]);
         this[name + krypton.blaze(-1820302479)][this.keys_instance.set_scrollable](true);
         this[name + krypton.blaze(-1820302402)].addChild(this[name + krypton.blaze(-1820302566)]);
         this.keys_instance.ui_manager_class[this.keys_instance.on_mouse_box](this[name + krypton.blaze(-1820302402)],this.keys_instance.translate(name));
         this.side_ui[this.keys_instance.add_ui_element](this[name + krypton.blaze(-1820302402)]);
         this[name + krypton.blaze(-1820302402)].x = 30;
         if(this.falcon58[this.falcon58.length - 1])
         {
            if(this.falcon58[this.falcon58.length - 1].indexOf(krypton.blaze(-1820302402)) != -1)
            {
               this.giraffe59 += 15;
            }
         }
         this.falcon58.push(name + krypton.blaze(-1820302402));
         this[name + krypton.blaze(-1820302402)].y = this.giraffe59;
         this.giraffe59 += 30;
      }
      
      public function change_menu_tab(param1:String = "general") : void
      {
         this.options_ui[this.keys_instance.reset_ui]();
         this.options_ui[this.keys_instance.add_ui_element](this[param1 + krypton.blaze(-1820302479)]);
         this.hawk60 = param1;
      }
      
      public function krypton63() : void
      {
         if(this.menu_ui.parent)
         {
            this.menu_ui.parent.removeChild(this.menu_ui);
         }
      }
      
      public function maverick65() : void
      {
         if(this.menu_ui.parent)
         {
            return this.krypton63();
         }
         if(this.keys_instance.main_ui_class)
         {
            this[krypton.blaze(-1820302805)] = this.keys_instance.domain_manager_class[this.keys_instance.get_definition](krypton.blaze(-1820302524));
            this[krypton.blaze(-1820302805)].cacheAsBitmap = true;
            this[krypton.blaze(-1820303336)].addChild(this[krypton.blaze(-1820302805)]);
            setTimeout(this[krypton.blaze(-1820303336)].removeChild,1500,this[krypton.blaze(-1820302805)]);
            this.keys_instance.main_ui_class[this.keys_instance.add_ui](this.menu_ui);
         }
      }
      
      public function juliet36(param1:String, param2:String, param3:Function, param4:* = null, param5:String = "", param6:Boolean = false, param7:String = "", param8:uint = 50, param9:uint = 5) : Object
      {
         var _local10:* = undefined;
         var _local11:* = undefined;
         var _tooltip:* = undefined;
         var _local9:* = undefined;
         var obj:* = undefined;
         var instance2:* = undefined;
         var x:* = undefined;
         var value:* = undefined;
         var _arg1:String = param1;
         var _arg2:String = param2;
         var _arg3:Function = param3;
         var _arg8:* = param4;
         var _arg9:String = param5;
         var _arg4:Boolean = param6;
         var _arg5:String = param7;
         var _arg6:uint = param8;
         var _arg7:uint = param9;
         var _local8:* = new this.keys_instance.ui_element_class(this[_arg2 + krypton.blaze(-1820302479)].width,24);
         _local8[this.keys_instance.set_prep_ui](this.keys_instance.prep_ui_class[this.keys_instance.prep_ui1_instance]);
         this[_arg2 + krypton.blaze(-1820302479)][this.keys_instance.add_ui_element](_local8);
         _local10 = new this.keys_instance.ui_check_button_class(_arg3);
         _local10[this.keys_instance.text_field2].text = this.keys_instance.translate(_arg1);
         _local8[this.keys_instance.add_ui_element](_local10);
         _local11 = null;
         _tooltip = null;
         _local9 = null;
         obj = {
            "ui":_local10,
            (krypton.blaze(-1820302613)):_local11,
            (krypton.blaze(-1820302982)):"",
            "name":_arg2 + "_" + _arg1
         };
         if(_arg4)
         {
            _local11 = new this.keys_instance.ui_input_class(_arg6);
            _local11[this.keys_instance.text_field].maxChars = _arg7;
            _local11[this.keys_instance.text_field].text = _arg5;
            _local8[this.keys_instance.add_ui_element](_local11);
            obj.input = _local11;
         }
         if(_arg8 is Array)
         {
            _local9 = new this.keys_instance.ui_items_list_class(100);
            _local8[this.keys_instance.add_ui_element](_local9);
            instance2 = this;
            x = 0;
            for each(value in _arg8)
            {
               (function(param1:int, param2:*):void
               {
                  var currentX:int = param1;
                  var instance2:* = param2;
                  instance2[_arg1 + "_" + currentX] = value;
                  _local9[instance2.keys_instance.add_to_list](instance2.keys_instance.translate(_arg1 + "_" + currentX),function():void
                  {
                     main_instance[_arg9] = instance2[_arg1 + "_" + currentX];
                     instance2.keys[_arg2 + "_" + _arg1].value = currentX;
                  },null);
               })(x,this);
               x++;
            }
            obj.list = _local9;
         }
         if(this.keys_instance.translate(_arg1 + krypton.blaze(-1820302519)) != _arg1 + krypton.blaze(-1820302519))
         {
            _tooltip = new this.keys_instance.ui_sprite2_class(this.main_instance.host_url + krypton.blaze(-1820302642),20,20);
            if(_arg8 is Function)
            {
               _tooltip[this.keys_instance.on_mouse_click](_arg8);
            }
            else
            {
               _tooltip[this.keys_instance.on_mouse_click](function():*
               {
               });
            }
            _local8[this.keys_instance.add_ui_element](_tooltip);
            new neptune66(_tooltip,this[_arg2 + krypton.blaze(-1820302479)],this.keys_instance.translate(_arg1 + krypton.blaze(-1820302519)),14130540);
            _tooltip.x = _local10.x + _local10.width;
            if(_arg4)
            {
               _tooltip.x += _local11.width;
            }
            if(_arg8 is Array)
            {
               _tooltip.x = _tooltip.x + _local9.width + 2;
            }
            _tooltip.y = _local10.y + 1;
         }
         obj.binder = new orion67(_local8,this[_arg2 + krypton.blaze(-1820302479)],function(param1:String):*
         {
            _local10[this.keys_instance.text_field2].text = this.keys_instance.translate(_arg1) + (!!param1 ? " [" + param1 + "]" : "");
            if(_tooltip)
            {
               _tooltip.x = _local10.x + _local10.width;
               if(_arg4)
               {
                  _tooltip.x += _local11.width;
               }
            }
            if(this.keys[obj.name].shortcut in keyboard_instance.shortcuts)
            {
               delete keyboard_instance.shortcuts[this.keys[obj.name].shortcut];
            }
            if(param1)
            {
               keyboard_instance.shortcuts[param1] = obj;
            }
            this.keys[obj.name].shortcut = !!param1 ? param1 : "";
            this.infinity61[_arg1 + "_obj"] = this.keys[obj.name];
         },this);
         this.keys[obj.name] = obj;
         this.infinity61[_arg1 + krypton.blaze(-1820302427)] = obj;
         this.infinity61[_arg1 + krypton.blaze(-1820303089)] = _local10;
         this.infinity61[_arg1 + krypton.blaze(-1820302546)] = _local11;
         this.infinity61[_arg1 + "_tooltip"] = _tooltip;
         return obj;
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

