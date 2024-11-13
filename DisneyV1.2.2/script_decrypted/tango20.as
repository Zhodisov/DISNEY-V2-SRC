
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


package
{
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class tango20
   {
       
      
      private var lima12:victor22;
      
      private var whiskey23:Boolean = false;
      
      private var x-ray24:ByteArray;
      
      private var quest:int;
      
      private var yankee25:int;
      
      private var zulu26:Boolean = false;
      
      public function tango20(param1:Class = null)
      {
         var _loc2_:* = 0;
         super();
         if(param1 == null)
         {
            param1 = mirage;
         }
         this.lima12 = new param1() as victor22;
         this.quest = this.lima12.storm();
         this.x-ray24 = new ByteArray();
         this.yankee25 = 0;
         while(this.yankee25 < this.quest)
         {
            _loc2_ = 65536 * Math.random();
            var _loc3_:* = this.yankee25++;
            this.x-ray24[_loc3_] = _loc2_ >>> 8;
            var _loc4_:*;
            this.x-ray24[_loc4_ = this.yankee25++] = _loc2_ & 255;
         }
         this.yankee25 = 0;
         this.alpha27();
      }
      
      public function alpha27(param1:int = 0) : void
      {
         if(param1 == 0)
         {
            param1 = new Date().getTime();
         }
         var _loc2_:* = this.yankee25++;
         this.x-ray24[_loc2_] ^= param1 & 255;
         var _loc3_:* = this.yankee25++;
         this.x-ray24[_loc3_] ^= param1 >> 8 & 255;
         var _loc4_:*;
         this.x-ray24[_loc4_ = this.yankee25++] = this.x-ray24[_loc4_] ^ param1 >> 16 & 255;
         var _loc5_:*;
         this.x-ray24[_loc5_ = this.yankee25++] = this.x-ray24[_loc5_] ^ param1 >> 24 & 255;
         this.yankee25 %= this.quest;
         this.zulu26 = true;
      }
      
      public function bravo28() : void
      {
         var _loc3_:Font = null;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeUnsignedInt(System.totalMemory);
         _loc1_.writeUTF(Capabilities.serverString);
         _loc1_.writeUnsignedInt(getTimer());
         _loc1_.writeUnsignedInt(new Date().getTime());
         var _loc2_:Array = Font.enumerateFonts(true);
         for each(_loc3_ in _loc2_)
         {
            _loc1_.writeUTF(_loc3_.fontName);
            _loc1_.writeUTF(_loc3_.fontStyle);
            _loc1_.writeUTF(_loc3_.fontType);
         }
         _loc1_.position = 0;
         while(_loc1_.bytesAvailable >= 4)
         {
            this.alpha27(_loc1_.readUnsignedInt());
         }
      }
      
      public function charlie29(param1:ByteArray, param2:int) : void
      {
         while(param2--)
         {
            param1.writeByte(this.uniform21());
         }
      }
      
      public function uniform21() : int
      {
         if(!this.whiskey23)
         {
            if(!this.zulu26)
            {
               this.bravo28();
            }
            this.lima12.raven(this.x-ray24);
            this.x-ray24.length = 0;
            this.yankee25 = 0;
            this.whiskey23 = true;
         }
         return this.lima12.thunder();
      }
      
      public function ultra() : String
      {
         return "random-" + this.lima12.ultra();
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

