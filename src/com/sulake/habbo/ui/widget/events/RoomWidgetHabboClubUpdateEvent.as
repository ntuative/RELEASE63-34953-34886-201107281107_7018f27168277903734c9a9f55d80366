package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_275:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2537:int = 0;
      
      private var var_2539:int = 0;
      
      private var var_2538:int = 0;
      
      private var var_2540:Boolean = false;
      
      private var var_1746:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_275,param6,param7);
         this.var_2537 = param1;
         this.var_2539 = param2;
         this.var_2538 = param3;
         this.var_2540 = param4;
         this.var_1746 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2537;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2539;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2538;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2540;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1746;
      }
   }
}
