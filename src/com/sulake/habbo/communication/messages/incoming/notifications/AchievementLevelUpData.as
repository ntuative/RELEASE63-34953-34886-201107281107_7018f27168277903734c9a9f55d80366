package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1361:int;
      
      private var var_2076:int;
      
      private var var_2342:int;
      
      private var var_2344:int;
      
      private var var_2343:int;
      
      private var var_1963:int;
      
      private var var_2347:String = "";
      
      private var var_2346:String = "";
      
      private var var_2345:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1361 = param1.readInteger();
         this.var_1963 = param1.readInteger();
         this.var_2347 = param1.readString();
         this.var_2076 = param1.readInteger();
         this.var_2342 = param1.readInteger();
         this.var_2344 = param1.readInteger();
         this.var_2343 = param1.readInteger();
         this.var_2345 = param1.readInteger();
         this.var_2346 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1361;
      }
      
      public function get points() : int
      {
         return this.var_2076;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2342;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2344;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2343;
      }
      
      public function get badgeId() : int
      {
         return this.var_1963;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2347;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2346;
      }
      
      public function get achievementID() : int
      {
         return this.var_2345;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
