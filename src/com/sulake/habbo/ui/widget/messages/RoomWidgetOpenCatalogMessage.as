package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_779:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1340:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2352:String = "RWOCM_PIXELS";
      
      public static const const_2344:String = "RWOCM_CREDITS";
      
      public static const const_2228:String = "RWOCM_SHELLS";
       
      
      private var var_2547:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_779);
         this.var_2547 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2547;
      }
   }
}
