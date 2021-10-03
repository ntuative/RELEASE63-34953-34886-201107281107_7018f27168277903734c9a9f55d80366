package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      private var var_1746:int;
      
      private var var_1749:int;
      
      public function UserRightsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1746 = param1.readInteger();
         this.var_1749 = param1.readInteger();
         return true;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1746;
      }
      
      public function get securityLevel() : int
      {
         return this.var_1749;
      }
   }
}
