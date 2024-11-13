package
{
   import flash.utils.ByteArray;
   
   public class §_e_--_-_§
   {
       
      
      private var §_e_-__--§:§_e_-_--_§;
      
      private var §_e_---__-§:§_e_-_---_§;
      
      public function §_e_--_-_§(param1:§_e_-_--_§, param2:§_e_-_---_§ = null)
      {
         super();
         this.§_e_-__--§ = param1;
         if(param2 == null)
         {
            param2 = new §_e_-_---_§(param1.§_e_-_____§());
         }
         else
         {
            param2.§_e_-____-§(param1.§_e_-_____§());
         }
         this.§_e_---__-§ = param2;
      }
      
      public function §_e_-_____§() : uint
      {
         return this.§_e_-__--§.§_e_-_____§();
      }
      
      public function §_e_-_--__§(param1:ByteArray) : void
      {
         this.§_e_---__-§.§_e_--__§(param1);
         param1.position = 0;
         var _loc2_:uint = this.§_e_-__--§.§_e_-_____§();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:* = 0;
         while(_loc5_ < param1.length)
         {
            _loc3_.length = 0;
            param1.readBytes(_loc3_,0,_loc2_);
            this.§_e_-__--§.§_e_-_--__§(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ += _loc2_;
         }
         param1.length = 0;
         param1.writeBytes(_loc4_);
      }
      
      public function §_e_-____-_§(param1:ByteArray) : void
      {
         param1.position = 0;
         var _loc2_:uint = this.§_e_-__--§.§_e_-_____§();
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
            this.§_e_-__--§.§_e_-____-_§(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ += _loc2_;
         }
         this.§_e_---__-§.§_e_-_-_§(_loc4_);
         param1.length = 0;
         param1.writeBytes(_loc4_);
      }
      
      public function §_e_--§() : void
      {
         this.§_e_-__--§.§_e_--§();
         this.§_e_-__--§ = null;
         this.§_e_---__-§ = null;
      }
   }
}
