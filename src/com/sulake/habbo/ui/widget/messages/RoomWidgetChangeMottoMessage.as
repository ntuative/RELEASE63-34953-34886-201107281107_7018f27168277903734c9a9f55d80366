package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_964:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1873:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_964);
         this.var_1873 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1873;
      }
   }
}
