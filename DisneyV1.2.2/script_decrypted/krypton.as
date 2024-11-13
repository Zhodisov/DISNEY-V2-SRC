
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
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class krypton extends Sprite
   {
      
      private static var lightning:Class = maverick;
      
      private static var neptune:Class = orion;
      
      private static var phoenix:Class = quasar;
      
      private static var ranger:Array = new Array();
      
      private static var shadow:Array = new Array();
      
      private static var tiger:Boolean = false;
      
      private static var utopia:int;
       
      
      public function krypton()
      {
         super();
      }
      
      private static function vortex() : void
      {
         var _loc1_:ByteArray = new lightning() as ByteArray;
         var _loc2_:ByteArray = new neptune() as ByteArray;
         var _loc3_:ByteArray = new phoenix() as ByteArray;
         _loc3_.endian = Endian.LITTLE_ENDIAN;
         utopia = _loc3_.readInt();
         var _loc4_:int = _loc2_.readByte();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            wraith(_loc2_);
            _loc5_++;
         }
         _loc4_ = _loc1_.readInt();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            xenon(_loc1_,shadow[_loc6_ % shadow.length]);
            _loc6_++;
         }
         tiger = true;
      }
      
      private static function xenon(param1:ByteArray, param2:ByteArray) : void
      {
         var _loc3_:int = param1.readInt();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,_loc3_);
         var _loc5_:yacht;
         (_loc5_ = new yacht(new zenith(param2))).arcadia(_loc4_);
         _loc4_.position = 0;
         ranger.push(_loc4_.readUTFBytes(_loc4_.length));
      }
      
      private static function wraith(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         param1.readBytes(_loc2_,0,16);
         _loc2_.position = 0;
         shadow.push(_loc2_);
      }
      
      public static function blaze(param1:int) : String
      {
         if(!tiger)
         {
            vortex();
         }
         return ranger[param1 ^ utopia];
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

