package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_3057:int;
      
      private var var_3056:int;
      
      private var var_3054:int;
      
      private var var_3055:String;
      
      private var var_1931:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_3057 = param1.readInteger();
         this.var_3056 = param1.readInteger();
         this.var_3054 = param1.readInteger();
         this.var_3055 = param1.readString();
         this.var_1931 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_3057;
      }
      
      public function get minute() : int
      {
         return this.var_3056;
      }
      
      public function get chatterId() : int
      {
         return this.var_3054;
      }
      
      public function get chatterName() : String
      {
         return this.var_3055;
      }
      
      public function get msg() : String
      {
         return this.var_1931;
      }
   }
}
