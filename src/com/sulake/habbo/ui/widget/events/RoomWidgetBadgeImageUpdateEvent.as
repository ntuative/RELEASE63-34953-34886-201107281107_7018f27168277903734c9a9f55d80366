package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_871:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2349:String;
      
      private var var_2911:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_871,param3,param4);
         this.var_2349 = param1;
         this.var_2911 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2349;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2911;
      }
   }
}
