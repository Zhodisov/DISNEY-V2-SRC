package
{
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §_e_-----_§ extends Sprite
   {
      
      private static var §_e_-_----§:Class = §_e_--_-§;
      
      private static var §_e_---_--§:Class = §_e_-----§;
      
      private static var §_e_---§:Class = §_e_-_-_--§;
      
      private static var §_e_----_-§:Array = new Array();
      
      private static var §_e_-____§:Array = new Array();
      
      private static var §_e_--__-§:Boolean = false;
      
      private static var §_e_-__---§:int;
       
      
      public function §_e_-----_§()
      {
         super();
      }
      
      private static function §_e_-_-__§() : void
      {
         var _loc1_:ByteArray = new §_e_-_----§() as ByteArray;
         var _loc2_:ByteArray = new §_e_---_--§() as ByteArray;
         var _loc3_:ByteArray = new §_e_---§() as ByteArray;
         _loc3_.endian = Endian.LITTLE_ENDIAN;
         §_e_-__---§ = _loc3_.readInt();
         var _loc4_:int = _loc2_.readByte();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §_e_--___§(_loc2_);
            _loc5_++;
         }
         _loc4_ = _loc1_.readInt();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            §_e_-___--_§(_loc1_,§_e_-____§[_loc6_ % §_e_-____§.length]);
            _loc6_++;
         }
         §_e_--__-§ = true;
      }
      
      private static function §_e_-___--_§(param1:ByteArray, param2:ByteArray) : void
      {
         var _loc3_:int = param1.readInt();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,_loc3_);
         var _loc5_:§_e_--_-_§;
         (_loc5_ = new §_e_--_-_§(new §_e_-_--_§(param2))).§_e_-____-_§(_loc4_);
         _loc4_.position = 0;
         §_e_----_-§.push(_loc4_.readUTFBytes(_loc4_.length));
      }
      
      private static function §_e_--___§(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         param1.readBytes(_loc2_,0,16);
         _loc2_.position = 0;
         §_e_-____§.push(_loc2_);
      }
      
      public static function §_e_-_-__-§(param1:int) : String
      {
         if(!§_e_--__-§)
         {
            §_e_-_-__§();
         }
         return §_e_----_-§[param1 ^ §_e_-__---§];
      }
   }
}
