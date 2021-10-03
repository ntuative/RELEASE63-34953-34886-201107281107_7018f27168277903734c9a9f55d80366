package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_968:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_2004:String = "inventory_effects";
      
      public static const const_1194:String = "inventory_badges";
      
      public static const const_1905:String = "inventory_clothes";
      
      public static const const_1918:String = "inventory_furniture";
       
      
      private var var_2741:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_968);
         this.var_2741 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2741;
      }
   }
}
