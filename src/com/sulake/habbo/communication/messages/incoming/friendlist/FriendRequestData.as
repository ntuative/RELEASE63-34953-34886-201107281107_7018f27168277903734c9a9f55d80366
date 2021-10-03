package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1261:int;
      
      private var var_2417:String;
      
      private var var_2418:int;
      
      private var var_2434:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1261 = param1.readInteger();
         this.var_2417 = param1.readString();
         this.var_2434 = param1.readString();
         this.var_2418 = this.var_1261;
      }
      
      public function get requestId() : int
      {
         return this.var_1261;
      }
      
      public function get requesterName() : String
      {
         return this.var_2417;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2418;
      }
      
      public function get figureString() : String
      {
         return this.var_2434;
      }
   }
}
