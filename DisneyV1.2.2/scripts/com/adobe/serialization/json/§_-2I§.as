package com.adobe.serialization.json
{
   import ChargeurTransformice_fla.*;
   
   public class §_-2I§
   {
       
      
      private const §_-1y§:RegExp = new RegExp(§_e_-----_§.§_e_-_-__-§(-1820302379));
      
      private var §_-3z§:Boolean;
      
      private var obj:Object;
      
      private var §_-4d§:String;
      
      private var §_-1j§:int;
      
      private var §_-2e§:String;
      
      public function §_-2I§(param1:String, param2:Boolean)
      {
         super();
         this.§_-4d§ = param1;
         this.§_-3z§ = param2;
         this.§_-1j§ = 0;
         this.§_-O§();
      }
      
      public function getNextToken() : JSONToken
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:JSONToken = null;
         this.§_-1E§();
         switch(this.§_-2e§)
         {
            case "{":
               _loc5_ = JSONToken.create(§_-4h§.LEFT_BRACE,this.§_-2e§);
               this.§_-O§();
               break;
            case "}":
               _loc5_ = JSONToken.create(§_-4h§.RIGHT_BRACE,this.§_-2e§);
               this.§_-O§();
               break;
            case "[":
               _loc5_ = JSONToken.create(§_-4h§.LEFT_BRACKET,this.§_-2e§);
               this.§_-O§();
               break;
            case "]":
               _loc5_ = JSONToken.create(§_-4h§.RIGHT_BRACKET,this.§_-2e§);
               this.§_-O§();
               break;
            case ",":
               _loc5_ = JSONToken.create(§_-4h§.COMMA,this.§_-2e§);
               this.§_-O§();
               break;
            case ":":
               _loc5_ = JSONToken.create(§_-4h§.COLON,this.§_-2e§);
               this.§_-O§();
               break;
            case "t":
               _loc1_ = "t" + this.§_-O§() + this.§_-O§() + this.§_-O§();
               if(_loc1_ == §_e_-----_§.§_e_-_-__-§(-1820303340))
               {
                  _loc5_ = JSONToken.create(§_-4h§.TRUE,true);
                  this.§_-O§();
                  break;
               }
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820303084) + _loc1_);
               break;
            case "f":
               _loc2_ = "f" + this.§_-O§() + this.§_-O§() + this.§_-O§() + this.§_-O§();
               if(_loc2_ == §_e_-----_§.§_e_-_-__-§(-1820302353))
               {
                  _loc5_ = JSONToken.create(§_-4h§.FALSE,false);
                  this.§_-O§();
                  break;
               }
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820303148) + _loc2_);
               break;
            case "n":
               _loc3_ = "n" + this.§_-O§() + this.§_-O§() + this.§_-O§();
               if(_loc3_ == §_e_-----_§.§_e_-_-__-§(-1820303338))
               {
                  _loc5_ = JSONToken.create(§_-4h§.NULL,null);
                  this.§_-O§();
                  break;
               }
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302532) + _loc3_);
               break;
            case "N":
               if((_loc4_ = "N" + this.§_-O§() + this.§_-O§()) == §_e_-----_§.§_e_-_-__-§(-1820302738))
               {
                  _loc5_ = JSONToken.create(§_-4h§.NAN,NaN);
                  this.§_-O§();
                  break;
               }
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820303207) + _loc4_);
               break;
            case "\"":
               _loc5_ = this.§_-3v§();
               break;
            default:
               if(Boolean(this.§_-U§(this.§_-2e§)) || this.§_-2e§ == "-")
               {
                  _loc5_ = this.§_-11§();
                  break;
               }
               if(this.§_-2e§ == "")
               {
                  _loc5_ = null;
                  break;
               }
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302567) + this.§_-2e§ + §_e_-----_§.§_e_-_-__-§(-1820302434));
               break;
         }
         return _loc5_;
      }
      
      final private function §_-3v§() : JSONToken
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(this.§_-1j§);
         while(true)
         {
            _loc3_ = int(this.§_-4d§.indexOf("\"",_loc3_));
            if(_loc3_ >= 0)
            {
               _loc1_ = 0;
               _loc2_ = _loc3_ - 1;
               while(this.§_-4d§.charAt(_loc2_) == "\\")
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
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302687));
            }
         }
         var _loc4_:JSONToken = JSONToken.create(§_-4h§.STRING,this.§_-35§(this.§_-4d§.substr(this.§_-1j§,_loc3_ - this.§_-1j§)));
         this.§_-1j§ = _loc3_ + 1;
         this.§_-O§();
         return _loc4_;
      }
      
      public function §_-35§(param1:String) : String
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc9_:int = 0;
         if(Boolean(this.§_-3z§) && Boolean(this.§_-1y§.test(param1)))
         {
            this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302759));
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
                     this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302444));
                  }
                  _loc6_ = _loc2_;
                  while(_loc6_ < _loc5_)
                  {
                     _loc7_ = param1.charAt(_loc6_);
                     if(!this.§_-4w§(_loc7_))
                     {
                        this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302818) + _loc7_);
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
      
      final private function §_-11§() : JSONToken
      {
         var _loc1_:* = "";
         if(this.§_-2e§ == "-")
         {
            _loc1_ += "-";
            this.§_-O§();
         }
         if(!this.§_-U§(this.§_-2e§))
         {
            this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302815));
         }
         if(this.§_-2e§ == "0")
         {
            _loc1_ += this.§_-2e§;
            this.§_-O§();
            if(this.§_-U§(this.§_-2e§))
            {
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302526));
            }
            else if(!this.§_-3z§ && this.§_-2e§ == "x")
            {
               _loc1_ += this.§_-2e§;
               this.§_-O§();
               if(this.§_-4w§(this.§_-2e§))
               {
                  _loc1_ += this.§_-2e§;
                  this.§_-O§();
               }
               else
               {
                  this.parseError(§_e_-----_§.§_e_-_-__-§(-1820303325));
               }
               while(this.§_-4w§(this.§_-2e§))
               {
                  _loc1_ += this.§_-2e§;
                  this.§_-O§();
               }
            }
         }
         else
         {
            while(this.§_-U§(this.§_-2e§))
            {
               _loc1_ += this.§_-2e§;
               this.§_-O§();
            }
         }
         if(this.§_-2e§ == ".")
         {
            _loc1_ += ".";
            this.§_-O§();
            if(!this.§_-U§(this.§_-2e§))
            {
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302815));
            }
            while(this.§_-U§(this.§_-2e§))
            {
               _loc1_ += this.§_-2e§;
               this.§_-O§();
            }
         }
         if(this.§_-2e§ == "e" || this.§_-2e§ == "E")
         {
            _loc1_ += "e";
            this.§_-O§();
            if(this.§_-2e§ == "+" || this.§_-2e§ == "-")
            {
               _loc1_ += this.§_-2e§;
               this.§_-O§();
            }
            if(!this.§_-U§(this.§_-2e§))
            {
               this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302680));
            }
            while(this.§_-U§(this.§_-2e§))
            {
               _loc1_ += this.§_-2e§;
               this.§_-O§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(Boolean(isFinite(_loc2_)) && !isNaN(_loc2_))
         {
            return JSONToken.create(§_-4h§.NUMBER,_loc2_);
         }
         this.parseError(§_e_-----_§.§_e_-_-__-§(-1820303275) + _loc2_ + §_e_-----_§.§_e_-_-__-§(-1820303354));
         return null;
      }
      
      final private function §_-O§() : String
      {
         return this.§_-2e§ = this.§_-4d§.charAt(this.§_-1j§++);
      }
      
      final private function §_-1E§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = int(this.§_-1j§);
            this.§_-4Y§();
            this.§_-4W§();
         }
         while(_loc1_ != this.§_-1j§);
         
      }
      
      private function §_-4W§() : void
      {
         if(this.§_-2e§ == "/")
         {
            this.§_-O§();
            switch(this.§_-2e§)
            {
               case "/":
                  do
                  {
                     this.§_-O§();
                  }
                  while(this.§_-2e§ != "\n" && this.§_-2e§ != "");
                  
                  this.§_-O§();
                  return;
               case "*":
                  this.§_-O§();
                  while(true)
                  {
                     if(this.§_-2e§ == "*")
                     {
                        this.§_-O§();
                        if(this.§_-2e§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-O§();
                     }
                     if(this.§_-2e§ == "")
                     {
                        this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302473));
                     }
                  }
                  this.§_-O§();
                  return;
               default:
                  this.parseError(§_e_-----_§.§_e_-_-__-§(-1820302567) + this.§_-2e§ + §_e_-----_§.§_e_-_-__-§(-1820303209));
            }
         }
      }
      
      final private function §_-4Y§() : void
      {
         while(this.§_-2G§(this.§_-2e§))
         {
            this.§_-O§();
         }
      }
      
      final private function §_-2G§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-3z§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      final private function §_-U§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      final private function §_-4w§(param1:String) : Boolean
      {
         return Boolean(this.§_-U§(param1)) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      final public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-1j§,this.§_-4d§);
      }
   }
}
