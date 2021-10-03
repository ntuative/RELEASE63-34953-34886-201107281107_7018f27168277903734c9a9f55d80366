package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_357:String = "";
      
      private var var_1056:String;
      
      private var var_1504:Boolean;
      
      private var var_2557:Boolean = true;
      
      private var var_2973:int;
      
      private var var_2974:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2973 = parseInt(param1.@pattern);
         this.var_1056 = String(param1.@gender);
         this.var_1504 = Boolean(parseInt(param1.@colorable));
         this.var_357 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2557 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_1056;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1504;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2557;
      }
      
      public function get patternId() : int
      {
         return this.var_2973;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2974;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2974 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_357;
      }
   }
}
