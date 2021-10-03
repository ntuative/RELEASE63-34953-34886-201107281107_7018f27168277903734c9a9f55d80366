package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_171:String = "ROE_MOUSE_CLICK";
      
      public static const const_194:String = "ROE_MOUSE_ENTER";
      
      public static const const_568:String = "ROE_MOUSE_MOVE";
      
      public static const const_189:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2314:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_639:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1922:String = "";
      
      private var var_2824:Boolean;
      
      private var var_2826:Boolean;
      
      private var var_2822:Boolean;
      
      private var var_2823:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1922 = param2;
         this.var_2824 = param5;
         this.var_2826 = param6;
         this.var_2822 = param7;
         this.var_2823 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1922;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2824;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2826;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2822;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2823;
      }
   }
}
