package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2516:int;
      
      private var var_2929:int;
      
      private var var_2927:int;
      
      private var _dayOffsets:Array;
      
      private var var_2193:Array;
      
      private var var_2194:Array;
      
      private var var_2928:int;
      
      private var var_2926:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2516 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2929 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2927 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2193 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2194 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2928 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2926 = param1;
      }
   }
}
