package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2684:int;
      
      private var var_2007:Boolean;
      
      private var var_2006:Boolean;
      
      private var var_49:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_49 = param4;
         this.var_2684 = param1;
         this.var_2007 = param2;
         this.var_2006 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2684;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_2007;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_2006;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_2007 || this.var_2006;
      }
      
      public function get border() : Boolean
      {
         return this.var_49;
      }
   }
}
