package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_2108:int;
      
      private var var_2730:String;
      
      private var var_359:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_2108 = param1.readInteger();
         this.var_2730 = param1.readString();
         this.var_359 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_2108;
      }
      
      public function get nodeName() : String
      {
         return this.var_2730;
      }
      
      public function get visible() : Boolean
      {
         return this.var_359;
      }
   }
}
