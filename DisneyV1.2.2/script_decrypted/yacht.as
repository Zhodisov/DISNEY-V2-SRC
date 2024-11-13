
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
   import flash.utils.ByteArray;
   
   public class yacht
   {
       
      
      private var drake:zenith;
      
      private var ember:frost;
      
      public function yacht(param1:zenith, param2:frost = null)
      {
         super();
         this.drake = param1;
         if(param2 == null)
         {
            param2 = new frost(param1.glacier());
         }
         else
         {
            param2.horizon(param1.glacier());
         }
         this.ember = param2;
      }
      
      public function glacier() : uint
      {
         return this.drake.glacier();
      }
      
      public function ignis(param1:ByteArray) : void
      {
         this.ember.jaguar(param1);
         param1.position = 0;
         var _loc2_:uint = this.drake.glacier();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:* = 0;
         while(_loc5_ < param1.length)
         {
            _loc3_.length = 0;
            param1.readBytes(_loc3_,0,_loc2_);
            this.drake.ignis(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ += _loc2_;
         }
         param1.length = 0;
         param1.writeBytes(_loc4_);
      }
      
      public function arcadia(param1:ByteArray) : void
      {
         param1.position = 0;
         var _loc2_:uint = this.drake.glacier();
         if(param1.length % _loc2_ != 0)
         {
            throw new Error("ECB " + _loc2_);
         }
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:* = 0;
         while(_loc5_ < param1.length)
         {
            _loc3_.length = 0;
            param1.readBytes(_loc3_,0,_loc2_);
            this.drake.arcadia(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ += _loc2_;
         }
         this.ember.kinetic(_loc4_);
         param1.length = 0;
         param1.writeBytes(_loc4_);
      }
      
      public function lunar() : void
      {
         this.drake.lunar();
         this.drake = null;
         this.ember = null;
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

