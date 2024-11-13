package ChargeurTransformice_fla
{
   import flash.net.Socket;
   import flash.utils.*;
   
   public class §_-7§ extends Socket
   {
       
      
      private var §_-1W§:Function;
      
      private var written_bytes:ByteArray;
      
      public var §_-1L§:Socket;
      
      private var §_-3l§:String;
      
      public function §_-7§(param1:Socket, param2:Function, param3:String)
      {
         this.written_bytes = new ByteArray();
         super();
         this.§_-1W§ = param2;
         this.§_-1L§ = param1;
         this.§_-3l§ = param3;
      }
      
      override public function get connected() : Boolean
      {
         return this.§_-1L§.connected;
      }
      
      override public function get bytesPending() : uint
      {
         return this.§_-1L§.bytesPending;
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         return this.§_-1L§.removeEventListener(param1,param2,param3);
      }
      
      override public function set endian(param1:String) : void
      {
         this.§_-1L§.endian = param1;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         return this.§_-1L§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function connect(param1:String, param2:int) : void
      {
         return this.§_-1L§.connect(param1,param2);
      }
      
      override public function get bytesAvailable() : uint
      {
         return this.§_-1L§.bytesAvailable;
      }
      
      override public function readByte() : int
      {
         return this.§_-1L§.readByte();
      }
      
      override public function readShort() : int
      {
         return this.§_-1L§.readShort();
      }
      
      override public function readInt() : int
      {
         return this.§_-1L§.readInt();
      }
      
      override public function readUTF() : String
      {
         return this.§_-1L§.readUTF();
      }
      
      override public function readBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void
      {
         this.§_-1L§.readBytes(param1,param2,param3);
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
         this.§_-1W§(this.written_bytes,false);
         this.written_bytes.clear();
      }
   }
}
