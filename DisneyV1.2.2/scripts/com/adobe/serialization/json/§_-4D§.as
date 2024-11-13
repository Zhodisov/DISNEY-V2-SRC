package com.adobe.serialization.json
{
   import ChargeurTransformice_fla.*;
   import flash.utils.*;
   
   public class §_-4D§
   {
       
      
      private var §_-4d§:String;
      
      public function §_-4D§(param1:*)
      {
         super();
         this.§_-4d§ = this.§_-M§(param1);
      }
      
      public function getString() : String
      {
         return this.§_-4d§;
      }
      
      private function §_-M§(param1:*) : String
      {
         if(param1 is String)
         {
            return this.escapeString(param1 as String);
         }
         if(param1 is Number)
         {
            return !isFinite(param1 as Number) ? §_e_-----_§.§_e_-_-__-§(-1820303338) : String(param1.toString());
         }
         if(param1 is Boolean)
         {
            return !param1 ? §_e_-----_§.§_e_-_-__-§(-1820302353) : §_e_-----_§.§_e_-_-__-§(-1820303340);
         }
         if(param1 is Array)
         {
            return this.§_-Q§(param1 as Array);
         }
         if(param1 is Object && param1 != null)
         {
            return this.§_-z§(param1);
         }
         return §_e_-----_§.§_e_-_-__-§(-1820303338);
      }
      
      private function escapeString(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc7_:int = 0;
         var _loc5_:* = "";
         var _loc6_:Number = param1.length;
         while(_loc7_ < _loc6_)
         {
            _loc2_ = param1.charAt(_loc7_);
            switch(_loc2_)
            {
               case "\"":
                  _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302472);
                  break;
               case "\\":
                  _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302505);
                  break;
               case "\b":
                  _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302507);
                  break;
               case "\f":
                  _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302508);
                  break;
               case "\n":
                  _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302512);
                  break;
               case "\r":
                  _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302497);
                  break;
               case "\t":
                  _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302498);
                  break;
               default:
                  if(_loc2_ < " ")
                  {
                     _loc3_ = _loc2_.charCodeAt(0).toString(16);
                     _loc4_ = _loc3_.length == 2 ? §_e_-----_§.§_e_-_-__-§(-1820303243) : §_e_-----_§.§_e_-_-__-§(-1820302612);
                     _loc5_ += §_e_-----_§.§_e_-_-__-§(-1820302499) + _loc4_ + _loc3_;
                  }
                  else
                  {
                     _loc5_ += _loc2_;
                  }
                  break;
            }
            _loc7_++;
         }
         return "\"" + _loc5_ + "\"";
      }
      
      private function §_-Q§(param1:Array) : String
      {
         var _loc4_:int = 0;
         var _loc2_:* = "";
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += ",";
            }
            _loc2_ += this.§_-M§(param1[_loc4_]);
            _loc4_++;
         }
         return "[" + _loc2_ + "]";
      }
      
      private function §_-z§(param1:Object) : String
      {
         var value:Object = null;
         var key:String = null;
         var v:XML = null;
         var o:Object = param1;
         var s:String = "";
         var classInfo:XML = describeType(o);
         if(classInfo.@name.toString() == §_e_-----_§.§_e_-_-__-§(-1820302467))
         {
            for(key in o)
            {
               value = o[key];
               if(!(value is Function))
               {
                  if(s.length > 0)
                  {
                     s += ",";
                  }
                  s += this.escapeString(key) + ":" + this.§_-M§(value);
               }
            }
         }
         else
         {
            for each(v in classInfo..*.(name() == §_e_-----_§.§_e_-_-__-§(-1820303007) || name() == §_e_-----_§.§_e_-_-__-§(-1820302638) && attribute(§_e_-----_§.§_e_-_-__-§(-1820303292)).charAt(0) == "r"))
            {
               if(!(v.metadata && v.metadata.(@name == §_e_-----_§.§_e_-_-__-§(-1820302447)).length() > 0))
               {
                  if(s.length > 0)
                  {
                     s += ",";
                  }
                  s += this.escapeString(v.@name.toString()) + ":" + this.§_-M§(o[v.@name]);
               }
            }
         }
         return "{" + s + "}";
      }
   }
}
