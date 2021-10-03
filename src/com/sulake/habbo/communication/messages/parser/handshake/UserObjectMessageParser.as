package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_699:String;
      
      private var var_999:String;
      
      private var var_2365:String;
      
      private var var_1874:String;
      
      private var var_2368:int;
      
      private var var_2367:int;
      
      private var var_1167:int;
      
      private var _petRespectLeft:int;
      
      private var var_2366:Boolean;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_699 = param1.readString();
         this.var_999 = param1.readString();
         this.var_2365 = param1.readString();
         this.var_1874 = param1.readString();
         this.var_2368 = param1.readInteger();
         this.var_2367 = param1.readInteger();
         this.var_1167 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2366 = param1.readBoolean();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_699;
      }
      
      public function get sex() : String
      {
         return this.var_999;
      }
      
      public function get customData() : String
      {
         return this.var_2365;
      }
      
      public function get realName() : String
      {
         return this.var_1874;
      }
      
      public function get directMail() : int
      {
         return this.var_2368;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2367;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1167;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get streamPublishingAllowed() : Boolean
      {
         return this.var_2366;
      }
   }
}
