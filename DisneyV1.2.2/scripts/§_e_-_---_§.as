package
{
   import flash.utils.ByteArray;
   
   public class §_e_-_---_§
   {
       
      
      private var §_e_-_---§:uint;
      
      public function §_e_-_---_§(param1:uint = 0)
      {
         super();
         this.§_e_-_---§ = param1;
      }
      
      public function §_e_--__§(param1:ByteArray) : void
      {
         var _loc2_:uint = this.§_e_-_---§ - param1.length % this.§_e_-_---§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_)
         {
            param1[param1.length] = _loc2_;
            _loc3_++;
         }
      }
      
      public function §_e_-_-_§(param1:ByteArray) : void
      {
         var _loc4_:* = 0;
         var _loc2_:uint = param1.length % this.§_e_-_---§;
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
      
      public function §_e_-____-§(param1:uint) : void
      {
         this.§_e_-_---§ = param1;
      }
   }
}
