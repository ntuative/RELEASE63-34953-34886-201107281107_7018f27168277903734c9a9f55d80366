package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2685:int;
      
      private var var_1487:String;
      
      private var var_3004:int;
      
      private var var_3001:int;
      
      private var _category:int;
      
      private var var_2276:String;
      
      private var var_2192:int;
      
      private var var_3002:int;
      
      private var var_3005:int;
      
      private var var_2999:int;
      
      private var var_3003:int;
      
      private var var_3000:Boolean;
      
      private var var_3143:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2685 = param1;
         this.var_1487 = param2;
         this.var_3004 = param3;
         this.var_3001 = param4;
         this._category = param5;
         this.var_2276 = param6;
         this.var_2192 = param7;
         this.var_3002 = param8;
         this.var_3005 = param9;
         this.var_2999 = param10;
         this.var_3003 = param11;
         this.var_3000 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2685;
      }
      
      public function get itemType() : String
      {
         return this.var_1487;
      }
      
      public function get roomItemID() : int
      {
         return this.var_3004;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_3001;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2276;
      }
      
      public function get extra() : int
      {
         return this.var_2192;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_3002;
      }
      
      public function get creationDay() : int
      {
         return this.var_3005;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2999;
      }
      
      public function get creationYear() : int
      {
         return this.var_3003;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_3000;
      }
      
      public function get songID() : int
      {
         return this.var_2192;
      }
   }
}
