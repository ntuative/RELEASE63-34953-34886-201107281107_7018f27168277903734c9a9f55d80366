package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1231:int;
      
      private var var_1866:String;
      
      private var var_1235:int;
      
      private var var_1234:int;
      
      private var var_1867:int;
      
      private var var_1746:int;
      
      private var var_1299:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1231 = param1.readInteger();
         this.var_1866 = param1.readString();
         this.var_1235 = param1.readInteger();
         this.var_1234 = param1.readInteger();
         this.var_1867 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1299 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1299.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1746 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1231;
      }
      
      public function get localizationId() : String
      {
         return this.var_1866;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1235;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1234;
      }
      
      public function get products() : Array
      {
         return this.var_1299;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1867;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1746;
      }
   }
}
