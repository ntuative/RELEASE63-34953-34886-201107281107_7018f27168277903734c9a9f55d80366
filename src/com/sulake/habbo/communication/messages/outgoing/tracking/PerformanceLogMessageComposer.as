package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2432:int = 0;
      
      private var var_1588:String = "";
      
      private var var_2023:String = "";
      
      private var var_2527:String = "";
      
      private var var_2530:String = "";
      
      private var var_1893:int = 0;
      
      private var var_2529:int = 0;
      
      private var var_2531:int = 0;
      
      private var var_1586:int = 0;
      
      private var var_2528:int = 0;
      
      private var var_1585:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2432 = param1;
         this.var_1588 = param2;
         this.var_2023 = param3;
         this.var_2527 = param4;
         this.var_2530 = param5;
         if(param6)
         {
            this.var_1893 = 1;
         }
         else
         {
            this.var_1893 = 0;
         }
         this.var_2529 = param7;
         this.var_2531 = param8;
         this.var_1586 = param9;
         this.var_2528 = param10;
         this.var_1585 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2432,this.var_1588,this.var_2023,this.var_2527,this.var_2530,this.var_1893,this.var_2529,this.var_2531,this.var_1586,this.var_2528,this.var_1585];
      }
   }
}
