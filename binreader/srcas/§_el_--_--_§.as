package
{
   import flash.utils.ByteArray;
   
   public class §_el_--_--_§
   {
       
      
      public function §_el_--_--_§()
      {
         super();
      }
      
      private static function §_el_-___-_-§(param1:int) : Array
      {
         var _loc2_:* = param1 & 65535;
         var _loc3_:* = param1 >> 16;
         var _loc4_:* = _loc2_ & 255;
         var _loc5_:* = _loc2_ >> 8;
         var _loc6_:* = _loc3_ & 255;
         var _loc7_:* = _loc3_ >> 8;
         return [_loc4_,_loc5_,_loc6_,_loc7_];
      }
      
      public static function §_el_-__-__-§(param1:Array, param2:int) : void
      {
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:Array;
         var _loc7_:int = int((_loc6_ = §_el_-___-_-§(param2))[1]);
         var _loc8_:int = int(_loc6_[2]);
         var _loc9_:int = int(_loc6_[3]);
         var _loc10_:int = Math.random() * 200 + 500;
         var _loc11_:int = 0;
         while(_loc11_ < _loc10_)
         {
            _loc12_ = Math.random() * 4 + 7;
            _loc13_ = Math.random() * 220;
            _loc3_.writeByte(70);
            _loc4_.writeByte(70);
            _loc5_.writeByte(70);
            _loc3_.writeByte(87);
            _loc4_.writeByte(87);
            _loc5_.writeByte(87);
            _loc3_.writeByte(83);
            _loc4_.writeByte(83);
            _loc5_.writeByte(83);
            _loc3_.writeByte(_loc12_);
            _loc4_.writeByte(_loc12_);
            _loc5_.writeByte(_loc12_);
            _loc3_.writeByte(_loc13_);
            _loc4_.writeByte(_loc13_);
            _loc5_.writeByte(_loc13_);
            _loc3_.writeByte(_loc7_);
            _loc4_.writeByte(_loc7_);
            _loc5_.writeByte(_loc7_);
            _loc3_.writeByte(_loc8_);
            _loc4_.writeByte(_loc8_);
            _loc5_.writeByte(_loc8_);
            _loc3_.writeByte(_loc9_);
            _loc4_.writeByte(_loc9_);
            _loc5_.writeByte(_loc9_);
            param1.push(_loc3_);
            param1.push(_loc4_);
            param1.push(_loc5_);
            _loc11_++;
         }
      }
   }
}
