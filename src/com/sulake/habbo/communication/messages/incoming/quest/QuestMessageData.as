package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1982:String;
      
      private var var_1981:int;
      
      private var var_1985:int;
      
      private var var_1867:int;
      
      private var _id:int;
      
      private var var_1980:Boolean;
      
      private var _type:String;
      
      private var var_2659:String;
      
      private var var_2662:int;
      
      private var var_1983:String;
      
      private var var_2660:int;
      
      private var var_2661:int;
      
      private var var_1570:int;
      
      private var var_1984:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_1984 = new Date();
         super();
         this.var_1982 = param1.readString();
         this.var_1981 = param1.readInteger();
         this.var_1985 = param1.readInteger();
         this.var_1867 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1980 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2659 = param1.readString();
         this.var_2662 = param1.readInteger();
         this.var_1983 = param1.readString();
         this.var_2660 = param1.readInteger();
         this.var_2661 = param1.readInteger();
         this.var_1570 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_1982;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1983;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1981;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1985;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1867;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1980;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2659;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2662;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2660;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2661;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1570 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_1984.getTime();
         return int(Math.max(0,this.var_1570 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1982;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1983;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1980 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1981 >= this.var_1985;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_1984;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1570 = param1;
      }
   }
}
