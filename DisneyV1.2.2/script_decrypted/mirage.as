
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
   
   public class mirage
   {
       
      
      private var nova:int = 0;
      
      private var obelisk:int = 0;
      
      private var pulse:ByteArray;
      
      private const quest:uint = 256;
      
      public function mirage(param1:ByteArray = null)
      {
         super();
         this.pulse = new ByteArray();
         if(param1)
         {
            this.raven(param1);
         }
      }
      
      public function storm() : uint
      {
         return this.quest;
      }
      
      public function raven(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            this.pulse[_loc2_] = _loc2_;
            _loc2_++;
         }
         _loc3_ = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            _loc3_ = _loc3_ + this.pulse[_loc2_] + param1[_loc2_ % param1.length] & 255;
            _loc4_ = int(this.pulse[_loc2_]);
            this.pulse[_loc2_] = this.pulse[_loc3_];
            this.pulse[_loc3_] = _loc4_;
            _loc2_++;
         }
         this.nova = 0;
         this.obelisk = 0;
      }
      
      public function thunder() : uint
      {
         var _loc1_:int = 0;
         this.nova = this.nova + 1 & 255;
         this.obelisk = this.obelisk + this.pulse[this.nova] & 255;
         _loc1_ = int(this.pulse[this.nova]);
         this.pulse[this.nova] = this.pulse[this.obelisk];
         this.pulse[this.obelisk] = _loc1_;
         return this.pulse[_loc1_ + this.pulse[this.nova] & 255];
      }
      
      public function glacier() : uint
      {
         return 1;
      }
      
      public function ignis(param1:ByteArray) : void
      {
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length)
         {
            var _loc3_:* = _loc2_++;
            param1[_loc3_] ^= this.thunder();
         }
      }
      
      public function arcadia(param1:ByteArray) : void
      {
         this.ignis(param1);
      }
      
      public function lunar() : void
      {
         var _loc1_:Number = 0;
         if(this.pulse != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.pulse.length)
            {
               this.pulse[_loc1_] = Math.random() * 256;
               _loc1_++;
            }
            this.pulse.length = 0;
            this.pulse = null;
         }
         this.nova = 0;
         this.obelisk = 0;
      }
      
      public function ultra() : String
      {
         return "rc4";
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

