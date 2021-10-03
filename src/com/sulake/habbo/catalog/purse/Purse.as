package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2176:int = 0;
      
      private var var_1691:Dictionary;
      
      private var var_2191:int = 0;
      
      private var var_2190:int = 0;
      
      private var var_2333:Boolean = false;
      
      private var var_2624:int = 0;
      
      private var var_2631:int = 0;
      
      private var var_2334:Boolean = false;
      
      public function Purse()
      {
         this.var_1691 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2176;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2176 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2191;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2191 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2190;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2191 > 0 || this.var_2190 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2333;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2334;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2334 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2333 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2624;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2624 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2631;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2631 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1691;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1691 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1691[param1];
      }
   }
}
