package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2314:Number = 0.0;
      
      private var var_2315:Number = 0.0;
      
      private var var_2670:Number = 0.0;
      
      private var var_2669:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2314 = param1;
         this.var_2315 = param2;
         this.var_2670 = param3;
         this.var_2669 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2314;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2315;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2670;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2669;
      }
   }
}
