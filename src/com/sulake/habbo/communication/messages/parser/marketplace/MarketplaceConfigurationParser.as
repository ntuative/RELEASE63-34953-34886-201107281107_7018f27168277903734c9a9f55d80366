package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1579:Boolean;
      
      private var var_2874:int;
      
      private var var_2196:int;
      
      private var var_2197:int;
      
      private var var_2871:int;
      
      private var var_2873:int;
      
      private var var_2872:int;
      
      private var var_2458:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1579;
      }
      
      public function get commission() : int
      {
         return this.var_2874;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2196;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2197;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2873;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2871;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2872;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2458;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1579 = param1.readBoolean();
         this.var_2874 = param1.readInteger();
         this.var_2196 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this.var_2873 = param1.readInteger();
         this.var_2871 = param1.readInteger();
         this.var_2872 = param1.readInteger();
         this.var_2458 = param1.readInteger();
         return true;
      }
   }
}
