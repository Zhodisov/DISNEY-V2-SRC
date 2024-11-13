
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
   import com.adobe.serialization.json.*;
   import com.hurlant.util.*;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.utils.*;
   
   public dynamic class Keys
   {
       
      
      public var main_instance:echo31;
      
      public var app_domain:LoaderInfo;
      
      public var maps_len:uint = 0;
      
      public var soft_len:uint = 0;
      
      public var sierra45:String = "INSERT";
      
      public var maps:Array;
      
      public var locales:Object;
      
      public function Keys()
      {
         this.main_instance = echo31.instance;
         this.maps = new Array();
         this.locales = {
            (krypton.blaze(-1820302347)):{
               (krypton.blaze(-1820303053)):krypton.blaze(-1820303106),
               (krypton.blaze(-1820303051)):krypton.blaze(-1820302383),
               (krypton.blaze(-1820303055)):krypton.blaze(-1820303276),
               (krypton.blaze(-1820303054)):krypton.blaze(-1820302514),
               (krypton.blaze(-1820303042)):krypton.blaze(-1820302801),
               (krypton.blaze(-1820303056)):krypton.blaze(-1820302581),
               (krypton.blaze(-1820303045)):krypton.blaze(-1820302549),
               (krypton.blaze(-1820303043)):krypton.blaze(-1820302820),
               (krypton.blaze(-1820303047)):krypton.blaze(-1820303356),
               (krypton.blaze(-1820302788)):krypton.blaze(-1820302460),
               (krypton.blaze(-1820302411)):krypton.blaze(-1820303109),
               (krypton.blaze(-1820303118)):krypton.blaze(-1820302580),
               (krypton.blaze(-1820302679)):krypton.blaze(-1820302777),
               (krypton.blaze(-1820302548)):krypton.blaze(-1820303260),
               (krypton.blaze(-1820302364)):krypton.blaze(-1820302781),
               (krypton.blaze(-1820302705)):krypton.blaze(-1820302706),
               (krypton.blaze(-1820302707)):krypton.blaze(-1820302534),
               (krypton.blaze(-1820302418)):krypton.blaze(-1820302988),
               (krypton.blaze(-1820302554)):krypton.blaze(-1820302461),
               (krypton.blaze(-1820302555)):krypton.blaze(-1820302616),
               (krypton.blaze(-1820302556)):krypton.blaze(-1820302694),
               (krypton.blaze(-1820302557)):krypton.blaze(-1820302845),
               (krypton.blaze(-1820302570)):krypton.blaze(-1820302637),
               (krypton.blaze(-1820302572)):krypton.blaze(-1820303182),
               (krypton.blaze(-1820302573)):krypton.blaze(-1820302650),
               (krypton.blaze(-1820302574)):krypton.blaze(-1820302577),
               (krypton.blaze(-1820302575)):krypton.blaze(-1820302341),
               (krypton.blaze(-1820302348)):krypton.blaze(-1820303226),
               (krypton.blaze(-1820302702)):"1",
               (krypton.blaze(-1820302703)):"2",
               (krypton.blaze(-1820302698)):"3",
               (krypton.blaze(-1820302699)):"4",
               (krypton.blaze(-1820302700)):"5",
               (krypton.blaze(-1820302701)):"6",
               (krypton.blaze(-1820302688)):"7",
               (krypton.blaze(-1820302674)):"8",
               (krypton.blaze(-1820302675)):"9",
               (krypton.blaze(-1820302676)):krypton.blaze(-1820303261),
               (krypton.blaze(-1820302412)):krypton.blaze(-1820302817),
               (krypton.blaze(-1820302528)):krypton.blaze(-1820302585),
               (krypton.blaze(-1820302520)):krypton.blaze(-1820302665),
               (krypton.blaze(-1820303339)):krypton.blaze(-1820302430),
               (krypton.blaze(-1820303076)):krypton.blaze(-1820303116),
               (krypton.blaze(-1820302771)):krypton.blaze(-1820302349),
               (krypton.blaze(-1820303246)):krypton.blaze(-1820303108),
               (krypton.blaze(-1820303103)):krypton.blaze(-1820302838),
               (krypton.blaze(-1820302718)):krypton.blaze(-1820303130),
               (krypton.blaze(-1820302686)):krypton.blaze(-1820303274),
               (krypton.blaze(-1820302550)):krypton.blaze(-1820302487),
               (krypton.blaze(-1820303229)):krypton.blaze(-1820302617),
               (krypton.blaze(-1820302716)):krypton.blaze(-1820302714),
               (krypton.blaze(-1820302633)):krypton.blaze(-1820303295),
               (krypton.blaze(-1820303166)):krypton.blaze(-1820302829),
               (krypton.blaze(-1820302595)):krypton.blaze(-1820302639),
               (krypton.blaze(-1820303152)):krypton.blaze(-1820302615),
               (krypton.blaze(-1820303077)):krypton.blaze(-1820302392),
               (krypton.blaze(-1820302564)):krypton.blaze(-1820303219),
               (krypton.blaze(-1820303114)):krypton.blaze(-1820302401),
               (krypton.blaze(-1820302455)):krypton.blaze(-1820303121),
               (krypton.blaze(-1820303137)):krypton.blaze(-1820302518),
               (krypton.blaze(-1820303044)):krypton.blaze(-1820303302),
               (krypton.blaze(-1820303316)):krypton.blaze(-1820303167),
               (krypton.blaze(-1820302848)):krypton.blaze(-1820302800),
               (krypton.blaze(-1820302495)):krypton.blaze(-1820302789),
               (krypton.blaze(-1820302399)):krypton.blaze(-1820303236),
               (krypton.blaze(-1820302381)):krypton.blaze(-1820303123),
               (krypton.blaze(-1820303115)):krypton.blaze(-1820303097),
               (krypton.blaze(-1820303092)):krypton.blaze(-1820303357),
               (krypton.blaze(-1820302571)):krypton.blaze(-1820302743),
               (krypton.blaze(-1820303111)):krypton.blaze(-1820302584),
               (krypton.blaze(-1820302621)):krypton.blaze(-1820302435),
               (krypton.blaze(-1820303245)):krypton.blaze(-1820303104),
               (krypton.blaze(-1820302692)):krypton.blaze(-1820302792),
               (krypton.blaze(-1820302464)):krypton.blaze(-1820302778),
               (krypton.blaze(-1820302987)):krypton.blaze(-1820302504),
               (krypton.blaze(-1820302426)):krypton.blaze(-1820302471),
               (krypton.blaze(-1820302480)):krypton.blaze(-1820302342),
               (krypton.blaze(-1820302478)):krypton.blaze(-1820302405),
               (krypton.blaze(-1820303343)):krypton.blaze(-1820302485),
               (krypton.blaze(-1820303069)):krypton.blaze(-1820302431),
               (krypton.blaze(-1820303344)):krypton.blaze(-1820302643),
               (krypton.blaze(-1820302741)):krypton.blaze(-1820302758),
               (krypton.blaze(-1820303353)):krypton.blaze(-1820303096),
               (krypton.blaze(-1820302649)):krypton.blaze(-1820303319),
               (krypton.blaze(-1820303082)):krypton.blaze(-1820302586),
               (krypton.blaze(-1820303342)):krypton.blaze(-1820302772),
               (krypton.blaze(-1820302673)):krypton.blaze(-1820302977),
               (krypton.blaze(-1820302826)):krypton.blaze(-1820302756),
               (krypton.blaze(-1820302827)):krypton.blaze(-1820302729),
               (krypton.blaze(-1820302830)):krypton.blaze(-1820302631),
               (krypton.blaze(-1820302821)):krypton.blaze(-1820302578),
               (krypton.blaze(-1820302823)):krypton.blaze(-1820302780),
               (krypton.blaze(-1820302824)):krypton.blaze(-1820302410),
               (krypton.blaze(-1820302516)):krypton.blaze(-1820302695),
               (krypton.blaze(-1820302594)):krypton.blaze(-1820302488),
               (krypton.blaze(-1820302593)):krypton.blaze(-1820302728),
               (krypton.blaze(-1820302608)):krypton.blaze(-1820302696),
               (krypton.blaze(-1820302607)):krypton.blaze(-1820302486),
               (krypton.blaze(-1820302606)):krypton.blaze(-1820302496),
               (krypton.blaze(-1820302605)):krypton.blaze(-1820302713),
               (krypton.blaze(-1820302603)):krypton.blaze(-1820302729),
               (krypton.blaze(-1820302601)):krypton.blaze(-1820302510),
               (krypton.blaze(-1820302711)):krypton.blaze(-1820302530),
               (krypton.blaze(-1820302709)):krypton.blaze(-1820302562),
               (krypton.blaze(-1820302782)):krypton.blaze(-1820302513),
               (krypton.blaze(-1820302622)):krypton.blaze(-1820302981),
               (krypton.blaze(-1820302768)):krypton.blaze(-1820302666),
               (krypton.blaze(-1820302403)):krypton.blaze(-1820302762),
               (krypton.blaze(-1820302796)):krypton.blaze(-1820302720),
               (krypton.blaze(-1820302732)):krypton.blaze(-1820302610),
               (krypton.blaze(-1820303217)):krypton.blaze(-1820302978),
               (krypton.blaze(-1820302600)):krypton.blaze(-1820303205),
               (krypton.blaze(-1820302359)):krypton.blaze(-1820302385),
               (krypton.blaze(-1820302757)):krypton.blaze(-1820302847),
               (krypton.blaze(-1820302793)):krypton.blaze(-1820302493),
               (krypton.blaze(-1820302446)):krypton.blaze(-1820302441),
               (krypton.blaze(-1820303158)):krypton.blaze(-1820302579),
               (krypton.blaze(-1820302677)):krypton.blaze(-1820303298),
               (krypton.blaze(-1820303284)):krypton.blaze(-1820302646),
               (krypton.blaze(-1820302533)):krypton.blaze(-1820302489)
            },
            (krypton.blaze(-1820302350)):{},
            (krypton.blaze(-1820303244)):{},
            (krypton.blaze(-1820303290)):{},
            (krypton.blaze(-1820302361)):{
               (krypton.blaze(-1820303053)):krypton.blaze(-1820302661),
               (krypton.blaze(-1820303051)):krypton.blaze(-1820302783),
               (krypton.blaze(-1820303055)):krypton.blaze(-1820302560),
               (krypton.blaze(-1820303054)):krypton.blaze(-1820302588),
               (krypton.blaze(-1820303042)):krypton.blaze(-1820303061),
               (krypton.blaze(-1820303056)):krypton.blaze(-1820303299),
               (krypton.blaze(-1820303045)):krypton.blaze(-1820302481),
               (krypton.blaze(-1820303043)):krypton.blaze(-1820302634),
               (krypton.blaze(-1820303047)):krypton.blaze(-1820302786),
               (krypton.blaze(-1820302411)):krypton.blaze(-1820302419),
               (krypton.blaze(-1820303118)):krypton.blaze(-1820302779),
               (krypton.blaze(-1820302679)):krypton.blaze(-1820302400),
               (krypton.blaze(-1820302548)):krypton.blaze(-1820303159),
               (krypton.blaze(-1820302705)):krypton.blaze(-1820302539),
               (krypton.blaze(-1820302707)):krypton.blaze(-1820303057),
               (krypton.blaze(-1820302744)):krypton.blaze(-1820302339),
               (krypton.blaze(-1820302412)):krypton.blaze(-1820302769),
               (krypton.blaze(-1820302528)):krypton.blaze(-1820302664),
               (krypton.blaze(-1820302520)):krypton.blaze(-1820302436),
               (krypton.blaze(-1820302686)):krypton.blaze(-1820303274),
               (krypton.blaze(-1820302550)):krypton.blaze(-1820302448),
               (krypton.blaze(-1820303229)):krypton.blaze(-1820302617),
               (krypton.blaze(-1820302716)):krypton.blaze(-1820303093),
               (krypton.blaze(-1820302633)):krypton.blaze(-1820303350),
               (krypton.blaze(-1820303166)):krypton.blaze(-1820302449),
               (krypton.blaze(-1820302595)):krypton.blaze(-1820302639),
               (krypton.blaze(-1820303152)):krypton.blaze(-1820303337),
               (krypton.blaze(-1820303077)):krypton.blaze(-1820302540),
               (krypton.blaze(-1820302564)):krypton.blaze(-1820302784),
               (krypton.blaze(-1820303114)):krypton.blaze(-1820302803),
               (krypton.blaze(-1820302455)):krypton.blaze(-1820302536),
               (krypton.blaze(-1820303137)):krypton.blaze(-1820303293),
               (krypton.blaze(-1820303044)):krypton.blaze(-1820302439),
               (krypton.blaze(-1820303316)):krypton.blaze(-1820303167),
               (krypton.blaze(-1820302848)):krypton.blaze(-1820302451),
               (krypton.blaze(-1820302495)):krypton.blaze(-1820302790),
               (krypton.blaze(-1820302399)):krypton.blaze(-1820302543),
               (krypton.blaze(-1820302381)):krypton.blaze(-1820303320),
               (krypton.blaze(-1820303115)):krypton.blaze(-1820302791),
               (krypton.blaze(-1820303092)):krypton.blaze(-1820302629),
               (krypton.blaze(-1820302571)):krypton.blaze(-1820303083),
               (krypton.blaze(-1820303111)):krypton.blaze(-1820302651),
               (krypton.blaze(-1820302621)):krypton.blaze(-1820302445),
               (krypton.blaze(-1820303245)):krypton.blaze(-1820302547),
               (krypton.blaze(-1820303339)):krypton.blaze(-1820303144),
               (krypton.blaze(-1820303076)):krypton.blaze(-1820302506),
               (krypton.blaze(-1820302771)):krypton.blaze(-1820302521),
               (krypton.blaze(-1820303246)):krypton.blaze(-1820302409),
               (krypton.blaze(-1820303103)):krypton.blaze(-1820302628),
               (krypton.blaze(-1820302718)):krypton.blaze(-1820302422),
               (krypton.blaze(-1820302692)):krypton.blaze(-1820303058),
               (krypton.blaze(-1820302464)):krypton.blaze(-1820302390),
               (krypton.blaze(-1820302987)):krypton.blaze(-1820303156),
               (krypton.blaze(-1820302426)):krypton.blaze(-1820302611),
               (krypton.blaze(-1820302480)):krypton.blaze(-1820302681),
               (krypton.blaze(-1820302478)):krypton.blaze(-1820303185),
               (krypton.blaze(-1820303343)):krypton.blaze(-1820302545),
               (krypton.blaze(-1820303069)):krypton.blaze(-1820303112),
               (krypton.blaze(-1820303344)):krypton.blaze(-1820303269),
               (krypton.blaze(-1820302741)):krypton.blaze(-1820302544),
               (krypton.blaze(-1820303353)):krypton.blaze(-1820302525),
               (krypton.blaze(-1820302649)):krypton.blaze(-1820303087),
               (krypton.blaze(-1820303082)):krypton.blaze(-1820303301),
               (krypton.blaze(-1820303342)):krypton.blaze(-1820302450),
               (krypton.blaze(-1820302826)):krypton.blaze(-1820302811),
               (krypton.blaze(-1820302827)):krypton.blaze(-1820302837),
               (krypton.blaze(-1820302830)):krypton.blaze(-1820302631),
               (krypton.blaze(-1820302821)):krypton.blaze(-1820302552),
               (krypton.blaze(-1820302823)):krypton.blaze(-1820302794),
               (krypton.blaze(-1820302824)):krypton.blaze(-1820302755),
               (krypton.blaze(-1820302768)):krypton.blaze(-1820302761),
               (krypton.blaze(-1820302403)):krypton.blaze(-1820303006),
               (krypton.blaze(-1820302796)):krypton.blaze(-1820302812),
               (krypton.blaze(-1820302732)):krypton.blaze(-1820302831),
               (krypton.blaze(-1820303217)):krypton.blaze(-1820302669),
               (krypton.blaze(-1820302600)):krypton.blaze(-1820302442),
               (krypton.blaze(-1820302359)):krypton.blaze(-1820302453),
               (krypton.blaze(-1820302757)):krypton.blaze(-1820302752),
               (krypton.blaze(-1820303284)):krypton.blaze(-1820302476),
               (krypton.blaze(-1820302533)):krypton.blaze(-1820302825)
            },
            (krypton.blaze(-1820303242)):{
               (krypton.blaze(-1820303053)):krypton.blaze(-1820303086),
               (krypton.blaze(-1820303051)):krypton.blaze(-1820302659),
               (krypton.blaze(-1820303055)):krypton.blaze(-1820302804),
               (krypton.blaze(-1820303054)):krypton.blaze(-1820302654),
               (krypton.blaze(-1820303042)):krypton.blaze(-1820303184),
               (krypton.blaze(-1820303056)):krypton.blaze(-1820302581),
               (krypton.blaze(-1820303045)):krypton.blaze(-1820302433),
               (krypton.blaze(-1820303043)):krypton.blaze(-1820302438),
               (krypton.blaze(-1820303047)):krypton.blaze(-1820302645),
               (krypton.blaze(-1820302411)):krypton.blaze(-1820302502),
               (krypton.blaze(-1820303118)):krypton.blaze(-1820302391),
               (krypton.blaze(-1820302679)):krypton.blaze(-1820302413),
               (krypton.blaze(-1820302548)):krypton.blaze(-1820302559),
               (krypton.blaze(-1820302705)):krypton.blaze(-1820302708),
               (krypton.blaze(-1820302707)):krypton.blaze(-1820303100),
               (krypton.blaze(-1820302686)):krypton.blaze(-1820302751),
               (krypton.blaze(-1820302550)):krypton.blaze(-1820302370),
               (krypton.blaze(-1820303229)):krypton.blaze(-1820303177),
               (krypton.blaze(-1820302716)):krypton.blaze(-1820302765),
               (krypton.blaze(-1820302633)):krypton.blaze(-1820302737),
               (krypton.blaze(-1820303166)):krypton.blaze(-1820302568),
               (krypton.blaze(-1820302595)):krypton.blaze(-1820303307),
               (krypton.blaze(-1820303152)):krypton.blaze(-1820303282),
               (krypton.blaze(-1820303077)):krypton.blaze(-1820303333),
               (krypton.blaze(-1820302564)):krypton.blaze(-1820302569),
               (krypton.blaze(-1820303114)):krypton.blaze(-1820302749),
               (krypton.blaze(-1820302455)):krypton.blaze(-1820302500),
               (krypton.blaze(-1820303137)):krypton.blaze(-1820302810),
               (krypton.blaze(-1820303044)):krypton.blaze(-1820302587),
               (krypton.blaze(-1820303316)):krypton.blaze(-1820303167),
               (krypton.blaze(-1820302848)):krypton.blaze(-1820302371),
               (krypton.blaze(-1820302495)):krypton.blaze(-1820302789),
               (krypton.blaze(-1820302399)):krypton.blaze(-1820302414),
               (krypton.blaze(-1820302381)):krypton.blaze(-1820303313),
               (krypton.blaze(-1820303115)):krypton.blaze(-1820302599),
               (krypton.blaze(-1820303092)):krypton.blaze(-1820302760),
               (krypton.blaze(-1820302571)):krypton.blaze(-1820303321),
               (krypton.blaze(-1820303111)):krypton.blaze(-1820302750),
               (krypton.blaze(-1820302621)):krypton.blaze(-1820303306),
               (krypton.blaze(-1820303245)):krypton.blaze(-1820303297),
               (krypton.blaze(-1820302692)):krypton.blaze(-1820302797),
               (krypton.blaze(-1820302464)):krypton.blaze(-1820303326),
               (krypton.blaze(-1820302987)):krypton.blaze(-1820302689),
               (krypton.blaze(-1820302426)):krypton.blaze(-1820302471),
               (krypton.blaze(-1820302480)):krypton.blaze(-1820303060),
               (krypton.blaze(-1820302478)):krypton.blaze(-1820302635),
               (krypton.blaze(-1820303343)):krypton.blaze(-1820302408),
               (krypton.blaze(-1820303069)):krypton.blaze(-1820302337),
               (krypton.blaze(-1820303344)):krypton.blaze(-1820302643),
               (krypton.blaze(-1820302741)):krypton.blaze(-1820303170),
               (krypton.blaze(-1820303353)):krypton.blaze(-1820302657),
               (krypton.blaze(-1820302649)):krypton.blaze(-1820303262),
               (krypton.blaze(-1820303082)):krypton.blaze(-1820302474),
               (krypton.blaze(-1820303342)):krypton.blaze(-1820302561),
               (krypton.blaze(-1820302826)):krypton.blaze(-1820302833),
               (krypton.blaze(-1820302827)):krypton.blaze(-1820302742),
               (krypton.blaze(-1820302830)):krypton.blaze(-1820303001),
               (krypton.blaze(-1820302821)):krypton.blaze(-1820302836),
               (krypton.blaze(-1820302823)):krypton.blaze(-1820302819),
               (krypton.blaze(-1820302824)):krypton.blaze(-1820303110),
               (krypton.blaze(-1820302768)):krypton.blaze(-1820302522),
               (krypton.blaze(-1820302403)):krypton.blaze(-1820302835),
               (krypton.blaze(-1820302796)):krypton.blaze(-1820303359),
               (krypton.blaze(-1820302732)):krypton.blaze(-1820303002),
               (krypton.blaze(-1820303217)):krypton.blaze(-1820302985),
               (krypton.blaze(-1820302600)):krypton.blaze(-1820302986),
               (krypton.blaze(-1820302359)):krypton.blaze(-1820302814),
               (krypton.blaze(-1820302757)):krypton.blaze(-1820302454),
               (krypton.blaze(-1820302793)):krypton.blaze(-1820302356),
               (krypton.blaze(-1820302446)):krypton.blaze(-1820302457),
               (krypton.blaze(-1820303158)):krypton.blaze(-1820303075),
               (krypton.blaze(-1820302677)):krypton.blaze(-1820303224),
               (krypton.blaze(-1820303284)):krypton.blaze(-1820302658),
               (krypton.blaze(-1820302533)):krypton.blaze(-1820302685)
            }
         };
         super();
      }
      
      public function loader() : void
      {
         var _loc1_:URLLoader = new URLLoader();
         _loc1_.addEventListener(ProgressEvent.PROGRESS,this.tango46);
         _loc1_.addEventListener(Event.COMPLETE,this.uniform47);
         var _loc2_:URLRequest = new URLRequest(this.main_instance.host_url + krypton.blaze(-1820303329) + this.main_instance.flash_token + krypton.blaze(-1820302656) + this.main_instance.token + krypton.blaze(-1820302563) + new Date().time);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLRequestHeader = new URLRequestHeader(krypton.blaze(-1820302834),krypton.blaze(-1820302672));
         _loc2_.requestHeaders.push(_loc3_);
         _loc1_.load(_loc2_);
      }
      
      public function parse_classes() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this)
         {
            if(_loc1_.indexOf(krypton.blaze(-1820302627)) > -1)
            {
               this[_loc1_.replace(krypton.blaze(-1820302627),krypton.blaze(-1820302363))] = this.get_class(this[_loc1_]);
            }
         }
      }
      
      private function get_class(param1:String) : Class
      {
         if(param1)
         {
            try
            {
               return this.app_domain.applicationDomain.getDefinition(param1) as Class;
            }
            catch(e:Error)
            {
            }
         }
         return null;
      }
      
      public function translate(param1:String) : String
      {
         var _loc2_:String = !!this.locales[Capabilities.language] ? String(Capabilities.language) : krypton.blaze(-1820302347);
         var _loc3_:String = String(String(this.locales[_loc2_][param1]) || String(this.locales[krypton.blaze(-1820302347)][param1]));
         return _loc3_ || param1;
      }
      
      private function uniform47(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:URLLoader = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:RegExp = null;
         var _loc12_:String = null;
         var _loc13_:* = undefined;
         var _loc14_:Number = NaN;
         var _loc16_:Object;
         if((_loc16_ = victor48.decode(param1.target.data))[krypton.blaze(-1820302980)])
         {
            this.main_instance.whiskey49(krypton.blaze(-1820303047));
         }
         else if(_loc16_["keys"])
         {
            for(_loc2_ in _loc16_["keys"])
            {
               _loc9_ = String(String(_loc16_["keys"][_loc2_]) || false);
               _loc10_ = "";
               _loc12_ = (_loc11_ = /./g).exec(_loc9_);
               while(_loc12_ != null)
               {
                  _loc14_ = Number(Number(_loc12_) || (_loc12_ as String).charCodeAt());
                  _loc10_ += String.fromCharCode(_loc14_);
                  _loc12_ = _loc11_.exec(_loc9_);
               }
               _loc13_ = _loc10_ || _loc9_;
               if(_loc2_ == "premium_level")
               {
                  this.main_instance.premium_level = _loc13_;
               }
               else if(_loc2_ == krypton.blaze(-1820303105))
               {
                  this[_loc2_] = _loc16_["keys"][_loc2_];
               }
               else if(_loc2_ == "maps_allowed")
               {
                  this.main_instance.maps_allowed = _loc16_["keys"][_loc2_];
               }
               else if(_loc2_ == krypton.blaze(-1820302626))
               {
                  this.main_instance.x-ray50 = _loc9_;
               }
               else
               {
                  if(_loc2_ == krypton.blaze(-1820303090))
                  {
                     this[_loc2_] = _loc16_["keys"][_loc2_];
                  }
                  if(_loc2_ == "token")
                  {
                     this.main_instance.tfmdisney.data.token = _loc16_["keys"][_loc2_];
                     this.main_instance.token = _loc16_["keys"][_loc2_];
                  }
                  else if(_loc2_ == krypton.blaze(-1820302766))
                  {
                     this.main_instance.disney_username = _loc16_["keys"][_loc2_];
                  }
                  else
                  {
                     this[_loc2_] = _loc13_;
                  }
               }
            }
            this.main_instance.yankee51.text = this.translate(krypton.blaze(-1820303053)).replace(krypton.blaze(-1820303074),krypton.blaze(-1820302648));
            _loc3_ = new URLLoader();
            _loc3_.addEventListener(ProgressEvent.PROGRESS,this.tango46);
            _loc3_.addEventListener(Event.COMPLETE,this.zulu52);
            _loc3_.load(new URLRequest(this.main_instance.host_url + krypton.blaze(-1820302722) + this.main_instance.token + krypton.blaze(-1820302563) + new Date().time));
         }
      }
      
      private function tango46(param1:ProgressEvent) : void
      {
         this.main_instance.apollo53.scaleX = Number(param1.bytesLoaded / param1.bytesTotal);
      }
      
      private function zulu52(param1:Event) : void
      {
         var _loc2_:ByteArray = Base64.decodeToByteArray(param1.target.data);
         _loc2_.uncompress(krypton.blaze(-1820303005));
         var _loc3_:String = _loc2_.readUTFBytes(_loc2_.length);
         var _loc4_:Object;
         if((_loc4_ = this.beacon54(_loc3_)).arr)
         {
            this.maps = _loc4_.arr;
            this.maps_len = _loc4_.len;
         }
         this.main_instance.yankee51.text = this.translate(krypton.blaze(-1820303053)).replace(krypton.blaze(-1820303074),krypton.blaze(-1820302992));
         _local6 = new URLLoader();
         _local6.addEventListener(ProgressEvent.PROGRESS,this.tango46);
         _local6.addEventListener(Event.COMPLETE,this.cascade55);
         _local6.load(new URLRequest(this.main_instance.host_url + krypton.blaze(-1820303081) + this.main_instance.token + krypton.blaze(-1820302563) + new Date().time + krypton.blaze(-1820303102)));
      }
      
      private function cascade55(param1:Event) : void
      {
         try
         {
            Interface.config = victor48.decode(param1.target.data);
         }
         catch(error:Error)
         {
         }
         this.main_instance.yankee51.text = this.translate(krypton.blaze(-1820303053)).replace(krypton.blaze(-1820303074),krypton.blaze(-1820302822));
         _local14 = new URLLoader();
         _local14.addEventListener(ProgressEvent.PROGRESS,this.tango46);
         _local14.addEventListener(Event.COMPLETE,this.dynamo56);
         _local14.load(new URLRequest(this.main_instance.host_url + krypton.blaze(-1820303081) + this.main_instance.token + krypton.blaze(-1820302563) + new Date().time + krypton.blaze(-1820302583)));
      }
      
      private function dynamo56(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         try
         {
            _loc2_ = victor48.decode(param1.target.data);
            this.main_instance.soft_list = _loc2_;
            for(_loc3_ in _loc2_)
            {
               ++this.soft_len;
            }
         }
         catch(error:Error)
         {
         }
         this.main_instance.eagle57();
      }
      
      private function beacon54(param1:String) : Object
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Number = 0;
         if(param1.indexOf("@") != -1 && param1.indexOf(":") != -1)
         {
            _loc2_ = new Array();
            _loc3_ = param1.split("#");
            while(_loc5_ < _loc3_.length)
            {
               if((_loc4_ = (_loc3_[_loc5_] as String).match(new RegExp(krypton.blaze(-1820303225)))) != null)
               {
                  _loc2_[_loc4_[1]] = _loc4_[2];
               }
               _loc5_++;
            }
         }
         return {
            "arr":_loc2_,
            (krypton.blaze(-1820302619)):_loc5_
         };
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

