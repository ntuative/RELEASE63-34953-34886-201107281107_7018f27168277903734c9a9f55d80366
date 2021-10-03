package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2439:String;
      
      private var var_1841:String;
      
      private var var_2440:String;
      
      private var var_1839:Boolean;
      
      private var var_1840:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2439 = String(param1["set-type"]);
         this.var_1841 = String(param1["flipped-set-type"]);
         this.var_2440 = String(param1["remove-set-type"]);
         this.var_1839 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1840 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1840;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1840 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2439;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1841;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2440;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1839;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1839 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1841 = param1;
      }
   }
}
