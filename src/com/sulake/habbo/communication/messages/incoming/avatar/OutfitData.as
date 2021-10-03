package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2010:int;
      
      private var var_2434:String;
      
      private var var_1056:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2010 = param1.readInteger();
         this.var_2434 = param1.readString();
         this.var_1056 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2010;
      }
      
      public function get figureString() : String
      {
         return this.var_2434;
      }
      
      public function get gender() : String
      {
         return this.var_1056;
      }
   }
}
