package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_67:String = "RWDSUE_DIMMER_STATE";
       
      
      private var _state:int;
      
      private var var_2655:int;
      
      private var var_1377:int;
      
      private var _color:uint;
      
      private var var_1378:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_67,param6,param7);
         this._state = param1;
         this.var_2655 = param2;
         this.var_1377 = param3;
         this._color = param4;
         this.var_1378 = param5;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get presetId() : int
      {
         return this.var_2655;
      }
      
      public function get effectId() : int
      {
         return this.var_1377;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : uint
      {
         return this.var_1378;
      }
   }
}
