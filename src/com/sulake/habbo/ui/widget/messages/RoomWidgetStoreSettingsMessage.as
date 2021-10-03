package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_2009:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_1033:String = "RWSSM_STORE_SOUND";
      
      public static const const_850:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_992:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_992;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_992 = param1;
      }
   }
}
