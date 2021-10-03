package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1442:IHabboTracking;
      
      private var var_1947:Boolean = false;
      
      private var var_2643:int = 0;
      
      private var var_1970:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1442 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1442 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1947 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2643 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1947)
         {
            return;
         }
         ++this.var_1970;
         if(this.var_1970 <= this.var_2643)
         {
            this.var_1442.trackGoogle("toolbar",param1);
         }
      }
   }
}
