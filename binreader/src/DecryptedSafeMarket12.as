package
{
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   
   public class DecryptedSafeMarket12 extends MovieClip
   {
       
      
      private var §_el_--_-_§:Class;
      
      public var §_el_---_§:ByteArray;
      
      private var §_el_-_§:Class;
      
      private var §_el_----__§:Array;
      
      public var §_el_-----§:ByteArray;
      
      public function DecryptedSafeMarket12()
      {
         this.§_el_-_§ = DecryptedSafeMarket10;
         this.§_el_--_-_§ = DecryptedSafeMarket11;
         this.§_el_-----§ = new ByteArray();
         this.§_el_----__§ = [];
         super();
         this.§_el_---_§ = new this.§_el_-_§() as ByteArray;
         var _loc1_:ByteArray = new this.§_el_--_-_§() as ByteArray;
         var _loc2_:int = 0;
         while(_loc2_ < 16)
         {
            this.§_el_-----§.writeByte(_loc1_.readByte());
            _loc2_++;
         }
         this.§_el_-----§.position = 0;
         DecryptedSafeMarket1.§_el_-__-__-§(this.§_el_----__§,this.§_el_---_§.length);
      }
   }
}
