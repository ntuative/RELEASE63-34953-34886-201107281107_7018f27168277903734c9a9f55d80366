package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1231:int;
      
      private var var_2500:Boolean;
      
      private var var_2498:Boolean;
      
      private var var_2499:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1231 = param1.readInteger();
         this.var_2500 = param1.readBoolean();
         this.var_2499 = param1.readInteger();
         this.var_2498 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1231;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2500;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2498;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2499;
      }
   }
}
