package com.adobe.serialization.json
{
   import ChargeurTransformice_fla.*;
   
   public class JSONParseError extends Error
   {
       
      
      private var §_-P§:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-P§ = param2;
         this._text = param3;
      }
      
      public function get §_-2P§() : int
      {
         return this.§_-P§;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
