package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1996:int;
      
      private var var_2447:String;
      
      private var var_1361:int;
      
      private var var_1379:int;
      
      private var var_1927:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1996 = param1.readInteger();
         this.var_2447 = param1.readString();
         this.var_1361 = param1.readInteger();
         this.var_1379 = param1.readInteger();
         this.var_1927 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1996;
      }
      
      public function get petName() : String
      {
         return this.var_2447;
      }
      
      public function get level() : int
      {
         return this.var_1361;
      }
      
      public function get petType() : int
      {
         return this.var_1379;
      }
      
      public function get breed() : int
      {
         return this.var_1927;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
