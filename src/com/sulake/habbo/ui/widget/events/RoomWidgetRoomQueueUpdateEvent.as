package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_436:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_545:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1323:int;
      
      private var var_2830:Boolean;
      
      private var var_599:Boolean;
      
      private var var_2015:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1323 = param2;
         this.var_2830 = param3;
         this.var_599 = param4;
         this.var_2015 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1323;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2830;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_599;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_2015;
      }
   }
}
