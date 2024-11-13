package {
    import flash.display.Sprite;
    import flash.utils.ByteArray;

    public class Main extends Sprite {
        [Embed(source="../assets/8__el_-__-__.bin", mimeType="application/octet-stream")]
        private var BinaryData1:Class;

        [Embed(source="../assets/7__el_-___--_.bin", mimeType="application/octet-stream")]
        private var BinaryData2:Class;

        public function Main() {
            var byteArray1:ByteArray = new BinaryData1() as ByteArray;
            var byteArray2:ByteArray = new BinaryData2() as ByteArray;
            trace("Binary 1: " + byteArray1.length);
            trace("Binary 2: " + byteArray2.length);
            byteArray2.position = 0;
            var first16Bytes:String = "";
            for (var i:int = 0; i < 16; i++) {
                first16Bytes += byteArray2.readUnsignedByte().toString(16) + " ";
            }
            trace("16 bytes of Byte2: " + first16Bytes);
            byteArray1.position = 0;
            var completeContent:String = byteArray1.readUTFBytes(byteArray1.length);
            trace("Complete content " + completeContent);
        }
    }
}
