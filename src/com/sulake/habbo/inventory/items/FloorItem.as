package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2276:String;
      
      protected var var_2192:Number;
      
      protected var var_3062:Boolean;
      
      protected var var_3064:Boolean;
      
      protected var var_3000:Boolean;
      
      protected var var_2850:Boolean;
      
      protected var var_3063:int;
      
      protected var var_3005:int;
      
      protected var var_2999:int;
      
      protected var var_3003:int;
      
      protected var var_2010:String;
      
      protected var var_1528:int;
      
      protected var var_1062:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_3000 = param5;
         this.var_3064 = param6;
         this.var_3062 = param7;
         this.var_2850 = param8;
         this.var_2276 = param9;
         this.var_2192 = param10;
         this.var_3063 = param11;
         this.var_3005 = param12;
         this.var_2999 = param13;
         this.var_3003 = param14;
         this.var_2010 = param15;
         this.var_1528 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2276;
      }
      
      public function get extra() : Number
      {
         return this.var_2192;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3062;
      }
      
      public function get method_4() : Boolean
      {
         return this.var_3064;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_3000;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2850;
      }
      
      public function get expires() : int
      {
         return this.var_3063;
      }
      
      public function get creationDay() : int
      {
         return this.var_3005;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2999;
      }
      
      public function get creationYear() : int
      {
         return this.var_3003;
      }
      
      public function get slotId() : String
      {
         return this.var_2010;
      }
      
      public function get songId() : int
      {
         return this.var_1528;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1062 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1062;
      }
   }
}
