package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetConversionPointMessage extends RoomWidgetMessage
   {
      
      public static const const_914:String = "RWCPM_CONVERSION_POINT";
       
      
      private var _category:String;
      
      private var var_2668:String;
      
      private var _action:String;
      
      private var var_2591:String;
      
      private var var_2590:int;
      
      public function RoomWidgetConversionPointMessage(param1:String, param2:String, param3:String, param4:String, param5:String = "", param6:int = 0)
      {
         super(param1);
         this._category = param2;
         this.var_2668 = param3;
         this._action = param4;
         this.var_2591 = !!param5 ? param5 : "";
         this.var_2590 = !!param6 ? int(param6) : 0;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get pointType() : String
      {
         return this.var_2668;
      }
      
      public function get action() : String
      {
         return this._action;
      }
      
      public function get extraString() : String
      {
         return this.var_2591;
      }
      
      public function get extraInt() : int
      {
         return this.var_2590;
      }
   }
}
