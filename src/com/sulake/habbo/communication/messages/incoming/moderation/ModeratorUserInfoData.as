package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2387:int;
      
      private var var_2384:int;
      
      private var var_848:Boolean;
      
      private var var_2385:int;
      
      private var var_2386:int;
      
      private var var_2389:int;
      
      private var var_2388:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2387 = param1.readInteger();
         this.var_2384 = param1.readInteger();
         this.var_848 = param1.readBoolean();
         this.var_2385 = param1.readInteger();
         this.var_2386 = param1.readInteger();
         this.var_2389 = param1.readInteger();
         this.var_2388 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2387;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2384;
      }
      
      public function get online() : Boolean
      {
         return this.var_848;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2385;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2386;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2389;
      }
      
      public function get banCount() : int
      {
         return this.var_2388;
      }
   }
}
