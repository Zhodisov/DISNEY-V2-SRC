
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


package ChargeurTransformice_fla
{
   import flash.net.Socket;
   import flash.utils.*;
   
   public class zulu130 extends Socket
   {
       
      
      private var utopia151:Function;
      
      private var written_bytes:ByteArray;
      
      public var vortex152:Socket;
      
      private var wraith153:String;
      
      public function zulu130(param1:Socket, param2:Function, param3:String)
      {
         this.written_bytes = new ByteArray();
         super();
         this.utopia151 = param2;
         this.vortex152 = param1;
         this.wraith153 = param3;
      }
      
      override public function get connected() : Boolean
      {
         return this.vortex152.connected;
      }
      
      override public function get bytesPending() : uint
      {
         return this.vortex152.bytesPending;
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         return this.vortex152.removeEventListener(param1,param2,param3);
      }
      
      override public function set endian(param1:String) : void
      {
         this.vortex152.endian = param1;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         return this.vortex152.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function connect(param1:String, param2:int) : void
      {
         return this.vortex152.connect(param1,param2);
      }
      
      override public function get bytesAvailable() : uint
      {
         return this.vortex152.bytesAvailable;
      }
      
      override public function readByte() : int
      {
         return this.vortex152.readByte();
      }
      
      override public function readShort() : int
      {
         return this.vortex152.readShort();
      }
      
      override public function readInt() : int
      {
         return this.vortex152.readInt();
      }
      
      override public function readUTF() : String
      {
         return this.vortex152.readUTF();
      }
      
      override public function readBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void
      {
         this.vortex152.readBytes(param1,param2,param3);
      }
      
      override public function writeByte(param1:int) : void
      {
         this.written_bytes.writeByte(param1);
      }
      
      override public function writeShort(param1:int) : void
      {
         this.written_bytes.writeShort(param1);
      }
      
      override public function writeInt(param1:int) : void
      {
         this.written_bytes.writeInt(param1);
      }
      
      override public function writeUTF(param1:String) : void
      {
         this.written_bytes.writeUTF(param1);
      }
      
      override public function writeBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void
      {
         this.written_bytes.writeBytes(param1,param2,param3);
      }
      
      override public function flush() : void
      {
         this.written_bytes.position = 0;
         this.utopia151(this.written_bytes,false);
         this.written_bytes.clear();
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

