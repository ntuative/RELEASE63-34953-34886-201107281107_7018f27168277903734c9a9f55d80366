package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_958:Array;
      
      private var var_2419:String;
      
      private var var_2421:String;
      
      private var var_2420:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_958 = param1;
         this.var_2419 = param2;
         this.var_2421 = param3;
         this.var_2420 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_958;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2419;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2421;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2420;
      }
   }
}
