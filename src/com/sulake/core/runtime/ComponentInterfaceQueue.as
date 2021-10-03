package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1834:IID;
      
      private var var_1154:Boolean;
      
      private var var_1202:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1834 = param1;
         this.var_1202 = new Array();
         this.var_1154 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1834;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1154;
      }
      
      public function get receivers() : Array
      {
         return this.var_1202;
      }
      
      public function dispose() : void
      {
         if(!this.var_1154)
         {
            this.var_1154 = true;
            this.var_1834 = null;
            while(this.var_1202.length > 0)
            {
               this.var_1202.pop();
            }
            this.var_1202 = null;
         }
      }
   }
}
