package com.adobe.serialization.json
{
   import ChargeurTransformice_fla.*;
   
   public class §_-18§
   {
       
      
      private var §_-3z§:Boolean;
      
      private var value:*;
      
      private var §_-3k§:§_-2I§;
      
      private var token:JSONToken;
      
      public function §_-18§(param1:String, param2:Boolean)
      {
         super();
         this.§_-3z§ = param2;
         this.§_-3k§ = new §_-2I§(param1,param2);
         this.nextToken();
         this.value = this.§_-1D§();
         if(param2 && this.nextToken() != null)
         {
            this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302537));
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      final private function nextToken() : JSONToken
      {
         return this.token = this.§_-3k§.getNextToken();
      }
      
      final private function nextValidToken() : JSONToken
      {
         this.token = this.§_-3k§.getNextToken();
         this.checkValidToken();
         return this.token;
      }
      
      final private function checkValidToken() : void
      {
         if(this.token == null)
         {
            this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820303041));
         }
      }
      
      final private function §_-2S§() : Array
      {
         var _loc1_:Array = new Array();
         this.nextValidToken();
         if(this.token.type == §_-4h§.RIGHT_BRACKET)
         {
            return _loc1_;
         }
         if(!this.§_-3z§ && this.token.type == §_-4h§.COMMA)
         {
            this.nextValidToken();
            if(this.token.type == §_-4h§.RIGHT_BRACKET)
            {
               return _loc1_;
            }
            this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302840) + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-1D§());
            this.nextValidToken();
            if(this.token.type == §_-4h§.RIGHT_BRACKET)
            {
               break;
            }
            if(this.token.type == §_-4h§.COMMA)
            {
               this.nextToken();
               if(!this.§_-3z§)
               {
                  this.checkValidToken();
                  if(this.token.type == §_-4h§.RIGHT_BRACKET)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302352) + this.token.value);
            }
         }
         return _loc1_;
      }
      
      final private function parseObject() : Object
      {
         var _loc1_:String = null;
         var _loc2_:Object = new Object();
         this.nextValidToken();
         if(this.token.type == §_-4h§.RIGHT_BRACE)
         {
            return _loc2_;
         }
         if(!this.§_-3z§ && this.token.type == §_-4h§.COMMA)
         {
            this.nextValidToken();
            if(this.token.type == §_-4h§.RIGHT_BRACE)
            {
               return _loc2_;
            }
            this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302715) + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §_-4h§.STRING)
            {
               _loc1_ = String(this.token.value);
               this.nextValidToken();
               if(this.token.type == §_-4h§.COLON)
               {
                  this.nextToken();
                  _loc2_[_loc1_] = this.§_-1D§();
                  this.nextValidToken();
                  if(this.token.type == §_-4h§.RIGHT_BRACE)
                  {
                     break;
                  }
                  if(this.token.type == §_-4h§.COMMA)
                  {
                     this.nextToken();
                     if(!this.§_-3z§)
                     {
                        this.checkValidToken();
                        if(this.token.type == §_-4h§.RIGHT_BRACE)
                        {
                           return _loc2_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302515) + this.token.value);
                  }
               }
               else
               {
                  this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302704) + this.token.value);
               }
            }
            else
            {
               this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820303311) + this.token.value);
            }
         }
         return _loc2_;
      }
      
      final private function §_-1D§() : Object
      {
         this.checkValidToken();
         switch(this.token.type)
         {
            case §_-4h§.LEFT_BRACE:
               return this.parseObject();
            case §_-4h§.LEFT_BRACKET:
               return this.§_-2S§();
            case §_-4h§.STRING:
            case §_-4h§.NUMBER:
            case §_-4h§.TRUE:
            case §_-4h§.FALSE:
            case §_-4h§.NULL:
               return this.token.value;
            case §_-4h§.NAN:
               if(!this.§_-3z§)
               {
                  return this.token.value;
               }
               this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302567) + this.token.value);
               break;
         }
         this.§_-3k§.parseError(§_e_-----_§.§_e_-_-__-§(-1820302567) + this.token.value);
         return null;
      }
   }
}
