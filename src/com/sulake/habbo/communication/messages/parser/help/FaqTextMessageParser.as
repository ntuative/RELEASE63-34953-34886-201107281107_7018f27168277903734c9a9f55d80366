package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_2135:int;
      
      private var var_2136:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_2135;
      }
      
      public function get answerText() : String
      {
         return this.var_2136;
      }
      
      public function flush() : Boolean
      {
         this.var_2135 = -1;
         this.var_2136 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2135 = param1.readInteger();
         this.var_2136 = param1.readString();
         return true;
      }
   }
}
