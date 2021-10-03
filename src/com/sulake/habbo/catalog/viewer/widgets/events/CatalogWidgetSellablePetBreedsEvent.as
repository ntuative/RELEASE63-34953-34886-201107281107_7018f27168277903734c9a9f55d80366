package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetSellablePetBreedsEvent extends Event
   {
       
      
      private var var_1823:String;
      
      private var var_1533:Array;
      
      public function CatalogWidgetSellablePetBreedsEvent(param1:String, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         super(WidgetEvent.CWE_SELLABLE_PET_BREEDS,param3,param4);
         this.var_1823 = param1;
         this.var_1533 = param2;
      }
      
      public function get productCode() : String
      {
         return this.var_1823;
      }
      
      public function get sellableBreeds() : Array
      {
         if(this.var_1533 != null)
         {
            return this.var_1533.slice();
         }
         return [];
      }
   }
}
