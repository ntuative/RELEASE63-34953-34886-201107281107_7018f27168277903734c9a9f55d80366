package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2516:int;
      
      private var var_2929:int;
      
      private var var_2927:int;
      
      private var _dayOffsets:Array;
      
      private var var_2193:Array;
      
      private var var_2194:Array;
      
      private var var_2928:int;
      
      private var var_2926:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2516;
      }
      
      public function get offerCount() : int
      {
         return this.var_2929;
      }
      
      public function get historyLength() : int
      {
         return this.var_2927;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2193;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2194;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2928;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2926;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2516 = param1.readInteger();
         this.var_2929 = param1.readInteger();
         this.var_2927 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2193 = [];
         this.var_2194 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2193.push(param1.readInteger());
            this.var_2194.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2926 = param1.readInteger();
         this.var_2928 = param1.readInteger();
         return true;
      }
   }
}
