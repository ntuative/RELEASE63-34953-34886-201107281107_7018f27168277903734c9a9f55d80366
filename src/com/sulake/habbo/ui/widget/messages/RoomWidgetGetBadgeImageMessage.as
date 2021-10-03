package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_788:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_1963:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_788);
         this.var_1963 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_1963;
      }
   }
}
