
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


package com.adobe.serialization.json
{
   import ChargeurTransformice_fla.*;
   
   public class cinder159
   {
       
      
      private const glacier163:RegExp = new RegExp(krypton.blaze(-1820302379));
      
      private var arcadia157:Boolean;
      
      private var obj:Object;
      
      private var horizon164:String;
      
      private var ignis165:int;
      
      private var jaguar166:String;
      
      public function cinder159(param1:String, param2:Boolean)
      {
         super();
         this.horizon164 = param1;
         this.arcadia157 = param2;
         this.ignis165 = 0;
         this.kinetic167();
      }
      
      public function getNextToken() : JSONToken
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:JSONToken = null;
         this.lunar168();
         switch(this.jaguar166)
         {
            case "{":
               _loc5_ = JSONToken.create(frost162.LEFT_BRACE,this.jaguar166);
               this.kinetic167();
               break;
            case "}":
               _loc5_ = JSONToken.create(frost162.RIGHT_BRACE,this.jaguar166);
               this.kinetic167();
               break;
            case "[":
               _loc5_ = JSONToken.create(frost162.LEFT_BRACKET,this.jaguar166);
               this.kinetic167();
               break;
            case "]":
               _loc5_ = JSONToken.create(frost162.RIGHT_BRACKET,this.jaguar166);
               this.kinetic167();
               break;
            case ",":
               _loc5_ = JSONToken.create(frost162.COMMA,this.jaguar166);
               this.kinetic167();
               break;
            case ":":
               _loc5_ = JSONToken.create(frost162.COLON,this.jaguar166);
               this.kinetic167();
               break;
            case "t":
               _loc1_ = "t" + this.kinetic167() + this.kinetic167() + this.kinetic167();
               if(_loc1_ == krypton.blaze(-1820303340))
               {
                  _loc5_ = JSONToken.create(frost162.TRUE,true);
                  this.kinetic167();
                  break;
               }
               this.parseError(krypton.blaze(-1820303084) + _loc1_);
               break;
            case "f":
               _loc2_ = "f" + this.kinetic167() + this.kinetic167() + this.kinetic167() + this.kinetic167();
               if(_loc2_ == krypton.blaze(-1820302353))
               {
                  _loc5_ = JSONToken.create(frost162.FALSE,false);
                  this.kinetic167();
                  break;
               }
               this.parseError(krypton.blaze(-1820303148) + _loc2_);
               break;
            case "n":
               _loc3_ = "n" + this.kinetic167() + this.kinetic167() + this.kinetic167();
               if(_loc3_ == krypton.blaze(-1820303338))
               {
                  _loc5_ = JSONToken.create(frost162.NULL,null);
                  this.kinetic167();
                  break;
               }
               this.parseError(krypton.blaze(-1820302532) + _loc3_);
               break;
            case "N":
               if((_loc4_ = "N" + this.kinetic167() + this.kinetic167()) == krypton.blaze(-1820302738))
               {
                  _loc5_ = JSONToken.create(frost162.NAN,NaN);
                  this.kinetic167();
                  break;
               }
               this.parseError(krypton.blaze(-1820303207) + _loc4_);
               break;
            case "\"":
               _loc5_ = this.mirage169();
               break;
            default:
               if(Boolean(this.nova170(this.jaguar166)) || this.jaguar166 == "-")
               {
                  _loc5_ = this.obelisk171();
                  break;
               }
               if(this.jaguar166 == "")
               {
                  _loc5_ = null;
                  break;
               }
               this.parseError(krypton.blaze(-1820302567) + this.jaguar166 + krypton.blaze(-1820302434));
               break;
         }
         return _loc5_;
      }
      
      final private function mirage169() : JSONToken
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(this.ignis165);
         while(true)
         {
            _loc3_ = int(this.horizon164.indexOf("\"",_loc3_));
            if(_loc3_ >= 0)
            {
               _loc1_ = 0;
               _loc2_ = _loc3_ - 1;
               while(this.horizon164.charAt(_loc2_) == "\\")
               {
                  _loc1_++;
                  _loc2_--;
               }
               if((_loc1_ & 1) == 0)
               {
                  break;
               }
               _loc3_++;
            }
            else
            {
               this.parseError(krypton.blaze(-1820302687));
            }
         }
         var _loc4_:JSONToken = JSONToken.create(frost162.STRING,this.pulse172(this.horizon164.substr(this.ignis165,_loc3_ - this.ignis165)));
         this.ignis165 = _loc3_ + 1;
         this.kinetic167();
         return _loc4_;
      }
      
      public function pulse172(param1:String) : String
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc9_:int = 0;
         if(Boolean(this.arcadia157) && Boolean(this.glacier163.test(param1)))
         {
            this.parseError(krypton.blaze(-1820302759));
         }
         var _loc8_:* = "";
         _loc2_ = 0;
         var _loc10_:int = param1.length;
         do
         {
            if((_loc9_ = param1.indexOf("\\",_loc2_)) < 0)
            {
               _loc8_ += param1.substr(_loc2_);
               break;
            }
            _loc8_ += param1.substr(_loc2_,_loc9_ - _loc2_);
            _loc2_ = _loc9_ + 2;
            _loc3_ = param1.charAt(_loc9_ + 1);
            switch(_loc3_)
            {
               case "\"":
                  _loc8_ += _loc3_;
                  break;
               case "\\":
                  _loc8_ += _loc3_;
                  break;
               case "n":
                  _loc8_ += "\n";
                  break;
               case "r":
                  _loc8_ += "\r";
                  break;
               case "t":
                  _loc8_ += "\t";
                  break;
               case "u":
                  _loc4_ = "";
                  if((_loc5_ = _loc2_ + 4) > _loc10_)
                  {
                     this.parseError(krypton.blaze(-1820302444));
                  }
                  _loc6_ = _loc2_;
                  while(_loc6_ < _loc5_)
                  {
                     _loc7_ = param1.charAt(_loc6_);
                     if(!this.quest173(_loc7_))
                     {
                        this.parseError(krypton.blaze(-1820302818) + _loc7_);
                     }
                     _loc4_ += _loc7_;
                     _loc6_++;
                  }
                  _loc8_ += String.fromCharCode(parseInt(_loc4_,16));
                  _loc2_ = _loc5_;
                  break;
               case "f":
                  _loc8_ += "\f";
                  break;
               case "/":
                  _loc8_ += "/";
                  break;
               case "b":
                  _loc8_ += "\b";
                  break;
               default:
                  _loc8_ += "\\" + _loc3_;
                  break;
            }
         }
         while(_loc2_ < _loc10_);
         
         return _loc8_;
      }
      
      final private function obelisk171() : JSONToken
      {
         var _loc1_:* = "";
         if(this.jaguar166 == "-")
         {
            _loc1_ += "-";
            this.kinetic167();
         }
         if(!this.nova170(this.jaguar166))
         {
            this.parseError(krypton.blaze(-1820302815));
         }
         if(this.jaguar166 == "0")
         {
            _loc1_ += this.jaguar166;
            this.kinetic167();
            if(this.nova170(this.jaguar166))
            {
               this.parseError(krypton.blaze(-1820302526));
            }
            else if(!this.arcadia157 && this.jaguar166 == "x")
            {
               _loc1_ += this.jaguar166;
               this.kinetic167();
               if(this.quest173(this.jaguar166))
               {
                  _loc1_ += this.jaguar166;
                  this.kinetic167();
               }
               else
               {
                  this.parseError(krypton.blaze(-1820303325));
               }
               while(this.quest173(this.jaguar166))
               {
                  _loc1_ += this.jaguar166;
                  this.kinetic167();
               }
            }
         }
         else
         {
            while(this.nova170(this.jaguar166))
            {
               _loc1_ += this.jaguar166;
               this.kinetic167();
            }
         }
         if(this.jaguar166 == ".")
         {
            _loc1_ += ".";
            this.kinetic167();
            if(!this.nova170(this.jaguar166))
            {
               this.parseError(krypton.blaze(-1820302815));
            }
            while(this.nova170(this.jaguar166))
            {
               _loc1_ += this.jaguar166;
               this.kinetic167();
            }
         }
         if(this.jaguar166 == "e" || this.jaguar166 == "E")
         {
            _loc1_ += "e";
            this.kinetic167();
            if(this.jaguar166 == "+" || this.jaguar166 == "-")
            {
               _loc1_ += this.jaguar166;
               this.kinetic167();
            }
            if(!this.nova170(this.jaguar166))
            {
               this.parseError(krypton.blaze(-1820302680));
            }
            while(this.nova170(this.jaguar166))
            {
               _loc1_ += this.jaguar166;
               this.kinetic167();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(Boolean(isFinite(_loc2_)) && !isNaN(_loc2_))
         {
            return JSONToken.create(frost162.NUMBER,_loc2_);
         }
         this.parseError(krypton.blaze(-1820303275) + _loc2_ + krypton.blaze(-1820303354));
         return null;
      }
      
      final private function kinetic167() : String
      {
         return this.jaguar166 = this.horizon164.charAt(this.ignis165++);
      }
      
      final private function lunar168() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = int(this.ignis165);
            this.raven174();
            this.storm175();
         }
         while(_loc1_ != this.ignis165);
         
      }
      
      private function storm175() : void
      {
         if(this.jaguar166 == "/")
         {
            this.kinetic167();
            switch(this.jaguar166)
            {
               case "/":
                  do
                  {
                     this.kinetic167();
                  }
                  while(this.jaguar166 != "\n" && this.jaguar166 != "");
                  
                  this.kinetic167();
                  return;
               case "*":
                  this.kinetic167();
                  while(true)
                  {
                     if(this.jaguar166 == "*")
                     {
                        this.kinetic167();
                        if(this.jaguar166 == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.kinetic167();
                     }
                     if(this.jaguar166 == "")
                     {
                        this.parseError(krypton.blaze(-1820302473));
                     }
                  }
                  this.kinetic167();
                  return;
               default:
                  this.parseError(krypton.blaze(-1820302567) + this.jaguar166 + krypton.blaze(-1820303209));
            }
         }
      }
      
      final private function raven174() : void
      {
         while(this.thunder176(this.jaguar166))
         {
            this.kinetic167();
         }
      }
      
      final private function thunder176(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.arcadia157 && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      final private function nova170(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      final private function quest173(param1:String) : Boolean
      {
         return Boolean(this.nova170(param1)) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      final public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.ignis165,this.horizon164);
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

