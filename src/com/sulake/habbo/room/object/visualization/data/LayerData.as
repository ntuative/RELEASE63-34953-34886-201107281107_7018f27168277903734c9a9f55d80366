package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_748:String = "";
      
      public static const const_402:int = 0;
      
      public static const const_623:int = 255;
      
      public static const const_913:Boolean = false;
      
      public static const const_553:int = 0;
      
      public static const const_662:int = 0;
      
      public static const const_422:int = 0;
      
      public static const const_1354:int = 1;
      
      public static const const_1335:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2510:String = "";
      
      private var var_1734:int = 0;
      
      private var var_2351:int = 255;
      
      private var var_2778:Boolean = false;
      
      private var var_2780:int = 0;
      
      private var var_2777:int = 0;
      
      private var var_2779:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2510 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2510;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1734 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1734;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2351 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2351;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2778 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2778;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2780 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2780;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2777 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2777;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2779 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2779;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
