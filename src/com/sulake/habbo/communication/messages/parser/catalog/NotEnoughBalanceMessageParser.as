package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1762:int = 0;
      
      private var var_1763:int = 0;
      
      private var var_1867:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1762;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1763;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1867;
      }
      
      public function flush() : Boolean
      {
         this.var_1762 = 0;
         this.var_1763 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1762 = param1.readInteger();
         this.var_1763 = param1.readInteger();
         this.var_1867 = param1.readInteger();
         return true;
      }
   }
}
