package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PresentOpenedMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1487:String;
      
      private var var_2026:int;
      
      private var var_1823:String;
      
      public function PresentOpenedMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemType() : String
      {
         return this.var_1487;
      }
      
      public function get classId() : int
      {
         return this.var_2026;
      }
      
      public function get productCode() : String
      {
         return this.var_1823;
      }
      
      public function flush() : Boolean
      {
         this.var_1487 = "";
         this.var_2026 = 0;
         this.var_1823 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1487 = param1.readString();
         this.var_2026 = param1.readInteger();
         this.var_1823 = param1.readString();
         return true;
      }
   }
}
