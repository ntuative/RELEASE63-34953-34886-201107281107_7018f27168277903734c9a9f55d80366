package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2744:int;
      
      private var var_2745:int;
      
      private var var_2743:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2744 = param1;
         this.var_2745 = param2;
         this.var_2743 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2744,this.var_2745,this.var_2743];
      }
      
      public function dispose() : void
      {
      }
   }
}
