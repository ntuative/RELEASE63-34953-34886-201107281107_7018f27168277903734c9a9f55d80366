package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_872:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_682:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_872);
         this.var_682 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_682;
      }
   }
}
