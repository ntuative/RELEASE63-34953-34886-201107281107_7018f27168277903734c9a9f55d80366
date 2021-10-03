package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_894:int = 1;
      
      public static const const_890:int = 2;
      
      public static const const_797:int = 3;
      
      public static const const_1296:int = 4;
      
      public static const const_951:int = 5;
      
      public static const const_1312:int = 6;
       
      
      private var _type:int;
      
      private var var_1316:int;
      
      private var var_2316:String;
      
      private var var_2763:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1316 = param2;
         this.var_2316 = param3;
         this.var_2763 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2316;
      }
      
      public function get time() : String
      {
         return this.var_2763;
      }
      
      public function get senderId() : int
      {
         return this.var_1316;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
