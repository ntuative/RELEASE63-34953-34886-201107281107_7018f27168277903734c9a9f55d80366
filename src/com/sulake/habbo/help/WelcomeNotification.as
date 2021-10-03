package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_3013:String;
      
      private var var_357:String;
      
      public function WelcomeNotification(param1:String, param2:String)
      {
         super();
         this.var_3013 = param1;
         this.var_357 = param2;
      }
      
      public function get targetIconId() : String
      {
         return this.var_3013;
      }
      
      public function get localizationKey() : String
      {
         return this.var_357;
      }
   }
}
