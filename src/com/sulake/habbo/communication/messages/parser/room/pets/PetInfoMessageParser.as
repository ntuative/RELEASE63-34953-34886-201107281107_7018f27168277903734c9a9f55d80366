package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1996:int;
      
      private var _name:String;
      
      private var var_1361:int;
      
      private var var_2996:int;
      
      private var var_2323:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_699:String;
      
      private var var_2998:int;
      
      private var var_2997:int;
      
      private var var_2995:int;
      
      private var var_2356:int;
      
      private var var_2328:int;
      
      private var _ownerName:String;
      
      private var var_604:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1996;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1361;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2996;
      }
      
      public function get experience() : int
      {
         return this.var_2323;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_699;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2998;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2997;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2995;
      }
      
      public function get respect() : int
      {
         return this.var_2356;
      }
      
      public function get ownerId() : int
      {
         return this.var_2328;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_604;
      }
      
      public function flush() : Boolean
      {
         this.var_1996 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1996 = param1.readInteger();
         this._name = param1.readString();
         this.var_1361 = param1.readInteger();
         this.var_2996 = param1.readInteger();
         this.var_2323 = param1.readInteger();
         this.var_2998 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2997 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2995 = param1.readInteger();
         this.var_699 = param1.readString();
         this.var_2356 = param1.readInteger();
         this.var_2328 = param1.readInteger();
         this.var_604 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
