package
{
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §_e_-____--§
   {
       
      
      private var §_e_-___-__§:§_e_-__-_-§;
      
      private var §_e_-___§:Boolean = false;
      
      private var §_e_-_____-§:ByteArray;
      
      private var §_e_---_-_§:int;
      
      private var §_e_--_-__§:int;
      
      private var §_e_----__§:Boolean = false;
      
      public function §_e_-____--§(param1:Class = null)
      {
         var _loc2_:* = 0;
         super();
         if(param1 == null)
         {
            param1 = §_e_--_§;
         }
         this.§_e_-___-__§ = new param1() as §_e_-__-_-§;
         this.§_e_---_-_§ = this.§_e_-___-__§.§_e_-__§();
         this.§_e_-_____-§ = new ByteArray();
         this.§_e_--_-__§ = 0;
         while(this.§_e_--_-__§ < this.§_e_---_-_§)
         {
            _loc2_ = 65536 * Math.random();
            var _loc3_:* = this.§_e_--_-__§++;
            this.§_e_-_____-§[_loc3_] = _loc2_ >>> 8;
            var _loc4_:*;
            this.§_e_-_____-§[_loc4_ = this.§_e_--_-__§++] = _loc2_ & 255;
         }
         this.§_e_--_-__§ = 0;
         this.§_e_-__--_§();
      }
      
      public function §_e_-__--_§(param1:int = 0) : void
      {
         if(param1 == 0)
         {
            param1 = new Date().getTime();
         }
         var _loc2_:* = this.§_e_--_-__§++;
         this.§_e_-_____-§[_loc2_] ^= param1 & 255;
         var _loc3_:* = this.§_e_--_-__§++;
         this.§_e_-_____-§[_loc3_] ^= param1 >> 8 & 255;
         var _loc4_:*;
         this.§_e_-_____-§[_loc4_ = this.§_e_--_-__§++] = this.§_e_-_____-§[_loc4_] ^ param1 >> 16 & 255;
         var _loc5_:*;
         this.§_e_-_____-§[_loc5_ = this.§_e_--_-__§++] = this.§_e_-_____-§[_loc5_] ^ param1 >> 24 & 255;
         this.§_e_--_-__§ %= this.§_e_---_-_§;
         this.§_e_----__§ = true;
      }
      
      public function §_e_-__-_§() : void
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
            this.§_e_-__--_§(_loc1_.readUnsignedInt());
         }
      }
      
      public function §_e_--__--§(param1:ByteArray, param2:int) : void
      {
         while(param2--)
         {
            param1.writeByte(this.§_e_----§());
         }
      }
      
      public function §_e_----§() : int
      {
         if(!this.§_e_-___§)
         {
            if(!this.§_e_----__§)
            {
               this.§_e_-__-_§();
            }
            this.§_e_-___-__§.§_e_--_-_-§(this.§_e_-_____-§);
            this.§_e_-_____-§.length = 0;
            this.§_e_--_-__§ = 0;
            this.§_e_-___§ = true;
         }
         return this.§_e_-___-__§.§_e_---_§();
      }
      
      public function §_e_--___-§() : String
      {
         return "random-" + this.§_e_-___-__§.§_e_--___-§();
      }
   }
}
