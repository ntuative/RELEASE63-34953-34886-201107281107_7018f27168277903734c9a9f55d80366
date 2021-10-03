package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2313:int;
      
      private var var_2353:int;
      
      private var var_1235:int;
      
      private var var_1234:int;
      
      private var var_1867:int;
      
      private var var_2354:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2313 = param1.readInteger();
         this.var_2353 = param1.readInteger();
         this.var_1235 = param1.readInteger();
         this.var_1234 = param1.readInteger();
         this.var_1867 = param1.readInteger();
         this.var_2354 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2313;
      }
      
      public function get charges() : int
      {
         return this.var_2353;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1235;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1234;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2354;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1867;
      }
   }
}
