
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
   
   public class zenith156
   {
       
      
      private var arcadia157:Boolean;
      
      private var value:*;
      
      private var blaze158:cinder159;
      
      private var token:JSONToken;
      
      public function zenith156(param1:String, param2:Boolean)
      {
         super();
         this.arcadia157 = param2;
         this.blaze158 = new cinder159(param1,param2);
         this.nextToken();
         this.value = this.drake160();
         if(param2 && this.nextToken() != null)
         {
            this.blaze158.parseError(krypton.blaze(-1820302537));
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      final private function nextToken() : JSONToken
      {
         return this.token = this.blaze158.getNextToken();
      }
      
      final private function nextValidToken() : JSONToken
      {
         this.token = this.blaze158.getNextToken();
         this.checkValidToken();
         return this.token;
      }
      
      final private function checkValidToken() : void
      {
         if(this.token == null)
         {
            this.blaze158.parseError(krypton.blaze(-1820303041));
         }
      }
      
      final private function ember161() : Array
      {
         var _loc1_:Array = new Array();
         this.nextValidToken();
         if(this.token.type == frost162.RIGHT_BRACKET)
         {
            return _loc1_;
         }
         if(!this.arcadia157 && this.token.type == frost162.COMMA)
         {
            this.nextValidToken();
            if(this.token.type == frost162.RIGHT_BRACKET)
            {
               return _loc1_;
            }
            this.blaze158.parseError(krypton.blaze(-1820302840) + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.drake160());
            this.nextValidToken();
            if(this.token.type == frost162.RIGHT_BRACKET)
            {
               break;
            }
            if(this.token.type == frost162.COMMA)
            {
               this.nextToken();
               if(!this.arcadia157)
               {
                  this.checkValidToken();
                  if(this.token.type == frost162.RIGHT_BRACKET)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.blaze158.parseError(krypton.blaze(-1820302352) + this.token.value);
            }
         }
         return _loc1_;
      }
      
      final private function parseObject() : Object
      {
         var _loc1_:String = null;
         var _loc2_:Object = new Object();
         this.nextValidToken();
         if(this.token.type == frost162.RIGHT_BRACE)
         {
            return _loc2_;
         }
         if(!this.arcadia157 && this.token.type == frost162.COMMA)
         {
            this.nextValidToken();
            if(this.token.type == frost162.RIGHT_BRACE)
            {
               return _loc2_;
            }
            this.blaze158.parseError(krypton.blaze(-1820302715) + this.token.value);
         }
         while(true)
         {
            if(this.token.type == frost162.STRING)
            {
               _loc1_ = String(this.token.value);
               this.nextValidToken();
               if(this.token.type == frost162.COLON)
               {
                  this.nextToken();
                  _loc2_[_loc1_] = this.drake160();
                  this.nextValidToken();
                  if(this.token.type == frost162.RIGHT_BRACE)
                  {
                     break;
                  }
                  if(this.token.type == frost162.COMMA)
                  {
                     this.nextToken();
                     if(!this.arcadia157)
                     {
                        this.checkValidToken();
                        if(this.token.type == frost162.RIGHT_BRACE)
                        {
                           return _loc2_;
                        }
                     }
                  }
                  else
                  {
                     this.blaze158.parseError(krypton.blaze(-1820302515) + this.token.value);
                  }
               }
               else
               {
                  this.blaze158.parseError(krypton.blaze(-1820302704) + this.token.value);
               }
            }
            else
            {
               this.blaze158.parseError(krypton.blaze(-1820303311) + this.token.value);
            }
         }
         return _loc2_;
      }
      
      final private function drake160() : Object
      {
         this.checkValidToken();
         switch(this.token.type)
         {
            case frost162.LEFT_BRACE:
               return this.parseObject();
            case frost162.LEFT_BRACKET:
               return this.ember161();
            case frost162.STRING:
            case frost162.NUMBER:
            case frost162.TRUE:
            case frost162.FALSE:
            case frost162.NULL:
               return this.token.value;
            case frost162.NAN:
               if(!this.arcadia157)
               {
                  return this.token.value;
               }
               this.blaze158.parseError(krypton.blaze(-1820302567) + this.token.value);
               break;
         }
         this.blaze158.parseError(krypton.blaze(-1820302567) + this.token.value);
         return null;
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

