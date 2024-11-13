
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
   
   public class frost
   {
       
      
      private var viper:uint;
      
      public function frost(param1:uint = 0)
      {
         super();
         this.viper = param1;
      }
      
      public function jaguar(param1:ByteArray) : void
      {
         var _loc2_:uint = this.viper - param1.length % this.viper;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_)
         {
            param1[param1.length] = _loc2_;
            _loc3_++;
         }
      }
      
      public function kinetic(param1:ByteArray) : void
      {
         var _loc4_:* = 0;
         var _loc2_:uint = param1.length % this.viper;
         if(_loc2_ != 0)
         {
            throw new Error("PKCS#5::unpad: ByteArray.length isn\'t a multiple of the blockSize");
         }
         _loc2_ = uint(param1[param1.length - 1]);
         var _loc3_:uint = _loc2_;
         while(_loc3_ > 0)
         {
            _loc4_ = uint(param1[param1.length - 1]);
            --param1.length;
            if(_loc2_ != _loc4_)
            {
               throw new Error("PKCS#5:unpad: Invalid padding value. expected [" + _loc2_ + "], found [" + _loc4_ + "]");
            }
            _loc3_--;
         }
      }
      
      public function horizon(param1:uint) : void
      {
         this.viper = param1;
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

