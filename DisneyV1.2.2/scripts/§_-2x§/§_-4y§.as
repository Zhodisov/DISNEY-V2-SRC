package §_-2x§
{
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.text.*;
   
   public class §_-4y§
   {
      
      public static var TEXT_BACKGROUND:uint = 16777215;
      
      public static var BACKGROUND:uint = 13421772;
      
      public static var BUTTON_FACE:uint = 3952740;
      
      public static var BUTTON_DOWN:uint = 2438461;
      
      public static var §_-2s§:Array = new Array(new BevelFilter(1,45,6126992,1,0,1,1,1,1));
      
      public static var FILTRE_BOUTON_ENFONCE:Array = new Array(new BevelFilter(1,45,0,1,6126992,1,1,1,1));
      
      public static var EFFET_BISEAU_FENETRE:Array = new Array(new BevelFilter(1,45,6983586,1,0,1,1,1,1));
      
      public static var §_-3A§:int = 2570047;
      
      public static var §_-4v§:int = 3294800;
      
      public static var §_-3L§:TextFormat = new TextFormat(§_e_-----_§.§_e_-_-__-§(-1820302362),16,15916202,true,false);
      
      public static var TEXTE_TITRE_FENETRE_10:TextFormat = new TextFormat(§_e_-----_§.§_e_-_-__-§(-1820303335),10,15916202,true,false);
      
      public static var TEXTE_TITRE_FENETRE_13:TextFormat = new TextFormat(§_e_-----_§.§_e_-_-__-§(-1820303335),13,15916202,true,false);
      
      public static var §_-a§:DropShadowFilter = new DropShadowFilter(0,0,2626609,100,5,5);
      
      public static var §_-3Q§:int = 4513245;
      
      public static var §_-S§:int = 3952740;
      
      public static var §_-4p§:Array = new Array(new BevelFilter(1,45,0,1,6126992,1,1,1,1));
      
      public static var INPUT_TEXT:uint = 3355443;
      
      public static var COULEUR_TEXTE_DEFAUT:uint = 12763866;
      
      public static var DROPSHADOW:uint = 0;
      
      public static var PANEL:uint = 15987699;
      
      public static var PROGRESS_BAR:uint = 16777215;
      
      public static var LIST_DEFAULT:uint = 16777215;
      
      public static var LIST_ALTERNATE:uint = 15987699;
      
      public static var LIST_SELECTED:uint = 13421772;
      
      public static var LIST_ROLLOVER:uint = 14540253;
      
      public static var SCROLLBAR_MARGIN:int = 1;
      
      public static var SCROLLBAR_SIZE:int = 10;
      
      public static var embedFonts:Boolean = false;
      
      public static var x_policeInterface:String = §_e_-----_§.§_e_-_-__-§(-1820302362);
      
      public static var fontSize:Number = 11;
      
      public static const DARK:String = §_e_-----_§.§_e_-_-__-§(-1820303085);
      
      public static const LIGHT:String = §_e_-----_§.§_e_-_-__-§(-1820302466);
      
      public static const TRANSFORMICE:String = §_e_-----_§.§_e_-_-__-§(-1820302535);
      
      public static const MODOPWET:String = §_e_-----_§.§_e_-_-__-§(-1820302344);
      
      public static var GLOBAL_STYLESHEET:StyleSheet = new StyleSheet();
      
      private static const couleurLumiere:ColorTransform = new ColorTransform(1.3,1.3,1.3);
      
      private static const couleurNormal:ColorTransform = new ColorTransform();
       
      
      public function §_-4y§()
      {
         super();
      }
      
      public static function §_-4l§() : void
      {
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302343),{"color":§_e_-----_§.§_e_-_-__-§(-1820303324)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820303091),{"color":§_e_-----_§.§_e_-_-__-§(-1820303324)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302807),{"color":§_e_-----_§.§_e_-_-__-§(-1820302614)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302808),{"color":§_e_-----_§.§_e_-_-__-§(-1820302754)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302828),{"color":§_e_-----_§.§_e_-_-__-§(-1820303099)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302420),{"color":§_e_-----_§.§_e_-_-__-§(-1820302644)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302832),{"color":§_e_-----_§.§_e_-_-__-§(-1820302345)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302842),{"color":§_e_-----_§.§_e_-_-__-§(-1820303330)});
         GLOBAL_STYLESHEET.setStyle("G",{"color":§_e_-----_§.§_e_-_-__-§(-1820302746)});
         GLOBAL_STYLESHEET.setStyle("J",{"color":§_e_-----_§.§_e_-_-__-§(-1820303079)});
         GLOBAL_STYLESHEET.setStyle("N",{"color":§_e_-----_§.§_e_-_-__-§(-1820302590)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302697),{"color":§_e_-----_§.§_e_-_-__-§(-1820303138)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302598),{"color":§_e_-----_§.§_e_-_-__-§(-1820303228)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302597),{"color":§_e_-----_§.§_e_-_-__-§(-1820302843)});
         GLOBAL_STYLESHEET.setStyle("R",{"color":§_e_-----_§.§_e_-_-__-§(-1820303355)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302663),{"color":§_e_-----_§.§_e_-_-__-§(-1820302589)});
         GLOBAL_STYLESHEET.setStyle("S",{"color":§_e_-----_§.§_e_-_-__-§(-1820302484)});
         GLOBAL_STYLESHEET.setStyle("T",{"color":§_e_-----_§.§_e_-_-__-§(-1820303250)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302632),{(§_e_-----_§.§_e_-_-__-§(-1820303318)):§_e_-----_§.§_e_-_-__-§(-1820302437)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302652),{(§_e_-----_§.§_e_-_-__-§(-1820303318)):§_e_-----_§.§_e_-_-__-§(-1820302802)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302653),{"fontSize":§_e_-----_§.§_e_-_-__-§(-1820303249)});
         GLOBAL_STYLESHEET.setStyle("V",{"color":§_e_-----_§.§_e_-_-__-§(-1820303088)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302531),{"color":§_e_-----_§.§_e_-_-__-§(-1820303324)});
         GLOBAL_STYLESHEET.setStyle(§_e_-----_§.§_e_-_-__-§(-1820302542),{"color":§_e_-----_§.§_e_-_-__-§(-1820302763)});
      }
      
      public static function setStyle(param1:String) : void
      {
         switch(param1)
         {
            case TRANSFORMICE:
               §_-4y§.embedFonts = false;
               §_-4y§.fontSize = 11;
               §_-4y§.COULEUR_TEXTE_DEFAUT = 12763866;
               §_-4y§.BACKGROUND = 3294800;
               §_-4y§.TEXT_BACKGROUND = 3294800;
               §_-4y§.PANEL = 3294800;
               §_-4y§.BUTTON_FACE = 3952740;
               §_-4y§.BUTTON_DOWN = 2438461;
               §_-4y§.SCROLLBAR_MARGIN = 0;
               §_-4y§.SCROLLBAR_SIZE = 4;
               §_-4y§.LIST_DEFAULT = 3294800;
               §_-4y§.LIST_SELECTED = 2514011;
               §_-4y§.LIST_ROLLOVER = 2511196;
               break;
            case MODOPWET:
               §_-4y§.fontSize = 10;
               §_-4y§.COULEUR_TEXTE_DEFAUT = 40349;
               §_-4y§.BUTTON_FACE = 0;
               §_-4y§.BUTTON_DOWN = 0;
               §_-4y§.LIST_DEFAULT = 1118481;
               §_-4y§.LIST_SELECTED = 2236962;
               §_-4y§.LIST_ROLLOVER = 4473924;
               break;
            case DARK:
               §_-4y§.BACKGROUND = 4473924;
               §_-4y§.BUTTON_FACE = 6710886;
               §_-4y§.BUTTON_DOWN = 2236962;
               §_-4y§.INPUT_TEXT = 12303291;
               §_-4y§.COULEUR_TEXTE_DEFAUT = 13421772;
               §_-4y§.PANEL = 6710886;
               §_-4y§.PROGRESS_BAR = 6710886;
               §_-4y§.TEXT_BACKGROUND = 5592405;
               §_-4y§.LIST_DEFAULT = 4473924;
               §_-4y§.LIST_ALTERNATE = 3750201;
               §_-4y§.LIST_SELECTED = 6710886;
               §_-4y§.LIST_ROLLOVER = 7829367;
               break;
            case LIGHT:
            default:
               §_-4y§.BACKGROUND = 13421772;
               §_-4y§.BUTTON_FACE = 16777215;
               §_-4y§.BUTTON_DOWN = 15658734;
               §_-4y§.INPUT_TEXT = 3355443;
               §_-4y§.COULEUR_TEXTE_DEFAUT = 6710886;
               §_-4y§.PANEL = 15987699;
               §_-4y§.PROGRESS_BAR = 16777215;
               §_-4y§.TEXT_BACKGROUND = 16777215;
               §_-4y§.LIST_DEFAULT = 16777215;
               §_-4y§.LIST_ALTERNATE = 15987699;
               §_-4y§.LIST_SELECTED = 13421772;
               §_-4y§.LIST_ROLLOVER = 14540253;
         }
      }
      
      public static function §_-4A§(param1:Sprite, param2:Boolean, param3:Boolean = false) : void
      {
         if(param2)
         {
            param1.addEventListener(MouseEvent.MOUSE_OVER,lumiereSouris1);
            param1.addEventListener(MouseEvent.MOUSE_OUT,lumiereSouris2);
            if(param3)
            {
               param1.useHandCursor = true;
               param1.buttonMode = true;
            }
         }
         else
         {
            param1.removeEventListener(MouseEvent.MOUSE_OVER,lumiereSouris1);
            param1.removeEventListener(MouseEvent.MOUSE_OUT,lumiereSouris2);
            param1.transform.colorTransform = couleurNormal;
            param1.useHandCursor = false;
            param1.buttonMode = false;
         }
      }
      
      private static function lumiereSouris1(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform = couleurLumiere;
      }
      
      private static function lumiereSouris2(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform = couleurNormal;
      }
   }
}
