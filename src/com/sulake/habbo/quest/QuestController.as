package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_583:QuestsList;
      
      private var var_486:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_417:QuestTracker;
      
      private var var_719:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
         this.var_417 = new QuestTracker(this.var_51);
         this.var_583 = new QuestsList(this.var_51);
         this.var_486 = new QuestDetails(this.var_51);
         this._questCompleted = new QuestCompleted(this.var_51);
         this.var_719 = new NextQuestTimer(this.var_51);
      }
      
      public function onToolbarClick() : void
      {
         this.var_583.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_583.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_417.onQuest(param1);
         this.var_486.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_719.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_417.onQuestCompleted(param1);
         this.var_486.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_417.onQuestCancelled();
         this.var_486.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_719.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_417.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_583.onRoomExit();
         this.var_417.onRoomExit();
         this.var_486.onRoomExit();
         this.var_719.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_417.update(param1);
         this.var_719.update(param1);
         this.var_583.update(param1);
         this.var_486.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         if(this.var_583)
         {
            this.var_583.dispose();
            this.var_583 = null;
         }
         if(this.var_417)
         {
            this.var_417.dispose();
            this.var_417 = null;
         }
         if(this.var_486)
         {
            this.var_486.dispose();
            this.var_486 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_719)
         {
            this.var_719.dispose();
            this.var_719 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_583;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_486;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_417;
      }
   }
}
