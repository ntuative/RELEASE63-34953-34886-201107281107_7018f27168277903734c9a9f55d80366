package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferExtendData extends ClubOfferData
   {
       
      
      private var var_1758:int;
      
      private var var_2312:int;
      
      public function ClubOfferExtendData(param1:IMessageDataWrapper)
      {
         super(param1);
         this.var_1758 = param1.readInteger();
         this.var_2312 = param1.readInteger();
      }
      
      public function get method_9() : int
      {
         return this.var_1758;
      }
      
      public function get discountAmount() : int
      {
         return this.var_1758 - this.price;
      }
      
      public function get subscriptionDaysLeft() : int
      {
         return this.var_2312;
      }
   }
}
