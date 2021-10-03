package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1922:String = "";
      
      private var var_2200:String = "";
      
      private var var_2758:String = "";
      
      private var var_2821:Number = 0;
      
      private var var_2825:Number = 0;
      
      private var var_2615:Number = 0;
      
      private var var_2612:Number = 0;
      
      private var var_2826:Boolean = false;
      
      private var var_2824:Boolean = false;
      
      private var var_2822:Boolean = false;
      
      private var var_2823:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1922 = param2;
         this.var_2200 = param3;
         this.var_2758 = param4;
         this.var_2821 = param5;
         this.var_2825 = param6;
         this.var_2615 = param7;
         this.var_2612 = param8;
         this.var_2826 = param9;
         this.var_2824 = param10;
         this.var_2822 = param11;
         this.var_2823 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1922;
      }
      
      public function get canvasId() : String
      {
         return this.var_2200;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2758;
      }
      
      public function get screenX() : Number
      {
         return this.var_2821;
      }
      
      public function get screenY() : Number
      {
         return this.var_2825;
      }
      
      public function get localX() : Number
      {
         return this.var_2615;
      }
      
      public function get localY() : Number
      {
         return this.var_2612;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2826;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2824;
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
