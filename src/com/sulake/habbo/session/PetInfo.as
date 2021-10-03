package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1996:int;
      
      private var var_1361:int;
      
      private var var_2321:int;
      
      private var var_2323:int;
      
      private var var_2320:int;
      
      private var _energy:int;
      
      private var var_2326:int;
      
      private var _nutrition:int;
      
      private var var_2324:int;
      
      private var var_2328:int;
      
      private var _ownerName:String;
      
      private var var_2356:int;
      
      private var var_604:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1996;
      }
      
      public function get level() : int
      {
         return this.var_1361;
      }
      
      public function get levelMax() : int
      {
         return this.var_2321;
      }
      
      public function get experience() : int
      {
         return this.var_2323;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2320;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2326;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2324;
      }
      
      public function get ownerId() : int
      {
         return this.var_2328;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2356;
      }
      
      public function get age() : int
      {
         return this.var_604;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1996 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1361 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2321 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2323 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2320 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2326 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2324 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2328 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2356 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_604 = param1;
      }
   }
}
