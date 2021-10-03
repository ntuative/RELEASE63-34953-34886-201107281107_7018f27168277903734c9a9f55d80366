package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1231:int;
      
      private var var_1823:String;
      
      private var var_1824:int;
      
      private var _upgrade:Boolean;
      
      private var var_2415:Boolean;
      
      private var var_2409:int;
      
      private var var_2412:int;
      
      private var var_2413:int;
      
      private var var_2414:int;
      
      private var var_2411:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1231 = param1.readInteger();
         this.var_1823 = param1.readString();
         this.var_1824 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2415 = param1.readBoolean();
         this.var_2409 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_2413 = param1.readInteger();
         this.var_2414 = param1.readInteger();
         this.var_2411 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1231;
      }
      
      public function get productCode() : String
      {
         return this.var_1823;
      }
      
      public function get price() : int
      {
         return this.var_1824;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2415;
      }
      
      public function get periods() : int
      {
         return this.var_2409;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2412;
      }
      
      public function get year() : int
      {
         return this.var_2413;
      }
      
      public function get month() : int
      {
         return this.var_2414;
      }
      
      public function get day() : int
      {
         return this.var_2411;
      }
   }
}
