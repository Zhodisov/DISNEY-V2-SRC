
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


package com.hurlant.util
{
   import flash.utils.*;
   
   public class Base64
   {
      
      private static const _encodeChars:Vector.<int> = _initEncoreChar();
      
      private static const _decodeChars:Vector.<int> = _initDecodeChar();
       
      
      public function Base64()
      {
         super();
      }
      
      public static function encode(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         return encodeByteArray(_loc2_);
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = decodeToByteArray(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function encodeByteArray(param1:ByteArray) : String
      {
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:ByteArray;
         (_loc5_ = new ByteArray()).length = (2 + param1.length - (param1.length + 2) % 3) * 4 / 3;
         var _loc6_:int = param1.length % 3;
         var _loc7_:int = param1.length - _loc6_;
         while(_loc3_ < _loc7_)
         {
            _loc2_ = uint(param1[int(_loc3_++)] << 16 | param1[int(_loc3_++)] << 8 | param1[int(_loc3_++)]);
            _loc5_[int(_loc4_++)] = _encodeChars[int(_loc2_ >>> 18)];
            _loc5_[int(_loc4_++)] = _encodeChars[int(_loc2_ >>> 12 & 63)];
            _loc5_[int(_loc4_++)] = _encodeChars[int(_loc2_ >>> 6 & 63)];
            _loc5_[int(_loc4_++)] = _encodeChars[int(_loc2_ & 63)];
         }
         if(_loc6_ == 1)
         {
            _loc2_ = uint(param1[int(_loc3_)]);
            _loc5_[int(_loc4_++)] = _encodeChars[int(_loc2_ >>> 2)];
            _loc5_[int(_loc4_++)] = _encodeChars[int((_loc2_ & 3) << 4)];
            _loc5_[int(_loc4_++)] = 61;
            _loc5_[int(_loc4_++)] = 61;
         }
         else if(_loc6_ == 2)
         {
            _loc2_ = uint(param1[int(_loc3_++)] << 8 | param1[int(_loc3_)]);
            _loc5_[int(_loc4_++)] = _encodeChars[int(_loc2_ >>> 10)];
            _loc5_[int(_loc4_++)] = _encodeChars[int(_loc2_ >>> 4 & 63)];
            _loc5_[int(_loc4_++)] = _encodeChars[int((_loc2_ & 15) << 2)];
            _loc5_[int(_loc4_++)] = 61;
         }
         return _loc5_.readUTFBytes(_loc5_.length);
      }
      
      public static function decodeToByteArray(param1:String) : ByteArray
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = param1.length;
         var _loc9_:ByteArray;
         (_loc9_ = new ByteArray()).writeUTFBytes(param1);
         while(_loc6_ < _loc8_)
         {
            _loc2_ = int(_decodeChars[int(_loc9_[_loc6_++])]);
            if(_loc2_ == -1)
            {
               break;
            }
            _loc3_ = int(_decodeChars[int(_loc9_[_loc6_++])]);
            if(_loc3_ == -1)
            {
               break;
            }
            _loc9_[int(_loc7_++)] = _loc2_ << 2 | (_loc3_ & 48) >> 4;
            if((_loc4_ = int(_loc9_[int(_loc6_++)])) == 61)
            {
               break;
            }
            if((_loc4_ = int(_decodeChars[int(_loc4_)])) == -1)
            {
               break;
            }
            _loc9_[int(_loc7_++)] = (_loc3_ & 15) << 4 | (_loc4_ & 60) >> 2;
            if((_loc5_ = int(_loc9_[int(_loc6_++)])) == 61)
            {
               break;
            }
            if((_loc5_ = int(_decodeChars[int(_loc5_)])) == -1)
            {
               break;
            }
            _loc9_[int(_loc7_++)] = (_loc4_ & 3) << 6 | _loc5_;
         }
         _loc9_.length = _loc7_;
         _loc9_.position = 0;
         return _loc9_;
      }
      
      public static function zephyr182(param1:String) : ByteArray
      {
         return decodeToByteArray(param1);
      }
      
      private static function _initEncoreChar() : Vector.<int>
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>(64,true);
         var _loc3_:* = krypton.blaze(-1820302527);
         while(_loc1_ < 64)
         {
            _loc2_[_loc1_] = _loc3_.charCodeAt(_loc1_);
            _loc1_++;
         }
         return _loc2_;
      }
      
      private static function _initDecodeChar() : Vector.<int>
      {
         return new <int>[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
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

