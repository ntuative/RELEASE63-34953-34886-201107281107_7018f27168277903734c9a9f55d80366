package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2154:int = 0;
      
      public static const const_1883:int = 1;
      
      public static const const_1872:int = 2;
      
      public static const const_2281:int = 3;
      
      public static const const_2173:int = 4;
      
      public static const const_2259:int = 5;
      
      public static const const_1904:int = 10;
      
      public static const const_2140:int = 11;
      
      public static const const_2176:int = 12;
      
      public static const const_2275:int = 13;
      
      public static const const_2171:int = 16;
      
      public static const const_2343:int = 17;
      
      public static const const_2297:int = 18;
      
      public static const const_2319:int = 19;
      
      public static const const_2260:int = 20;
      
      public static const const_2278:int = 22;
      
      public static const const_2191:int = 23;
      
      public static const const_2217:int = 24;
      
      public static const const_2318:int = 25;
      
      public static const const_2158:int = 26;
      
      public static const const_2337:int = 27;
      
      public static const const_2209:int = 28;
      
      public static const const_2274:int = 29;
      
      public static const const_2245:int = 100;
      
      public static const const_2324:int = 101;
      
      public static const const_2161:int = 102;
      
      public static const const_2351:int = 103;
      
      public static const const_2200:int = 104;
      
      public static const const_2226:int = 105;
      
      public static const const_2265:int = 106;
      
      public static const const_2180:int = 107;
      
      public static const const_2294:int = 108;
      
      public static const const_2181:int = 109;
      
      public static const const_2248:int = 110;
      
      public static const const_2295:int = 111;
      
      public static const const_2220:int = 112;
      
      public static const const_2284:int = 113;
      
      public static const const_2240:int = 114;
      
      public static const const_2178:int = 115;
      
      public static const const_2141:int = 116;
      
      public static const const_2310:int = 117;
      
      public static const const_2306:int = 118;
      
      public static const const_2213:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1883:
            case const_1904:
               return "banned";
            case const_1872:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
