package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1528:int;
      
      private var var_2074:Number;
      
      private var var_2799:Number;
      
      private var var_2800:int;
      
      private var var_2801:Number;
      
      private var var_2798:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1528 = param1;
         this.var_2074 = param2;
         this.var_2799 = param3;
         this.var_2801 = param4;
         this.var_2798 = param5;
         this.var_2800 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1528;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2074 < 0)
         {
            return 0;
         }
         return this.var_2074 + (getTimer() - this.var_2800) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2799;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2801;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2798;
      }
   }
}
