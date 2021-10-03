package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2191:int = 0;
      
      private var var_2190:int = 0;
      
      private var var_2331:int = 0;
      
      private var var_2332:Boolean = false;
      
      private var var_2333:Boolean = false;
      
      private var var_2334:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2191 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2190 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2331 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2332 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2333 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2334 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2191;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2190;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2331;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2332;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2333;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2334;
      }
   }
}
