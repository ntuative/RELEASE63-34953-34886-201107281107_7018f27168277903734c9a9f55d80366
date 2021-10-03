package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_613:String = "RWUAM_WHISPER_USER";
      
      public static const const_520:String = "RWUAM_IGNORE_USER";
      
      public static const const_587:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_424:String = "RWUAM_KICK_USER";
      
      public static const const_560:String = "RWUAM_BAN_USER";
      
      public static const const_524:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_540:String = "RWUAM_RESPECT_USER";
      
      public static const const_595:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_621:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_504:String = "RWUAM_START_TRADING";
      
      public static const const_782:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_507:String = "RWUAM_KICK_BOT";
      
      public static const const_530:String = "RWUAM_REPORT";
      
      public static const const_549:String = "RWUAM_PICKUP_PET";
      
      public static const const_1804:String = "RWUAM_TRAIN_PET";
      
      public static const const_495:String = " RWUAM_RESPECT_PET";
      
      public static const const_248:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_498:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
