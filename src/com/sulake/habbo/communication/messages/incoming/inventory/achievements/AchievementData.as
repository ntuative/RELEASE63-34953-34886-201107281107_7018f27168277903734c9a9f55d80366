package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1361:int;
      
      private var var_1963:String;
      
      private var var_1899:int;
      
      private var var_2342:int;
      
      private var var_2344:int;
      
      private var var_1900:int;
      
      private var var_1901:Boolean;
      
      private var _category:String;
      
      private var var_2543:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1361 = param1.readInteger();
         this.var_1963 = param1.readString();
         this.var_1899 = Math.max(1,param1.readInteger());
         this.var_2342 = param1.readInteger();
         this.var_2344 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_1901 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2543 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1963;
      }
      
      public function get level() : int
      {
         return this.var_1361;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1899;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2342;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2344;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1900;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1901;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2543;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1361 > 1 || this.var_1901;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1900 = this.var_1899;
      }
   }
}
