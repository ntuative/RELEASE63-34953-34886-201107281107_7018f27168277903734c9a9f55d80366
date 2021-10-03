package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1153:int = 20;
      
      private static const const_725:int = 10;
      
      private static const const_1714:int = 31;
      
      private static const const_1447:int = 32;
      
      private static const const_724:int = 30;
       
      
      private var var_355:Array;
      
      private var var_864:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_355 = new Array();
         super();
         super.setAnimation(const_724);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_864)
            {
               this.var_864 = true;
               this.var_355 = new Array();
               this.var_355.push(const_1714);
               this.var_355.push(const_1447);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_725)
         {
            if(this.var_864)
            {
               this.var_864 = false;
               this.var_355 = new Array();
               if(direction == 2)
               {
                  this.var_355.push(const_1153 + 5 - param1);
                  this.var_355.push(const_725 + 5 - param1);
               }
               else
               {
                  this.var_355.push(const_1153 + param1);
                  this.var_355.push(const_725 + param1);
               }
               this.var_355.push(const_724);
               return;
            }
            super.setAnimation(const_724);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_355.length > 0)
            {
               super.setAnimation(this.var_355.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
