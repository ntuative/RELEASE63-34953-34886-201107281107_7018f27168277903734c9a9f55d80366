package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_72:String = "s";
      
      public static const const_191:String = "e";
       
      
      private var var_1551:String;
      
      private var var_2572:int;
      
      private var var_1039:String;
      
      private var var_1552:int;
      
      private var var_1940:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1551 = param1.readString();
         this.var_2572 = param1.readInteger();
         this.var_1039 = param1.readString();
         this.var_1552 = param1.readInteger();
         this.var_1940 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1551;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2572;
      }
      
      public function get extraParam() : String
      {
         return this.var_1039;
      }
      
      public function get productCount() : int
      {
         return this.var_1552;
      }
      
      public function get expiration() : int
      {
         return this.var_1940;
      }
   }
}
