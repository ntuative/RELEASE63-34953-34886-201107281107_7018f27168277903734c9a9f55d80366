package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1830:int;
      
      private var var_2431:int;
      
      private var var_827:int;
      
      private var var_574:Number;
      
      private var var_2430:Boolean;
      
      private var var_2429:int;
      
      private var var_1829:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_574);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2431 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2429 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2430 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_827;
         if(this.var_827 == 1)
         {
            this.var_574 = param1;
            this.var_1830 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_827);
            this.var_574 = this.var_574 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2430 && param3 - this.var_1830 >= this.var_2431)
         {
            this.var_827 = 0;
            if(this.var_1829 < this.var_2429)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1829;
               this.var_1830 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
