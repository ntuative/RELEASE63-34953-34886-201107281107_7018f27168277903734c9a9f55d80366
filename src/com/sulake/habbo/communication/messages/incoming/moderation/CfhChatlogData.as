package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1845:int;
      
      private var var_2443:int;
      
      private var var_1664:int;
      
      private var var_2442:int;
      
      private var var_130:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1845 = param1.readInteger();
         this.var_2443 = param1.readInteger();
         this.var_1664 = param1.readInteger();
         this.var_2442 = param1.readInteger();
         this.var_130 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1845);
      }
      
      public function get callId() : int
      {
         return this.var_1845;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2443;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1664;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2442;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_130;
      }
   }
}
