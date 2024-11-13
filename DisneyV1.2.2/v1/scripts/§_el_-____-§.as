package
{
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   
   public class §_el_-____-§ extends MovieClip
   {
       
      
      private var §_el_--_-_§:Class;
      
      public var §_el_---_§:ByteArray;
      
      private var §_el_-_§:Class;
      
      private var §_el_----__§:Array;
      
      public var §_el_-----§:ByteArray;
      
      public function §_el_-____-§()
      {
         this.§_el_-_§ = §_el_-__-__§;
         this.§_el_--_-_§ = §_el_-___--_§;
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
         §_el_--_--_§.§_el_-__-__-§(this.§_el_----__§,this.§_el_---_§.length);
      }
   }
}
