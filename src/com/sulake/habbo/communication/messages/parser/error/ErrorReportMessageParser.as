package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1775:int;
      
      private var var_1810:int;
      
      private var var_1809:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1810 = param1.readInteger();
         this.var_1775 = param1.readInteger();
         this.var_1809 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1775 = 0;
         this.var_1810 = 0;
         this.var_1809 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1775;
      }
      
      public function get messageId() : int
      {
         return this.var_1810;
      }
      
      public function get timestamp() : String
      {
         return this.var_1809;
      }
   }
}
