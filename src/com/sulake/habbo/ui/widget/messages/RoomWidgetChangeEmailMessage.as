package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_1005:String = "rwcem_change_email";
       
      
      private var var_2586:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_1005);
         this.var_2586 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2586;
      }
   }
}
