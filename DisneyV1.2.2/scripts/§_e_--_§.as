package
{
   import flash.utils.ByteArray;
   
   public class §_e_--_§
   {
       
      
      private var §_e_-______§:int = 0;
      
      private var §_e_----_§:int = 0;
      
      private var §_e_-_--§:ByteArray;
      
      private const §_e_---_-_§:uint = 256;
      
      public function §_e_--_§(param1:ByteArray = null)
      {
         super();
         this.§_e_-_--§ = new ByteArray();
         if(param1)
         {
            this.§_e_--_-_-§(param1);
         }
      }
      
      public function §_e_-__§() : uint
      {
         return this.§_e_---_-_§;
      }
      
      public function §_e_--_-_-§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            this.§_e_-_--§[_loc2_] = _loc2_;
            _loc2_++;
         }
         _loc3_ = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            _loc3_ = _loc3_ + this.§_e_-_--§[_loc2_] + param1[_loc2_ % param1.length] & 255;
            _loc4_ = int(this.§_e_-_--§[_loc2_]);
            this.§_e_-_--§[_loc2_] = this.§_e_-_--§[_loc3_];
            this.§_e_-_--§[_loc3_] = _loc4_;
            _loc2_++;
         }
         this.§_e_-______§ = 0;
         this.§_e_----_§ = 0;
      }
      
      public function §_e_---_§() : uint
      {
         var _loc1_:int = 0;
         this.§_e_-______§ = this.§_e_-______§ + 1 & 255;
         this.§_e_----_§ = this.§_e_----_§ + this.§_e_-_--§[this.§_e_-______§] & 255;
         _loc1_ = int(this.§_e_-_--§[this.§_e_-______§]);
         this.§_e_-_--§[this.§_e_-______§] = this.§_e_-_--§[this.§_e_----_§];
         this.§_e_-_--§[this.§_e_----_§] = _loc1_;
         return this.§_e_-_--§[_loc1_ + this.§_e_-_--§[this.§_e_-______§] & 255];
      }
      
      public function §_e_-_____§() : uint
      {
         return 1;
      }
      
      public function §_e_-_--__§(param1:ByteArray) : void
      {
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length)
         {
            var _loc3_:* = _loc2_++;
            param1[_loc3_] ^= this.§_e_---_§();
         }
      }
      
      public function §_e_-____-_§(param1:ByteArray) : void
      {
         this.§_e_-_--__§(param1);
      }
      
      public function §_e_--§() : void
      {
         var _loc1_:Number = 0;
         if(this.§_e_-_--§ != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_e_-_--§.length)
            {
               this.§_e_-_--§[_loc1_] = Math.random() * 256;
               _loc1_++;
            }
            this.§_e_-_--§.length = 0;
            this.§_e_-_--§ = null;
         }
         this.§_e_-______§ = 0;
         this.§_e_----_§ = 0;
      }
      
      public function §_e_--___-§() : String
      {
         return "rc4";
      }
   }
}
