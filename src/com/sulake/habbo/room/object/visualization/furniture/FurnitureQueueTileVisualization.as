package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1447:int = 3;
      
      private static const const_1449:int = 2;
      
      private static const const_1450:int = 1;
      
      private static const const_1448:int = 15;
       
      
      private var var_355:Array;
      
      private var var_1177:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_355 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1449)
         {
            this.var_355 = new Array();
            this.var_355.push(const_1450);
            this.var_1177 = const_1448;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1177 > 0)
         {
            --this.var_1177;
         }
         if(this.var_1177 == 0)
         {
            if(this.var_355.length > 0)
            {
               super.setAnimation(this.var_355.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
